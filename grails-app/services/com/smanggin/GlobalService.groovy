package com.smanggin

/**
 * GlobalService
 * A service class encapsulates the core business logic of a Grails application
 */
class GlobalService {

    static transactional = true

    def getApprovals(purchaseOrder){
    	def appDetail = ApprovalDetail.createCriteria().list(){
    		country{
               eq('name',purchaseOrder.country)     
            }
            eq('lob',purchaseOrder.lob)
            eq('brand',purchaseOrder.brand)
            transactionType{
                eq('code',purchaseOrder?.transactionGroup?.transactionType?.code)
            }
            ne('inActive',true)
            
    	}

    	return appDetail	
    }

	def getApprovalBySeq(purchaseOrder,noseq){
    	def appDetail = ApprovalDetail.createCriteria().list(){
    		country{
               eq('name',purchaseOrder.country)     
            }
            eq('lob',purchaseOrder.lob)
            eq('brand',purchaseOrder.brand)

           eq('noSeq',noseq?.toLong())
    	}

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
}
