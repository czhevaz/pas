package com.smanggin

/**
 * Rfp
 * A domain class describes the data object and it's mapping to the database
 */
class Rfp {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated
	Date	dateCreated
	Date	lastUpdated
	String 	createdBy 
	String 	updatedBy


	Date dateVoid
	String voidBy

	Country country
	Date rfpDate
	TransactionGroup transactionGroup
	Supplier supplier
	String number

	Currency currency1 // currency Local
	Currency currency2 // currency convert
	Float   rate

	String  state
	Boolean isVoid // 1 = void, 0 = not void. Default = 0 Digunakanuntuk men-delete PO tersebut
	
	static	belongsTo	= [TransactionGroup, Supplier, Currency]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static	hasMany		= [rfpDetails:RfpDetail]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_RFP'
    	version true
    	isVoid defaultValue:'0'
    	isWriteOff defaultValue:'0'

    }
    
	static	constraints = {
		dateVoid nullable:true
		voidBy nullable:true
		updatedBy nullable:true	
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
