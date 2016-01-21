package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class TransactionGroupMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( TransactionGroup ) { TransactionGroup it ->
            return [
				
				transactionTypeName : it.transactionType?.name,
				description :it.description,
				prefix :it.prefix,
				format :it.format,
				width :it.width,
				version : it.version?:0,
			]
        }
    }
}