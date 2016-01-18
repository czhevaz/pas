package com.smanggin

/**
 * Country
 * A domain class describes the data object and it's mapping to the database
 */
class Country {


	String code
	String name
	String active
	String domainPPP
	
	String toString() { return name } 	

//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_Country'
        id 	column: "Con_name",
        	name : 'name',
        	type: 'string',
        	generator: 'identity'

        code column:"Con_ID"	
        name column:"Con_Name"
    	active column:"Con_Active",defaultValue:'Yes'
    	version true 
    			defaultValue:'0'
    }
    
	static	constraints = {
    	name nullable: false, unique:true
    	code nullable: false, unique:true
    	domainPPP	nullable: true
    }
	
	
}
