package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class SupplierMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( Supplier ) { Supplier it ->
            return [
				
				id :it.id,
				name :it.name,		
				country :it.country,
				countryOwnerID:it.countryOwnerID
			]
        }
    }
}
