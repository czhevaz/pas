package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class ApprovalDetailMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( ApprovalDetail ) { ApprovalDetail it ->
            return [
				transactionTypeId : it.transactionType?.id,
				countryName : it.country?.name,
				lobCode :it.lob,
				brandCode : it.brand,
				noSeq :it.noSeq,
				creatorId:it.creator?.login,
				approverId:it.approver?.login,
				isSequential : it.isSequential, 
				version     : it.version?:0,
			]
        }
    }
}
