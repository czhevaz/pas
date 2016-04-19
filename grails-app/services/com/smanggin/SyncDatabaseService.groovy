package com.smanggin


import java.io.*
import java.sql.*
import java.sql.Date
import org.joda.time.DateTime
import org.joda.time.format.DateTimeFormat
import org.joda.time.format.DateTimeFormatter
import org.springframework.transaction.annotation.Transactional
import java.text.SimpleDateFormat


/**
 * SyncDatabaseService
 * A service class encapsulates the core business logic of a Grails application
 */
class SyncDatabaseService {

    static transactional = true

    def authenticationService
    def connectDBService
    def globalService


    //def conSqlProxy = { return connectDBService?.getSqlProxyKalbeConnection() }

	def sync() {

	}

	/* supplier */
	def insertSupplierToProxy(supplierInstance){
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()		
		conSqlProxy.execute "insert into m_proxy_supplier (code, name, address, postcode, phones, telex, fax, email, city, state, country, countryID, p_date, p_date_change) values ($supplierInstance.code, $supplierInstance.name, $supplierInstance.address, $supplierInstance.postCode, $supplierInstance.phones, $supplierInstance.telex, $supplierInstance.fax, $supplierInstance.email, $supplierInstance.city, $supplierInstance.state, $supplierInstance.country, $supplierInstance.countryOwnerID.code, $timestamp, $timestamp)"
		if(conSqlProxy){
		   conSqlProxy.close()
		}
		return
	}


	def updateSupplierToProxy(supplierInstance){
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()
		
		def map =[valCode:supplierInstance?.code, 
		valName:supplierInstance?.name, 
		valAddress:supplierInstance?.address, 
		valPhones:supplierInstance?.phones, 
		valTelex:supplierInstance?.telex, 
		valEmail:supplierInstance?.email, 
		valCity:supplierInstance?.city, 
		valState:supplierInstance?.state, 
		valCountry:supplierInstance?.country,timestamp:timestamp]  

		conSqlProxy.executeUpdate("update m_proxy_supplier set name=:valName, address=:valAddress, phones=:valPhones, telex=:valTelex, email=:valEmail, city=:valCity, state=:valState, country=:valCountry,  p_date=:timestamp where code=:valCode", map)
		if(conSqlProxy){
		   conSqlProxy.close()	
		}
		
		return
	}
	/* End Supplier*/

	/* COA */
	def syncCOAFromProxy(){
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()
		def conSqlAmatra = connectDBService?.getSqlAmatraConnection()

		println "conSqlProxy" +conSqlProxy

		conSqlProxy?.eachRow("select * from m_proxy_coa WHERE p_date <= p_date_change", 1, 10) { row ->
			
			def findCode = conSqlAmatra.firstRow("select * from M_PAS_COA where coa_id_server=:valCode", [valCode: row.coa_id_orlansoft])

			if(findCode == null) {
				insertCOAToAmatra(row,conSqlAmatra)
			}else{
				updateCOAToAmatra(row,conSqlAmatra)
			}

			conSqlProxy.executeUpdate("update m_proxy_coa set p_date = $timestamp where coa_id_orlansoft = $row.coa_id_orlansoft")
		}

		if(conSqlProxy){
		   conSqlProxy.close()
		   conSqlAmatra.close()	
		}

		return

	}

	def insertCOAToAmatra(row,conSqlAmatra){
		def code = row.code
		def splitCode =code.split('\\.')
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
		def params = [row.coa_id_orlansoft,row.code,row.description,splitCode[0],splitCode[1],splitCode[2],splitCode[3],splitCode[4],splitCode[5],splitCode[6], 1, timestamp, timestamp]
 		conSqlAmatra.execute 'insert into M_PAS_COA(coa_id_server, code , description, segment01, segment02, segment03, segment04, segment05, segment06, segment07, active, date_created, last_updated) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', params
		
		if(conSqlAmatra){
		//   conSqlAmatra.close()	
		}
	}

	def updateCOAToAmatra(row,conSqlAmatra){
		def code = row.code
		def splitCode =code.split('\\.')
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
 		def map =[valCoaIdServer:row.coa_id_orlansoft, 
		valCode:row.code, 
		valDescription:row.description, 
		valSegment01:splitCode[0], 
		valSegment02:splitCode[1], 
		valSegment03:splitCode[2], 
		valSegment04:splitCode[3], 
		valSegment05:splitCode[4], 
		valSegment06:splitCode[5],
		valSegment07:splitCode[6]
		,timestamp:timestamp]

		conSqlAmatra.executeUpdate("update M_PAS_COA set coa_id_server=:valCoaIdServer, code=:valCode, description=:valDescription, segment01=:valSegment01, segment02=:valSegment02, segment03=:valSegment03, segment04=:valSegment04, segment05=:valSegment05, segment06=:valSegment06, segment07=:valSegment07,  where coa_id_server=:valCoaIdServer", map)
		if(conSqlAmatra){
		  // conSqlAmatra.close()	
		}
	}	


	/*End COA */

	/* RFP */
	def insertRfptoProxy(rfpInstance){
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())

		def country = Country.findByName(rfpInstance.country) 

		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()		
		/* insert header*/
		def sql = "insert into t_proxy_rfp_hdr (rfp_number, rfp_date, rfp_supplier_code, rfp_currency1_code, countryID, p_date, p_date_change) values ('$rfpInstance.number', '$rfpInstance.rfpDate', '$rfpInstance.supplier.code', '$rfpInstance.currency1.code','$country.code', '$timestamp', '$timestamp');\n"
		conSqlProxy.execute sql

