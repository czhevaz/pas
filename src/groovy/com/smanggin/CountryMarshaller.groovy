package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class CountryMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( Country ) { Country it ->
            return [
				
				code :it.code,
				name :it.name,
				active :it.active,
				domainPPP :it.domainPPP,
				version : it.version?:0,
			]
        }
    }
}