package com.smanggin
import org.springframework.dao.DataIntegrityViolationException
/**
 * Outbox
 * A domain class describes the data object and it's mapping to the database
 */
class Outbox {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	
	Date	sentDate
	String 	subject
	String 	receiver// to 
	String  cc 
	String  bcc 
	String 	sender 
	String 	message 
	String 	channel
    
    String  triggerDocClass 
    Long    triggerDocId
    Integer retry
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static mapping = {
		table 'T_PAS_Outbox'
		version false
		sentDate sqlType: 'datetime'
		message sqlType: 'text'
        retry defaultValue: 0    
    }

	static constraints = {
		subject nullable:false 
		receiver nullable:false 
		sender nullable:false 
		message nullable:false 
		channel inList:["email","sms", "gcm"]
		sentDate nullable:true
		cc nullable: true 
		bcc nullable: true 
     
        triggerDocClass nullable: true 
        triggerDocId nullable: true 
        retry nullable:true
    }
	
	static newEmail(String subject, String msg, String sender, String receiver,  cc=null, bcc=null, attachFile=null, triggerDocClass=null, triggerDocId=null){
        def out = new Outbox()	
		out.properties = [
            subject:subject,
            message:msg,
            sender:sender,
            receiver:receiver,
            channel:'email',
            cc: cc,
            bcc: bcc ,
            triggerDocClass :triggerDocClass,
            triggerDocId :triggerDocId ,
        ]
        try{
        	if(!out.save(flush:true)){
                println out.errors
            }
        }
        catch(DataIntegrityViolationException e){
        	println "erorr outbox save"
        	println out.errors
        }
	}
}
