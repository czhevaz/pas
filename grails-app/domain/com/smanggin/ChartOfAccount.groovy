package com.smanggin

/**
 * ChartOfAccount
 * A domain class describes the data object and it's mapping to the database
 */
class ChartOfAccount {

	/* Default (injected) attributes of GORM */
	String code
	String country
	String lob
	String brand
	String description
	String active
	String coaIdServer
	String segment01 
	String segment02 //lob
	String segment03
	String segment04
	String segment05
	String segment06
	String segment07

	Date dateCreated
	Date lastUpdated
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_PAS_COA'
    	version true
    }
    
	static	constraints = {
		version nullable:true
		brand nullable:true
		segment01 nullable:true
		segment02 nullable:true
		segment03 nullable:true
		segment04 nullable:true
		segment05 nullable:true
		segment06 nullable:true 
		segment07 nullable:true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
