package com.smanggin
import grails.converters.JSON
import com.smanggin.PurchaseOrderBalance

/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderBalanceMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrderBalance ) { PurchaseOrderBalance it ->
            return [
				id : it.id,
				purchaseOrderId  : it.purchaseOrder?.id,
				countryName : it.country, 
				description : it.description,
				balance1 :it.balance1,
				balance2 :it.balance2,
				version : it.version,
				dateCreated 	: it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				currency1Code 	:it.currency1?.code,
				
			]
        }
    }
}