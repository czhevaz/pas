package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderAllocationMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrderAllocation ) { PurchaseOrderAllocation it ->
            return [
				
				purchaseOrder : it.purchaseOrder?.number,
				pppNumber :it.pppNumber,
				brand:it.brand,
				value1:it.value1,
				value2:it.value2,
	
				dateCreated :it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				version : it.version?:0,
			]
        }
    }
}