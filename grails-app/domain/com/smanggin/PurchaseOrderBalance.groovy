package com.smanggin

/**
 * PurchaseOrderBalance
 * A domain class describes the data object and it's mapping to the database
 */
class PurchaseOrderBalance {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	String country
	PurchaseOrder purchaseOrder
	String  description
	Currency currency1
	Float balance1
	Float balance2

	String refference 
	String activities
	Float cost
	Float cost2

	String pppNumber
	Float pppBalance  
			
	static	belongsTo	= [PurchaseOrder]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_PO_Balance'
    	version true
    }
    
	static	constraints = {
		currency1 nullable:true
		refference nullable:true
		activities nullable:true
		cost nullable:true
		cost2 nullable:true
		pppNumber nullable:true
		pppBalance nullable:true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
