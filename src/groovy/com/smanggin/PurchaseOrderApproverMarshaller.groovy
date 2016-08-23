package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderApproverMarshaller {
 	
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrderApprover ) { PurchaseOrderApprover it ->
            return [
				id : it.id,
				purchaseOrderId: it.purchaseOrder?.id,
				noSeq:it.noSeq,
				approverLogin	:it.approver?.login,
				country 	: it.country?.name,
				approverDate 	: it.approverDate,
				purchaseOrderId  : it.purchaseOrder?.id,
				status : approvalStatus(it.status),
				
			]
        }
    }

    def approvalStatus(val) {
	    def result
	    switch (val) {
	        case 1:
	            result = 'Approved'
	            break
	        case 2:
	            result = 'Rejected'
	            break
	        default:
	            result = 'Not Approved'
	            break
	    }    
	   return result
	}

 
	
}