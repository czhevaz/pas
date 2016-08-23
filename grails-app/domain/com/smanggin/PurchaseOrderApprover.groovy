package com.smanggin

/**
 * PurchaseOrderApprover
 * A domain class describes the data object and it's mapping to the database
 */
class PurchaseOrderApprover {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
		Date	dateCreated
		Date	lastUpdated

		PurchaseOrder purchaseOrder
		Long noSeq
		User approver
		Country country
		Long status
		Date approverDate
		ApprovalDetail approvalDetail
	
	static	belongsTo	= [PurchaseOrder, User, Country, ApprovalDetail]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_PO_Approver'
    	version true
    	status defaultValue:"0"
    }
    
	static	constraints = {
		version nullable:true
		approverDate nullable:true
		approvalDetail nullable:true
    }
	
	
}
