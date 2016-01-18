package com.smanggin

/**
 * PppDetail
 * A domain class describes the data object and it's mapping to the database
 */
class PppDetail {

	String pppNumber
	String brand
	Float costDetail
	Float committed
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_Cost_Detail'
    	version true
    	pppNumber column:'PPP_Number'
		brand column:'PPP_Brand'
		costDetail column:'PPP_CostDetail'
		committed column:'PPP_Committed'
    }
    
	static	constraints = {
		version nullable:true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
