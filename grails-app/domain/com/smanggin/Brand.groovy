package com.smanggin

/**
 * Brand
 * A domain class describes the data object and it's mapping to the database
 */
class Brand {

	/* Default (injected) attributes of GORM */

	String		code 
	String		name
	String 		country
	String  	lob 
	String  	active
	String toString() { return code+" - "+ name } 
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_Brand'
    	id column:'Brand_ID'
    	code column:'Brand_Code'	
    	name column:'Brand_Name'	
    	lob column:'Brand_LOB'	
    	country column:'Brand_Country'	
    	active column:'Brand_Active'	
    	version true,defaultValue:'0'	
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
