package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrder ) { PurchaseOrder it ->
            return [
				id:it.id,
				createdBy :it.createdBy,
				updatedBy :it.updatedBy,

				dateApproved :it.dateApproved,
				approvedBy:it.approvedBy,

				mustApprovedBy :it.mustApprovedBy,

				dateVoid :it.dateVoid,
				voidBy :it.voidBy,

				dateWO :it.dateWO,
				woBy :it.woBy,

				rejectNotes:it.rejectNotes,
				dateReject:it.dateReject,
				rejectedBy:it.rejectedBy,

				country :it.country,
				lob :it.lob,
				brand :it.brand,
				requestor :it.requestor,

				transactionGroupId:it.transactionGroup?.id,
				supplier:it.supplier?.id,
				purchaseOrderDate:it.purchaseOrderDate,
				number :it.number,		
				reasonforInvestment :it.reasonforInvestment,
				pppNumber:it.pppNumber,
				pppCost:it.pppCost,
				total:it.total,
				total2 : it.total/it.rate,

				
				dateCreated 	: it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				
				
			]
        }
    }
}