package com.smanggin

/**
 * RfpApprover
 * A domain class describes the data object and it's mapping to the database
 */
class RfpApprover {

	Date	dateCreated
	Date	lastUpdated

	Rfp rfp
	Long noSeq
	User approver
	Country country
	Long status
	Date approverDate
	ApprovalDetail approvalDetail
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_RFP_Approver'
    	version true
    }
    
	static	constraints = {
		version nullable:true
		approverDate nullable:true
		approvalDetail nullable:true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
