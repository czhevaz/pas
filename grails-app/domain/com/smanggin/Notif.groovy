package com.smanggin

/**
 * Notif
 * A domain class describes the data object and it's mapping to the database
 */
class Notif {

	
	Date	dateCreated
	Date	lastUpdated

	String docName
	String docNumber
	Integer docId	
	String state
	String forUser
	String createdBy
	Boolean isNew
	
//	static belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static mappedBy		= []	// specifies which property should be used in a mapping 
	
    static mapping = {
    	table "T_PAS_Notif"
		version false
		isNew defaultValue:1
    }
    
	static constraints = {
		docName nullable: false
		docNumber nullable: true
		docId nullable: false
		forUser nullable:true
		state nullable: true
		createdBy nullable: true
    }

	@Override
	public String toString() {
		return "${docName}";
	}

	
}
