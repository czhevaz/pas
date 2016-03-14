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

		conSqlProxy.executeUpdate("update m_proxy_supplier set name=:valName, address=:valAddress, phones=:valPhones, telex=:valTelex, email=:valEmail, city=:valCity, state=:valState, country=:valCountry,  p_date_change=now() where code=:valCode", map)
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
			}

		}

		if(conSqlProxy){
		   conSqlProxy.close()	
		}

		return

	}

	def insertCOAToAmatra(row,conSqlAmatra){
		def code = row.code
		def splitCode =code.split('\\.')
		println " split " + splitCode + "code " + code
		Calendar calendar=Calendar.getInstance();
		//calendar.setTime(new Date());
		java.sql.Timestamp timestamp = new java.sql.Timestamp(calendar.getTimeInMillis())
		
		def params = [row.coa_id_orlansoft,row.code,row.description,splitCode[0],splitCode[1],splitCode[2],splitCode[3],splitCode[4],splitCode[5],splitCode[6], 1, timestamp, timestamp]
 		conSqlAmatra.execute 'insert into M_PAS_COA(coa_id_server, code , description, segment01, segment02, segment03, segment04, segment05, segment06, segment07, active, date_created, last_updated) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', params
		
		if(conSqlAmatra){
		   conSqlAmatra.close()	
		}
	}


	/*End COA */

}
