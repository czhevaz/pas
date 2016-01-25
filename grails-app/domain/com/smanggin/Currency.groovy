package com.smanggin

/**
 * Currency
 * A domain class describes the data object and it's mapping to the database
 */
class Currency {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated
	String code
	String name
	String country
	String active
	Boolean baseCurrency
	String toString() { return code } 
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_Currency'
    	id 	column: "Curr_Code",
        	name : 'code',
        	type: 'string',
        	generator: 'identity'
        	
    	code column: "Curr_Code"
    	name column:"Curr_name"
    	country column:"Curr_Country"
    	active column:"Curr_Active"
    	baseCurrency column:"Curr_Base"
    	version true
    }
    
	static	constraints = {
		code unique:true
		baseCurrency nullable:true
		version nullable: true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
