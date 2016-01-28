package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PppDetailMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PppDetail ) { PppDetail it ->
            return [
				pppNumber : it.pppNumber,
				brand: it.brand,
				costDetail : it.costDetail,
				poCommitted :it.poCommitted,
				balanceWriteOff: it.balanceWriteOff,
				version : it.version?:0
				
				
			]
        }
    }
}