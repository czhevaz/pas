package com.smanggin

/**
 * AppSetting
 * A domain class describes the data object and it's mapping to the database
 */
class AppSetting {

	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated

	String code
	String val
	String unit 
	String toString() { return "${code}" } 


	
    static mapping = {
        version true
		val type:'text'    	
    }
    
	static constraints = {
		code nullable: false, unique: true, blank: false
		val nullable: false, blank: true
		unit nullable: true
    }	
 	
 	static valueDefault(String code, String defaultValue ){
        def v = defaultValue
        def c = findByCode(code )

        if(!c){
            println "*********** no AppSetting with code [" + code + "]. using default value=" + defaultValue
            def newAppSetting = new AppSetting()
            newAppSetting.code = code 
            newAppSetting.val = defaultValue
            newAppSetting.save()
        }
        else
        {
            v = c.val 
        }

        return v 
    }
}
