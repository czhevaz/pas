package com.smanggin

/**
 * Attachment
 * A domain class describes the data object and it's mapping to the database
 */
class Attachment {

	Date	dateCreated
	Date	lastUpdated
	String 	createdBy 
	String 	updatedBy

	
	/* Table of GORM */
	String fileName
	String fileType
	String originalName
	PurchaseOrder purchaseOrder
	
	static	belongsTo	= [PurchaseOrder]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.

    static mapping = {
    	table 'T_PAS_Attachment'
		version true
    }
    
	static	constraints = {
    }

}
