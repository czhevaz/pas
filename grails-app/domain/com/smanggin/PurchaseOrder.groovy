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

	String woNotes
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

	/* field tambahan not Mandatory */
	String deliveryPlace
	Date deliveryDate
	String paymentTerms

	
	String objective
	String scheme
	String mechanics
	String activitiesComponent
	String programTittle

	String addIntructions
	Integer year
	Integer month

	String toString() { return number } 	

	static	belongsTo	= [TransactionGroup,Supplier,Currency]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static	hasMany		= [purchaseOrderDetails:PurchaseOrderDetail, 
	purchaseOrderComments:PurchaseOrderComment,
	purchaseOrderApprovers:PurchaseOrderApprover,
	purchaseOrderAllocations:PurchaseOrderAllocation,
	purchaseOrderBalances:PurchaseOrderBalance,
	attachments:Attachment
	]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_PAS_PO'
    	version true
    	isVoid defaultValue:'0'
    	isWriteOff defaultValue:'0'
    	year formula: 'YEAR(purchase_order_date)'
    	month formula: 'MONTH(purchase_order_date)'
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

		deliveryPlace nullable:true
		deliveryDate nullable:true
		paymentTerms nullable:true
		objective nullable:true
		scheme nullable:true
		mechanics nullable:true
		activitiesComponent nullable:true		
		programTittle nullable:true
		addIntructions nullable :true
		woNotes nullable :true
		year nullable:true
		month nullable:true

    }

	static transients =['total','pppRemain','pppRemainBrand','PORemain1','PORemain2']

	Float getTotal() {
		def total = 0
		purchaseOrderDetails.each{
			total = total + it.totalCost
		}

		return total
	}
	
	def beforeInsert(){
		//Integer count= PurchaseOrder.countByTransactionGroup(transactionGroup)+1
		
		def po = PurchaseOrder.createCriteria().list(){
            order("dateCreated", "desc")
            eq('transactionGroup',transactionGroup)
            
        }

		Integer count =1
		Integer width= transactionGroup.width
		
		if(po){
        	def lastnumber = po[0].number.reverse().take(width).reverse().replaceFirst('^0+(?!$)', '')
        	count = lastnumber.toInteger() + 1
        }

		String  prefix = transactionGroup.prefix

		
		String c = sprintf("%0${width}d",count)
		Date now = new Date()
		number = prefix+now.format(transactionGroup.format)+c
	}


	Float getPppRemain(){
		def domainClassName = "com.smanggin." + triggerDomain
    	def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        def ppp = domainClassInstance.findByNumber(pppNumber)
        def pppDetail    = PppDetail.findAllByPppNumber(ppp?.number)
        Float totalRemain = 0

        pppDetail.each{
        	totalRemain = totalRemain + it.remainCreditLimit
        }

        return totalRemain
	}
	
	Float getPppRemainBrand(){
		
        def pppDetail    = PppDetail.findByPppNumberAndBrand(pppNumber,brand)
        return pppDetail?.remainCreditLimit?:0
	}

	Float getPORemain1(){
		def rfpDetails = RfpDetail.createCriteria().list(){
			eq('purchaseOrder', this)
			rfp{
				ne('state','Rejected')
				or{
					ne('state','Rejected')
					ne('state','Void')	
				}
			}
		}

		def poWO = PurchaseOrderWriteOff.createCriteria().list(){
			eq('purchaseOrder', this)
			projections{
                sum('woValue1')
            }			
		}
		
		def totaRfp1 = 0
		rfpDetails.each{
			totaRfp1 = totaRfp1 + it.totalCost1
		}

		def remainTotal = this.total - totaRfp1 - (poWO[0]?:0)
		return remainTotal
	}

	Float getPORemain2(){
		def rfpDetails = RfpDetail.createCriteria().list(){
			eq('purchaseOrder', this)
			rfp{
				or{
					ne('state','Rejected')
					ne('state','Void')	
				}
				
			}	
		}
		
		def poWO = PurchaseOrderWriteOff.createCriteria().list(){
			eq('purchaseOrder', this)
			projections{
                sum('woValue2')
            }			
		}

		def totaRfp2 = 0
		rfpDetails.each{
			totaRfp2 = totaRfp2 + it.totalCost2
		}
		
		def totalWoPO2 = poWO[0]?poWO[0].round(2):0
		

		def remainTotal = (this.total/this.rate).round(2) - totaRfp2 - totalWoPO2

		return remainTotal
	}
}
