package com.smanggin

/**
 * ApprovalDetail
 * A domain class describes the data object and it's mapping to the database
 */
class ApprovalDetail {

	
	Country  country
	String   lob
	String   brand
	Long 	 noSeq
	User 	 creator
	User 	 approver
	Boolean  isSequential
	TransactionType transactionType 
	String toString() { brand +" - "+approver }	

	static	belongsTo	= [Approval]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_PAS_Approval_Detail'
    	version true
    }
    
	static	constraints = {
		version nullable: true
		isSequential nullable: true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
