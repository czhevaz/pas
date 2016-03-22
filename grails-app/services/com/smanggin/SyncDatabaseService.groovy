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
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()		
		conSqlProxy.execute "insert into m_proxy_supplier (code, name, address, postcode, phones, telex, fax, email, city, state, country, p_date) values ($supplierInstance.code, $supplierInstance.name, $supplierInstance.address, $supplierInstance.postCode, $supplierInstance.phones, $supplierInstance.telex, $supplierInstance.fax, $supplierInstance.email, $supplierInstance.city, $supplierInstance.state, $supplierInstance.country, now())"
		if(conSqlProxy){
		   conSqlProxy.close()
		}
		return
	}


	def updateSupplierToProxy(supplierInstance){
		
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()
		
		def map =[valCode:supplierInstance?.code, 
		valName:supplierInstance?.name, 
		valAddress:supplierInstance?.address, 
		valPhones:supplierInstance?.phones, 
		valTelex:supplierInstance?.telex, 
		valEmail:supplierInstance?.email, 
		valCity:supplierInstance?.city, 
		valState:supplierInstance?.state, 
		valCountry:supplierInstance?.country]  

		conSqlProxy.executeUpdate("update m_proxy_supplier set name=:valName, address=:valAddress, phones=:valPhones, telex=:valTelex, email=:valEmail, city=:valCity, state=:valState, country=:valCountry,  p_date=now() where code=:valCode", map)
		if(conSqlProxy){
		   conSqlProxy.close()	
		}
		
		return
	}
	/* End Supplier*/

	/* COA */
	def syncCOAFromProxy(){
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

			conSqlProxy.executeUpdate("update m_proxy_coa set p_date = now() where coa_id_orlansoft = $row.coa_id_orlansoft")
		}

		if(conSqlProxy){
		   conSqlProxy.close()	
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
		   conSqlAmatra.close()	
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

		conSqlAmatra.executeUpdate("update M_PAS_COA set coa_id_server=:valCoaIdServer, code=:valCode, description=:valDescription, segment01=:valSegment01, segment02=:valSegment02, segment03=:valSegment03, segment04=:valSegment04, segment05=:valSegment05, segment06=:valSegment06, segment07=:valSegment07, last_updated=:timestamp where coa_id_server=:valCoaIdServer", map)
		if(conSqlAmatra){
		   conSqlAmatra.close()	
		}
	}	


	/*End COA */

	/* RFP */
	def insertRfptoProxy(rfpInstance){
		def conSqlProxy = connectDBService?.getSqlProxyKalbeConnection()		
		/* insert header*/
		def sql = "insert into t_proxy_rfp_hdr (rfp_number, rfp_date, rfp_suppier_code, rfp_currency1_code, p_date, p_date_change) values ('$rfpInstance.number', '$rfpInstance.rfpDate', '$rfpInstance.supplier.code', '$rfpInstance.currency1.code', now(), now());\n"
		conSqlProxy.execute sql

			/* insert detail*/
			if(rfpInstance.rfpDetails){
			
				def sql2 = "insert into t_proxy_rfp_dtl (rfp_number, coa_code, coa_desc, country_code, total_cost1, total_cost2, p_date, p_date_change) values"	
				def i=1
				rfpInstance.rfpDetails.each{
					sql2 += "('$rfpInstance.number', '$it.coa.code', '$it.coa.description', '$rfpInstance.country', $it.totalCost1, $it.totalCost2, now(), now())"

					if(i== rfpInstance.rfpDetails.size()){
						sql2 += ";"	
					}else{
						sql2 += ","	
					}
					
					i++;
				}
				conSqlProxy.execute sql2
			}

		
			/* insert proxy approver*/
			if(rfpInstance.rfpApprovers){
				def sql3 = "insert into t_proxy_rfp_approver (rfp_number, approved_seq, approved_by, approved_date, status, p_date, p_date_change) values"	
				def j=1
				rfpInstance.rfpApprovers.each{
					
					sql3 += "('$rfpInstance.number', $it.noSeq, '$it.approver.login', '$it.approverDate', $it.status, now(), now())"

					if(j== rfpInstance.rfpApprovers.size()){
						sql3 += ";"	
					}else{
						sql3 += ","	
					}
					
					j++;
				}

				conSqlProxy.execute sql3
			}
		
		if(conSqlProxy){
		   conSqlProxy.close()
		}
		return

	}

	/* END RFP */
}
