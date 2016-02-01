package com.smanggin

/**
 * PppDetail
 * A domain class describes the data object and it's mapping to the database
 */
class PppDetail implements Serializable{

	String pppNumber
	String brand
	Float costDetail
	Float poCommitted //Nilai PO yang akan di generate dari system
	Float balanceWriteOff //PPP_BalanceWriteoff = PPP_CostDetail - PPP_Comm_PO    (balance dari PPP yang akan di buang ke budget saat ada write off PPP)
	String toString(){ pppNumber +'-'+ brand}	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    	table 'T_Cost_Detail'
    	id composite: ['pppNumber', 'brand']
    	version false
    	pppNumber column:'PPP_Number'
		brand column:'PPP_Brand'
		costDetail column:'PPP_CostDetail',defaultValue:0
		balanceWriteOff column:'PPP_BalanceWriteoff',defaultValue:0
		poCommitted column:'PPP_Comm_PO',defaultValue:0
    }
    
	static	constraints = {
		version nullable:true
    }

    static transients =['remainCreditLimit']
	
	Float getRemainCreditLimit() {
		def poApp = PurchaseOrder.createCriteria().list(){
			eq('pppNumber',pppNumber)
			ne('state','Rejected')	
		}

		def poReject = PurchaseOrder.createCriteria().list(){
			eq('pppNumber',pppNumber)
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
		
		def amount = costDetail?:0
		//println " Grand total Order "+ totalOrder
		return (amount-totalOrderApp)
	}
}
