package com.smanggin

/**
 * PurchaseOrderDetail
 * A domain class describes the data object and it's mapping to the database
 */
class PurchaseOrderDetail {

	Date	dateCreated
	Date	lastUpdated
	String 	createdBy 
	String 	updatedBy	

	String description
	String coverageArea
	String outlet
	Float  totalCost
	Float  totalCost2
	String pic

	Date   startDate
	Date   finishDate

	Float qty
	Float unitPrice

	Date transactionDate
	String remark
	PurchaseOrder purchaseOrder

	static	belongsTo	= [PurchaseOrder]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_PO_Detail'
    	version true
    }
    
	static	constraints = {
		updatedBy nullable:true
		startDate nullable:true
		finishDate	 nullable:true
		qty nullable:true
		unitPrice nullable:true
		transactionDate nullable:true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
