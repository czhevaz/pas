package com.smanggin
import org.springframework.dao.DataIntegrityViolationException

class SyncDBJob {

	def syncDatabaseService
 
    def execute() {
        // execute job
        try {
            syncDatabaseService.syncCOAFromProxy()    
           
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