			/* insert detail*/
			if(rfpInstance.rfpDetails){
			
				def sql2 = 'insert into t_proxy_rfp_dtl (rfp_number, coa_code, coa_desc, country_code, total_cost1, total_cost2, countryID, id_pols ,p_date, p_date_change) values'
				def i=1
				rfpInstance.rfpDetails.each{
					sql2 += '("$rfpInstance.number", "$it.coa.code", "$it.coa.description", "$rfpInstance.country", $it.totalCost1, $it.totalCost2, "$country.code", $it.id, "$timestamp", "$timestamp")'

					if(i== rfpInstance.rfpDetails.size()){
						sql2 += ';'	
					}else{
						sql2 += ','	
					}
					
					i++;
				}
				conSqlProxy.execute sql2
			}

		
		if(conSqlProxy){
		   conSqlProxy.close()
		}
		return

	}

	/* END RFP */

	/* Rate */
	def syncRateFromProxy(){
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()
		def conSqlAmatra = connectDBService?.getSqlAmatraConnection()

		println "conSqlProxy" +conSqlProxy

		conSqlProxy?.eachRow("select * from m_proxy_Rate_hdr WHERE p_date <= p_date_change", 1, 10) { row ->
			
			def findCode = conSqlAmatra.firstRow("select * from M_PAS_Rate where xrperiod=:valCode AND country_code=:valCountry ", [valCode: row.Xrperiod, valCountry: row.CountryID])

			if(findCode == null) {
				insertRateToAmatra(row,conSqlAmatra)
			}else{
				updateRateToAmatra(row,conSqlAmatra)
			}

			conSqlProxy.executeUpdate("update m_proxy_Rate_hdr set p_date = $timestamp where xrperiod = $row.Xrperiod AND CountryID = $row.CountryID")
		}

		if(conSqlProxy){
		   conSqlProxy.close()
		   conSqlAmatra.close()	
		}

		return

	}

	def insertRateToAmatra(row,conSqlAmatra){
		
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
		def params = [row.date1, row.date2, row.Xrperiod, row.CountryID, 0, timestamp ,timestamp]
 		conSqlAmatra.execute 'insert into M_PAS_Rate(star_date, end_date , xrperiod, country_code, version, date_created, last_updated) values (?, ?, ?, ?, ?, ?, ?)', params
		

	}

	def updateRateToAmatra(row,conSqlAmatra){
		
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
 		def map =[valDate1:row.date1, 
		valDate2:row.date2, 
		valXrperiod:row.Xrperiod,
		timestamp:timestamp,
		countryCode:row.CountryID 
		]

		conSqlAmatra.executeUpdate("update M_PAS_Rate set star_date=:valDate1, end_date=:valDate2, last_updated=:timestamp where xrperiod=:valXrperiod AND country_code=:countryCode", map)
		
	}

	def syncRateDetailFromProxy(){
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()
		def conSqlAmatra = connectDBService?.getSqlAmatraConnection()

		//println "conSqlProxy" +conSqlProxy

		conSqlProxy?.eachRow("select * from m_proxy_Rate_dtl WHERE p_date <= p_date_change", 1, 10) { row ->
			
			def findCode = conSqlAmatra.firstRow("select * from M_PAS_Rate_Detail where xrperiod=:valCode AND currency1_id=:valCcy1 AND currency2_id=:valCcy2 AND country_code=:valCountry", [valCode: row.Xrperiod,valCcy1:row.Ccy1,valCcy1:row.Ccy2,valCountry:row.CountryID])

			if(findCode == null) {
				insertRateDetailToAmatra(row,conSqlAmatra)
			}else{
				updateRateDetailToAmatra(row,conSqlAmatra)
			}

			conSqlProxy.executeUpdate("update m_proxy_Rate_dtl set p_date = $timestamp where xrperiod = $row.Xrperiod AND Ccy1=$row.Ccy1 AND Ccy2=$row.Ccy2 AND CountryID=$row.CountryID")
		}

		if(conSqlProxy){
		   conSqlProxy.close()
		   conSqlAmatra.close()	
		}

		return

	}


	def insertRateDetailToAmatra(row,conSqlAmatra){
		
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		def findCode =  conSqlAmatra.firstRow("select * from M_PAS_Rate where xrperiod=:valCode AND country_code=:valCountry", [valCode: row.Xrperiod, valCountry: row.CountryID])
		def params = [row.Ccy1, row.Ccy2, row.Xrperiod, row.rate, findCode.id, row.CountryID, 0, timestamp, timestamp]

 		conSqlAmatra.execute 'insert into M_PAS_Rate_Detail(currency1_id, currency2_id , xrperiod, value, rate_id, country_code, version, date_created, last_updated) values (?, ?, ?, ?, ?, ?, ?, ?, ?)', params

	}

	def updateRateDetailToAmatra(row,conSqlAmatra){
		
		Calendar calendar=Calendar.getInstance();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
 		def map =[valCcy1:row.Ccy1, 
		valCcy2:row.Ccy2, 
		valXrperiod:row.Xrperiod,
		valrate:row.rate,
		valCountry:row.CountryID,
		timestamp:timestamp 
		]

		conSqlAmatra.executeUpdate("update M_PAS_Rate_Detail set currency1_id=:valCcy1, currency2_id=:valCcy2, value=:valrate, last_updated=:timestamp  where xrperiod=:valXrperiod AND country_code=:valCountry", map)
		
	}

	/* END Rate */
}
