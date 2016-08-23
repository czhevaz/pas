package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class LobMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( Lob ) { Lob it ->
            return [
				
				name :it.name,
				code :it.code,		
				countryName :it.country,
				active :it.active,						
				version     : it.version?:0,
				
			]
        }
    }
}
