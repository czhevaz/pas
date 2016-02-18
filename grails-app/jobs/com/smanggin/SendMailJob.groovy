package com.smanggin
import org.springframework.dao.DataIntegrityViolationException

class SendMailJob {

	def mailService
 
    def execute() {
        // execute job
        try {
            com.smanggin.Outbox.sendMail()    
        }
        catch(Exception e) {
            println "=== send mail job failed === "     
        }
        
        
        
        /*def count = sendMail()
        println "send mail job executed. total sent : " + count */
    }


    def getAllPoMustApproved(){
        def po = PurchaseOrder.createCriteria().list(){
            projections{
                property('mustApprovedBy')
            }
        }
    }

}
