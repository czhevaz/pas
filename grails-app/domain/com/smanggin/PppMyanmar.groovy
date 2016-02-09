package com.smanggin

/**
 * PppMyanmar
 * A domain class describes the data object and it's mapping to the database
 */
class PppMyanmar {

	String number
	String requestor
	Country country
	String  lob
	String brand
	String lobHead
	Date pppDate
	String pppProgram
	Float pppCost
	String state

	Date dateCreated
	String toString(){ pppNumber }	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
	static	hasMany		= [pppDetails:PppDetail]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_Transaksi_PPP_MM'
    	version true
    	id 	column: "PPP_Number",
        	name : 'number',
        	type: 'string',
        	generator: 'identity'

    	number column:'PPP_Number'
		requestor column:'PPP_Requestor'
		country column:'ppp_country'
		lob column:'PPP_LOB'
		brand column:'PPP_Brand'
		lobHead column:'PPP_LOBHead'
		pppDate column:'PPP_Date_Proposed'
		pppProgram column:'PPP_Program'
		pppCost column:'PPP_Cost'
		dateCreated column:'PPP_Created_Date'
		state column:'PPP_Status'
		sort pppDate:"desc"
    }
    
	static	constraints = {
		version nullable:true	
		
    }
	
	static transients =['remainCreditLimit']

	Float getRemainCreditLimit() {
		def poApp = PurchaseOrder.createCriteria().list(){
			eq('pppNumber',number)
			ne('state','Rejected')	
		}

		def poReject = PurchaseOrder.createCriteria().list(){
			eq('pppNumber',number)
			eq('state','Rejected')	
		}

		def totalOrderApp = 0
		//println "purchaseOrders" + purchaseOrders
		if(poApp.size() > 0){
			poApp.each{
				totalOrderApp = totalOrderApp+(it.total/it.rate)
			}
		}

		def totalOrderReject = 0
		if(poReject.size() > 0){
			poReject.each{
				totalOrderReject = totalOrderReject+(it.total/it.rate)
			}
		}
		
		def amount = pppCost?:0
		//println " Grand total Order "+ totalOrder
		return (amount-totalOrderApp)
	}
//	}
}
