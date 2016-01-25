package com.smanggin
import grails.converters.JSON
import com.smanggin.Attachment

/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class AttachmentMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( Attachment ) { Attachment it ->
            return [
				id : it.id,
				fileName: it.fileName,
				fileTypesName	:it.fileType,
				dateCreated 	: it.dateCreated,
				lastUpdated 	: it.lastUpdated,
				purchaseOrderId  : it.purchaseOrder?.id,
				
			]
        }
    }
}