package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class RateMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( Rate ) { Rate it ->
            return [
				id : it.id,
				starDate : it.starDate,
				endDate : it.endDate,
				version : it.version?:0,
			]
        }
    }
}