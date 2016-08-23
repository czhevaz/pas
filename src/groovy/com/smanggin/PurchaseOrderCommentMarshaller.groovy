package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderCommentMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrderComment ) { PurchaseOrderComment it ->
            return [
				
				purchaseOrderId :it.purchaseOrder?.id,
				description :it.description,
				createdBy :it.createdBy,
				dateCreated :it.dateCreated,
				version : it.version?:0,
			]
        }
    }
}