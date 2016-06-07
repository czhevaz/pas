package com.smanggin
import org.springframework.dao.DataIntegrityViolationException

class SyncDBJob {

	def syncDatabaseService
 
    def execute() {
        // execute job
        try {

            def coas = ChartOfAccount.createCriteria().list(){
                isNull('countryCode')
            }

            if(coas.size() > 0 ){
                coas.each(){
                    def country = Country.findByCodeCoa(it.segment06)
                    
                    it.countryCode = country?.code
                    it.save()
                }

                println "=== Country _code di M_PAS_COA masih ada yg null isi manual === "
            }else{
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
