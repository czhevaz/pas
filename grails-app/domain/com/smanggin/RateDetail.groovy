package com.smanggin

/**
 * RateDetail
 * A domain class describes the data object and it's mapping to the database
 */
class RateDetail {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	String  createdBy
	String  updatedBy

	Rate rate
	Currency currency1
	Currency currency2
	Float value
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_PAS_Rate_Detail'
    	version true
    }
    
	static	constraints = {
		version nullable: true
		updatedBy nullable: true
		lastUpdated nullable: true
		createdBy nullable: true
		dateCreated nullable: true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}

