package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class UserMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( User ) { User it ->
            return [
				
				login :it.login,
				name :it.name,		
				country :it.country,
				email  :it.email,
				enabled :it.enabled,						
				version     : it.version?:0,
				
			]
        }
    }
}
