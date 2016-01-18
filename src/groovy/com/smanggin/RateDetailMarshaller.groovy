package com.smanggin
import grails.converters.JSON
import com.smanggin.RateDetail


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class RateDetailMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( RateDetail ) { RateDetail it ->
            return [
				id : it.id,
				rateId:it.rate?.id,
				currency1Code:it.currency1.code,
				currency2Code:it.currency2.code,
				value:it.value,
				version : it.version?:0,
			]
        }
    }
}