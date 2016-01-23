package com.smanggin

import org.apache.commons.mail.DefaultAuthenticator
import org.apache.commons.mail.HtmlEmail
import org.apache.commons.mail.SimpleEmail
import org.apache.commons.mail.MultiPartEmail
import org.apache.commons.mail.EmailAttachment
import org.apache.commons.mail.EmailException

/**
 * EmailService
 * A service class encapsulates the core business logic of a Grails application
 */
class EmailService {

    static transactional = true
    def grailsApplication

    def sendEmail2(Outbox outbox){
        def usermail = grailsApplication.config.grails.mail.username
        def passmail = grailsApplication.config.grails.mail.password
            
        println "usermail" + usermail
        println "passmail" + passmail    

        MultiPartEmail  email = new MultiPartEmail()
        email.setHostName(grailsApplication.config.grails.mail.host)
        email.setSmtpPort(grailsApplication.config.grails.mail.outgoing.port.toInteger())
        email.setAuthentication(usermail,passmail)
        email.setCharset("ISO-8859-1")
        email.setFrom(usermail)
        email.setSubject(outbox?.subject)
        email.setMsg(outbox?.message)
        email.setTLS(false)
        email.setSSL(true)
        email.addTo(outbox.receiver)

        if(outbox.cc){
            def join = outbox.cc.split(",")
            join.each{
                email.addCc(it)
            }
        }
		
      
        return email
    }
}
