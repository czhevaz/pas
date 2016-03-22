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
            println "=== sync DB job failed === "     
        }  
        
        
        /*def count = sendMail()
        println "send mail job executed. total sent : " + count */
    }


    

}
