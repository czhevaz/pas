package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class BrandMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( Brand ) { Brand it ->
            return [
				id : it.id,
				name :it.name,
				code :it.code,		
				country :it.country,
				lob  :it.lob,
				active :it.active,						
				version     : it.version?:0,
				
			]
        }
    }
}
