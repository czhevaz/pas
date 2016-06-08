package com.smanggin
import org.springframework.dao.DataIntegrityViolationException

class SyncDBJob {

	def syncDatabaseService
    def connectDBService
    def execute() {
        // execute job
        try {

            def coas = ChartOfAccount.createCriteria().list(){
                isNull('countryCode')
            }

            println "count "+ coas
            
            if(coas.size() > 0 ){
                def conSqlAmatra = connectDBService?.getSqlAmatraConnection()
                coas.each{
                    def country = Country.findByCodeCoa(it.segment06)
                    
                    if(country){
                        conSqlAmatra.executeUpdate("update M_PAS_COA set country_code = $country.code where code = $it.code")
                    }else{
                        conSqlAmatra.executeUpdate("update M_PAS_COA set country_code = 'ID' where code = $it.code")
                    }
                    
                    
                }

                if(conSqlAmatra){
                   conSqlAmatra.close() 
                }

                println "=== Country _code di M_PAS_COA masih ada yg null isi manual === "

            }else{
                println "=== Start SyncDBJob COA === "
                syncDatabaseService.syncCOAFromProxy()            
            }
            
           
        }
        catch(Exception e) {
            println "=== sync DB COA job failed === " + e    
        }  
        
        try {
            syncDatabaseService.syncRateFromProxy()
            
        }
        catch(Exception e) {
            println "=== sync DB RATe job failed === " + e    
        }  

        try {
            syncDatabaseService.syncRateDetailFromProxy()
        }
        catch(Exception e) {
            println "=== sync DB Rate Detail job failed === " + e    
        }  
        
        /*def count = sendMail()
        println "send mail job executed. total sent : " + count */
    }


    

}
