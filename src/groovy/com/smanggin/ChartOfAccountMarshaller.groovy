package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class ChartOfAccountMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( ChartOfAccount ) { ChartOfAccount it ->
            return [
				id : it.id,
				code :it.code,		
				
				description:it.description,
				
				active :it.active,						
				version     : it.version?:0,
				
			]
        }
    }
}
