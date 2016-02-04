package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class RfpDetailMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( RfpDetail ) { RfpDetail it ->
			[
				createdBy  :it.createdBy,
				updatedBy :it.updatedBy,
				rfpId :it.rfp?.id,
				coaCode :it.coa?.code,
				coaDescription: it.coa?.description,
				pppNumber : it.pppNumber,
				totalCost1 :it.totalCost1,
				totalCost2 :it.totalCost2,
				remarks :it.remarks,
				dateCreated 	: it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				purchaseOrderId  : it.purchaseOrder?.id,
				purchaseOrderNumber : it.purchaseOrder?.number,
				
			]
        }
    }
}