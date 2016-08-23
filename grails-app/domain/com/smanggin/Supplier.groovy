package com.smanggin

/**
 * Supplier
 * A domain class describes the data object and it's mapping to the database
 */
class Supplier {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
	
	String  createdBy
	Date	dateCreated
	Date	lastUpdated

	String code
	String name
	Country countryOwnerID
	String address
	String postCode
	String phones
	String telex
	String fax
	String email
	String city
	String state
	String country
	String contactPerson
	String mobileNo
	String toString() { return name +" - ("+ countryOwnerID.name +")"} 

//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'M_PAS_Supplier'
    	version true
    }
    
	static	constraints = {
		version nullable: true
		code nullable: true, size:1..10
		postCode nullable: true
		phones nullable: true
		telex nullable: true
		fax nullable: true
		email nullable: true
		city nullable: true
		state nullable: true
		country nullable: true
		contactPerson nullable:true
		mobileNo nullable:true
		createdBy nullable:true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
