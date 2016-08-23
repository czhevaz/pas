package com.smanggin

/**
 * PurchaseOrderAllocation
 * A domain class describes the data object and it's mapping to the database
 */
class PurchaseOrderAllocation {

	
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	PurchaseOrder purchaseOrder
	String pppNumber
	String brand
	Float value1 //local currency
	Float value2 //usd currency
	String toString(){purchaseOrder?.number +'-'+ brand}
	
	static	belongsTo	= [PurchaseOrder]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_PO_Allocation'
    	version true
    	value1 defaultValue:'0'
    	value2 defaultValue:'0'
    }
    
	static	constraints = {
    	value1 nullable:true
    	value2 nullable:true
    }	
	

}
