package com.smanggin
import org.springframework.dao.DataIntegrityViolationException

class SendMailJob {

	def mailService
 
    def execute() {
        // execute job
        com.smanggin.Outbox.sendMail()
        /*def count = sendMail()
        println "send mail job executed. total sent : " + count */
    }

}
