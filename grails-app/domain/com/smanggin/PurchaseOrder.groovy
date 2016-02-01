package com.smanggin

/**
 * PurchaseOrder
 * A domain class describes the data object and it's mapping to the database
 */
class PurchaseOrder {
	def grailsApplication
	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
	Date	dateCreated
	Date	lastUpdated
	String 	createdBy 
	String 	updatedBy

	Date dateApproved
	String approvedBy

	String mustApprovedBy

	Date dateVoid
	String voidBy

	Date dateWO
	String woBy

	String rejectNotes
	Date dateReject
	String rejectedBy

	String	country
	String	lob
	String	brand
	String	requestor

	TransactionGroup transactionGroup
	Supplier supplier
	Date   purchaseOrderDate
	String number		
	String reasonforInvestment 
	String 	pppNumber
	Float   pppCost

	String approver1
	String approver2

	Currency currency1 // currency Local
	Currency currency2 // currency convert
	Float   rate
	Float woValue1
	Float woValue2

	String  state
	Boolean isVoid // 1 = void, 0 = not void. Default = 0 Digunakanuntuk men-delete PO tersebut
	Boolean isWriteOff//1= void, 0 = not written off. Default = 0

	String triggerDomain
	RateDetail rateDetail

	static	belongsTo	= [TransactionGroup,Supplier,Currency]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static	hasMany		= [purchaseOrderDetails:PurchaseOrderDetail, 
	purchaseOrderComments:PurchaseOrderComment,
	purchaseOrderApprovers:PurchaseOrderApprover,
	purchaseOrderAllocations:PurchaseOrderAllocation
	]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_PO'
    	version true
    	isVoid defaultValue:'0'
    	isWriteOff defaultValue:'0'
    	
    }
    
	static	constraints = {
		number nullable:true	
		updatedBy nullable:true	
		reasonforInvestment nullable :true
		currency1 nullable:true 
		currency2 nullable:true
		rate nullable:true
		state nullable:true
		approvedBy nullable:true
		dateApproved nullable:true
		isVoid nullable:true
		isWriteOff nullable:true
		woValue2 nullable:true
		dateWO nullable:true
		woValue1 nullable:true
		dateVoid nullable:true
		voidBy nullable:true
		woBy nullable:true
		triggerDomain nullable: true
	 	requestor nullable: true
	 	pppCost nullable:true
	 	approver1 nullable:true
	 	approver2 nullable:true
	 	mustApprovedBy nullable:true
	 	rejectNotes nullable:true
		dateReject nullable:true
		rejectedBy nullable:true
		rateDetail nullable:true

    }

	static transients =['total','pppRemain','pppRemainBrand']

	Float getTotal() {
		def total = 0
		purchaseOrderDetails.each{
			total = total + it.totalCost
		}

		return total
	}
	
	def beforeInsert(){
		Integer count= PurchaseOrder.countByTransactionGroup(transactionGroup)+1
		Integer width= transactionGroup.width
		String  prefix = transactionGroup.prefix

		
		String c = sprintf("%0${width}d",count)
		Date now = new Date()
		number = prefix+now.format(transactionGroup.format)+c
	}


	def getPppRemain(){
		def domainClassName = "com.smanggin." + triggerDomain
    	def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        def ppp = domainClassInstance.findByNumber(pppNumber)

        return ppp.remainCreditLimit
	}
	
	def getPppRemainBrand(){
		
        def pppDetail    = PppDetail.findAllByPppNumberAndBrand(pppNumber,brand)
        return pppDetail.remainCreditLimit
	}
}
