package com.smanggin
import grails.converters.JSON
import com.smanggin.PurchaseOrderDetail

/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PurchaseOrderDetailMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PurchaseOrderDetail ) { PurchaseOrderDetail it ->
            return [
				id : it.id,
				//supplierId : it.supplier?.id,
				//supplierCode : it.supplier?.code, 
				//supplierName : it.supplier?.name,

				description :it.description,
				coverageArea :it.coverageArea,
				outlet :it.outlet,
				totalCost : it.totalCost,
				totalCost2 : it.totalCost2,
				pic :it.pic,
				
				startDate :it.startDate?.format('yyyy-MM-dd'),
				finishDate :it.finishDate?.format('yyyy-MM-dd'),

				qty : it.qty,
				unitprice: it.unitprice,

				transactionDate:it.transactionDate?.format('yyyy-MM-dd'),

				remark :it.remark,
				purchaseOrderId:it.purchaseOrder?.id,
				purchaseOrderNumber:it.purchaseOrder?.number,
				version     : it.version,
				createdBy   : it.createdBy,
				updatedBy   : it.updatedBy,
				dateCreated : it.dateCreated,
				lastUpdated : it.lastUpdated
			]
        }
    }
}
