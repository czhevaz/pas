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
				approvalId : it.approval?.id,
				countryName : it.country?.name,
				lobCode :it.lob,
				brandCode : it.brand,
				isSequential : it.isSequential, 
				version     : it.version?:0,
			]
        }
    }
}
