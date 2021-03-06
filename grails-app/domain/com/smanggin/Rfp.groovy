package com.smanggin

/**
 * Rfp
 * A domain class describes the data object and it's mapping to the database
 */
class Rfp {


	Date	dateCreated
	Date	lastUpdated
	String 	createdBy 
	String 	updatedBy


	Date dateVoid
	String voidBy

	String country
	Date rfpDate
	TransactionGroup transactionGroup
	Supplier supplier
	String number

	Currency currency1 // currency Local
	Currency currency2 // currency convert
	Float   rate
	RateDetail rateDetail
	
	String  state
	Boolean isVoid // 1 = void, 0 = not void. Default = 0 Digunakanuntuk men-delete PO tersebut
	PaymentOption paymentOption

	String mustApprovedBy
	String note

	

	String rejectNotes
	Date dateReject
	String rejectedBy
	String paymentType

	String paidCountry
	Integer year
	Integer month
	
	static	belongsTo	= [TransactionGroup, Supplier, Currency, PaymentOption]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static	hasMany		= [rfpDetails:RfpDetail,rfpApprovers:RfpApprover]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_RFP'
    	version true
    	isVoid defaultValue:'0'
    	isWriteOff defaultValue:'0'
    	year formula: 'YEAR(rfp_date)'
    	month formula: 'MONTH(rfp_date)'
    }
    
	static	constraints = {
		dateVoid nullable:true
		voidBy nullable:true
		updatedBy nullable:true	
		isVoid nullable:true
		rateDetail nullable:true
		mustApprovedBy nullable:true
		rejectedBy nullable:true
		dateReject nullable:true
		rejectNotes nullable:true
		note nullable:true
		paymentType nullable:true
		paidCountry nullable:true
		year nullable:true
		month nullable:true
    }

    static transients =['totalRFP1','totalRFP2']

    Float getTotalRFP1() {
		def total = 0
		rfpDetails.each{
			total = total + it.totalCost1
		}

		return total
	}

	Float getTotalRFP2() {
		def total = 0
		rfpDetails.each{
			total = total + it.totalCost2
		}

		return total
	}

    def beforeInsert(){
    	//Integer count= Rfp.countByTransactionGroup(transactionGroup)+1
		
		def rfp = Rfp.createCriteria().list(){
            order("dateCreated", "desc")
            eq('transactionGroup',transactionGroup)
            
        }

        Integer count = 1
        Integer width= transactionGroup.width

        if(rfp){
        	def lastnumber = rfp[0].number.reverse().take(width).reverse().replaceFirst('^0+(?!$)', '')
        	count = lastnumber.toInteger() + 1
        }

		
		String  prefix = transactionGroup.prefix
		
		String c = sprintf("%0${width}d",count)
		Date now = new Date()
		number = prefix+now.format(transactionGroup.format)+c

    }
}
