package com.smanggin

/**
 * Lob
 * A domain class describes the data object and it's mapping to the database
 */
class Lob implements Serializable {

	String code
	String name
	Country country
	String active
	String toString() { return name } 

	static	belongsTo	= [Country]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_LOB'
    	id composite: ['country', 'code']
    	code column:"LOB_ID"	
        name column:"LOB_Name"
        country column:"LOB_Country"
    	active column:"LOB_Active",defaultValue:'Yes'
    	version true, 
    			defaultValue:'0'
    }
    
	static	constraints = {
		name nullable: false, unique:true
    	code nullable: false, unique:true
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
