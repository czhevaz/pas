package com.smanggin

/**
 * RfpDetail
 * A domain class describes the data object and it's mapping to the database
 */
class RfpDetail {

	
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	String 	createdBy 
	String 	updatedBy

	Rfp rfp
	PurchaseOrder purchaseOrder
	ChartOfAccount coa
	String pppNumber
	Float totalCost1
	Float totalCost2
	String remarks

	static	belongsTo	= [Rfp, PurchaseOrder, ChartOfAccount]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_RFP_Detail'
    	version true
    }
    
	static	constraints = {
		updatedBy nullable:true
		remarks nullable:true

    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
