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
				
				purchaseOrderDate:it.purchaseOrderDate,
				number :it.number,		
				reasonforInvestment :it.reasonforInvestment,
				pppNumber:it.pppNumber,
				pppCost:it.pppCost,
				
				number:it.number,
				purchaseOrderNumber:it.number,
				reasonforInvestment:it.reasonforInvestment,
				
				supplierName:it.supplier?.name,
				supplier:it.supplier?.id,

				total:it.total,
				total2 : it.total/it.rate,

				poRemain1:it.PORemain1,
				poRemain2:it.PORemain2,

				currency1: it.currency1,
				year:it.year,

				transactionTypeName:it.transactionGroup?.transactionType?.name,
				
				dateCreated 	: it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				
				
			]
        }
    }
}