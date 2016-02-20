package com.smanggin

/**
 * GlobalService
 * A service class encapsulates the core business logic of a Grails application
 */
class GlobalService {

    static transactional = true

    def getApprovals(purchaseOrder){
        println "country"+purchaseOrder.country
        println "lob" + purchaseOrder.lob
        println "brand" +purchaseOrder.brand
        println "trtype" +purchaseOrder?.transactionGroup?.transactionType?.code
    	def appDetail = ApprovalDetail.createCriteria().list(){
    		country{
               eq('name',purchaseOrder.country)     
            }

            if(purchaseOrder?.transactionGroup?.transactionType?.code != "RFP"){
                eq('lob',purchaseOrder.lob)
                eq('brand',purchaseOrder.brand)    
            }
            
            transactionType{
                eq('code',purchaseOrder?.transactionGroup?.transactionType?.code)
            }
            
            eq('inActive',false)
            
    	}

    	return appDetail	
    }

	def getApprovalBySeq(transaction,noseq){
    	def appDetail = ApprovalDetail.createCriteria().list(){
    		country{
               eq('name',transaction.country)     
            }

            eq('transactionType',transaction?.transactionGroup?.transactionType)

            if(transaction?.transactionGroup?.transactionType?.code != 'RFP'){
                eq('lob',transaction.lob)
                eq('brand',transaction.brand)
            }


           ne('inActive',true) 
           eq('noSeq',noseq?.toLong())
    	}

        println "firstApprove" +appDetail
    	return appDetail	
    }    

    def getPOApprovalSeq(purchaseOrder,userLogin){
    	def poApprover = PurchaseOrderApprover.findByPurchaseOrderAndApprover(purchaseOrder,userLogin)
    	return poApprover?.noSeq
    }

    def getPOApproverBySeq(purchaseOrder,noSeq){
    	def poApprover = PurchaseOrderApprover.findByPurchaseOrderAndNoSeq(purchaseOrder,noSeq)
    	return poApprover?.approver
    }


    def getNextApprover(purchaseOrder,userLogin){
    	def seq = getPOApprovalSeq(purchaseOrder,userLogin)
    	if(seq){
    		def nextseq = seq +1
    		def approver = getPOApproverBySeq(purchaseOrder,nextseq)
    		return approver
    	}else {
    		return null
    	}   

    }


    /**
    RFP
    **/
    def getRfpApprovalSeq(rfp,userLogin){
        def rfpApprover = RfpApprover.findByRfpAndApprover(rfp,userLogin)
        return rfpApprover?.noSeq
    }

    def getRfpApproverBySeq(rfp,noSeq){
        def rfpApprover = RfpApprover.findByRfpAndNoSeq(rfp,noSeq)
        return rfpApprover?.approver
    }

    def getNextApproverRfp(rfp,userLogin){
        def seq = getRfpApprovalSeq(rfp,userLogin)
        if(seq){
            def nextseq = seq +1
            def approver = getRfpApproverBySeq(rfp,nextseq)
            return approver
        }else {
            return null
        }   
    }


    def approvalStatus(val) {
	    def result
	    switch (val) {
	        case 1:
	            result = 'Approved'
	            break
	        case 2:
	            result = 'Rejected'
	            break
	        default:
	            result = 'Not Approved'
	            break
	    }    
	   return result
	}

    def updateIsNewNotif(notifId){
        def notif = Notif.get(notifId)
        notif.isNew=false
        notif.save()
    }

    def filterDate(startDate,endDate){
        def vd= []
        Calendar cal = Calendar.getInstance();
           cal.setTime(startDate);
           cal.set(Calendar.HOUR_OF_DAY, 0);
           cal.set(Calendar.MINUTE, 0);
           cal.set(Calendar.SECOND, 0);
           Date start = cal.getTime();

        Calendar calx = Calendar.getInstance();
           calx.setTime(endDate);
           calx.set(Calendar.HOUR_OF_DAY, 23);
           calx.set(Calendar.MINUTE, 59);
           calx.set(Calendar.SECOND, 59);
           Date end = calx.getTime();
        return [start:start,end:end] 
    }


    def getAllPoMustApproved(){
        def po = PurchaseOrder.createCriteria().list(){
            eq('state','Waiting Approval')
            projections{
                property('mustApprovedBy')
            }
        }

        return po.unique()
    }
}
