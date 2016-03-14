package com.smanggin
import grails.converters.JSON
import com.smanggin.PurchaseOrderWriteOff

/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderWriteOffMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrderWriteOff ) { PurchaseOrderWriteOff it ->
            return [
				id : it.id,
				purchaseOrderId  : it.purchaseOrder?.id,
				woValue1 : it.woValue1, 
				woValue2 : it.woValue2,
				woBy :it.woBy,
				dateWO :it.dateWO,
				woNotes:it.woNotes,
				version : it.version,
				dateCreated 	: it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				currency1Code 	:it.currency1?.code,
				
			]
        }
    }
}

