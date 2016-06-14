package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * RfpController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class RfpController {
    def globalService 
    def printService 
    def syncDatabaseService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    
    def baseCurrency = Currency.findByBaseCurrencyAndActive(true,'Yes')
    

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        
        if(params.trType){
            session.trType = params.trType    
        }
        params.order = params.order ?: 'desc' 
        params.sort = params.sort ?: 'dateCreated' 
        def user = User.findByLogin(session.user)
        def rfpApprover = RfpApprover.findAllByApprover(user)
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Rfp.createCriteria().list(params){
            //if(user?. != 'LOB'){
                /*or{
                    eq('createdBy',user?.login)
                    eq('mustApprovedBy',user?.login)    
                    eq('rejectedBy',user.login)
                    if(rfpApprover?.size() > 0){
                        'in'('id',rfpApprover?.rfp?.id)    
                    }
                }*/

                    
            //}
            if(params.state){
                eq('state',params.state)
                if(params.state == "Waiting Approval"){
                        eq('mustApprovedBy',user.login)
                        
                }
                
                if(params.state == "Rejected"){
                 or{
                    eq('createdBy',user.login)
                    eq('rejectedBy',user.login)
                 }   
                    

                }

                if (params.state == "Approved") {
                    or{
                        eq('createdBy',user.login)    
                        if(rfpApprover?.size() > 0){
                            'in'('id',rfpApprover?.rfp?.id)    
                        }
                        
                    }
                } 
                
            }else{
                or{
                    eq('createdBy',user?.login)
                    eq('mustApprovedBy',user?.login)    
                    eq('rejectedBy',user.login)
                    if(rfpApprover?.size() > 0){
                        'in'('id',rfpApprover?.rfp?.id)    
                    }
                }
            }
            
        }

        println " total "+ results.totalCount

        [rfpInstanceList: results, rfpInstanceTotal: results.totalCount]
    }

    def create() {

        if(params.trType){
            session.trType = params.trType    
        }

        [rfpInstance: new Rfp(params)]
    }

    def save() {
        
        def rfpInstance = new Rfp(params)

        if(baseCurrency){
            def localCurrency = Currency.findByCodeAndActive(params.currency1?.code,'Yes')
            rfpInstance.currency1=localCurrency
            rfpInstance.currency2=baseCurrency
            rfpInstance.rate = params.rate?params.rate.toFloat():1
            rfpInstance.rateDetail = RateDetail.get(params.rateDetail?.id)
        }

        rfpInstance.country = Country.findByName(params.country)
        rfpInstance.createdBy = session.user
        if(params.paymentOption){
            rfpInstance.paymentOption = PaymentOption.byId(params.paymentOption?.id?.toInteger())    
        }
        
        rfpInstance.state = 'Draft'
        def approvals = globalService.getApprovals(rfpInstance)        

        if(approvals){

            if (!rfpInstance.save(flush: true)) {
                render(view: "create", model: [rfpInstance: rfpInstance])
                return
            }

             /* insert Rfp Approver*/    
            
            approvals.each{
                def rfpApprover = new RfpApprover()
                rfpApprover.rfp = rfpInstance
                rfpApprover.noSeq = it.noSeq
                rfpApprover.approver = it.approver
                rfpApprover.country = Country.findByName(params?.country)
                rfpApprover.status = 0
                rfpApprover.approvalDetail = it
                rfpApprover.save(flush:true)
            }

    		flash.message = message(code: 'default.created.message', args: [message(code: 'rfp.label', default: 'RFP'), rfpInstance.number])
            redirect(action: "show", id: rfpInstance.id)

        }else{
            flash.error = message(code: 'default.setApprover.message', args: [message(code: 'rfp.label', default: 'RFP')])
            redirect(action: "create")
        }    
    }

    def show() {
        def rfpInstance = Rfp.get(params.id)
        
        Integer count= Rfp.countByTransactionGroup(rfpInstance.transactionGroup)+1

        def rfp = Rfp.createCriteria().list(){
            order("dateCreated", "desc")
            eq('transactionGroup',rfpInstance.transactionGroup)
            
        }

        int length = Math.log10(rfp.size()) + 1;
        println "rfp Data" + rfp[0]
        println 'digit' +length
        def lastNumber = rfp[0].number.reverse().take(5).reverse().replaceFirst('^0+(?!$)', '')
        println " last number " +lastNumber

        
        if(params.notifId){
            globalService.updateIsNewNotif(params.notifId)
        }

        if (!rfpInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'RFP'), params.id])
            redirect(action: "list")
            return
        }

        def isEdit = false
        if(rfpInstance.state == "Waiting Approval"){
            def approver1 = globalService?.getRfpApproverBySeq(rfpInstance,1)
           
            if(approver1.login == session.user){
                isEdit = true       
            }
            
        }else if(rfpInstance.state == "Draft"){
            if(rfpInstance.createdBy == session.user){
                isEdit = true 
            }
        }

        

        [rfpInstance: rfpInstance,isEdit:isEdit]
    }

    def edit() {
        def rfpInstance = Rfp.get(params.id)
        if (!rfpInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'Rfp'), params.id])
            redirect(action: "list")
            return
        }

        def isEdit = false
        if(rfpInstance.state == "Waiting Approval"){
            def approver1 = globalService?.getRfpApproverBySeq(rfpInstance,1)
           
            if(approver1.login == session.user){
                isEdit = true       
            }
            
        }else if(rfpInstance.state == "Draft"){
            if(rfpInstance.createdBy == session.user){
                isEdit = true 
            }
        }

        [rfpInstance: rfpInstance,isEdit:isEdit]
    }

    def update() {

        
        def rfpInstance = Rfp.get(params.id)
        if (!rfpInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'Rfp'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rfpInstance.version > version) {
                rfpInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rfp.label', default: 'Rfp')] as Object[],
                          "Another user has updated this Rfp while you were editing")
                render(view: "edit", model: [rfpInstance: rfpInstance])
                return
            }
        }

        println params
        //rfpInstance.properties = params
         if(baseCurrency){
            def localCurrency = Currency.findByCodeAndActive(params.currency1?.code,'Yes')
            rfpInstance.currency1=localCurrency
            rfpInstance.currency2=baseCurrency
            rfpInstance.rate = params.rate?params.rate.toFloat():1
            rfpInstance.rateDetail = RateDetail.get(params.rateDetail?.id)
        }


        rfpInstance.country = Country.findByName(params.country)
        rfpInstance.updatedBy = session.user
        rfpInstance.paymentOption = PaymentOption.byId(params.paymentOption?.id?.toInteger())
        rfpInstance.supplier = Supplier.findById(params.supplier.id?.toInteger())
        rfpInstance.paymentType = params.paymentType
        rfpInstance.note = params.note

        if(rfpInstance.paymentOption?.id!=1){

            rfpInstance.paidCountry = null
        }else{
            rfpInstance.paidCountry = params.paidCountry
        }

        if (!rfpInstance.save(flush: true)) {
            render(view: "edit", model: [rfpInstance: rfpInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'rfp.label', default: 'Rfp'), rfpInstance.number])
        redirect(action: "show", id: rfpInstance.id)
    }

    def delete() {
        def rfpInstance = Rfp.get(params.id)
        if (!rfpInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'Rfp'), params.id])
            redirect(action: "list")
            return
        }

        try {
            rfpInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'rfp.label', default: 'Rfp'), rfpInstance.number])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rfp.label', default: 'Rfp'), rfpInstance.number])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def rfpInstance = (params.id) ? Rfp.get(params.id) : new Rfp()
        
        if (!rfpInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'Rfp'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (rfpInstance.version > version) {
                    rfpInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'rfp.label', default: 'Rfp')] as Object[],
                              "Another user has updated this Rfp while you were editing")
                    render([success: false, messages: rfpInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        rfpInstance.properties = params
                       
        if (!rfpInstance.save(flush: true)) {
            render([success: false, messages: rfpInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        def user = User.findByLogin(auth.user())
        if(params.masterField){
            def c = Rfp.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.state){
            def rfpApprover = RfpApprover.findAllByApprover(user)
            def c = Rfp.createCriteria()
            def results = c.list {
                eq('state',params.state)

                if(params.state == "Waiting Approval"){
                    eq('mustApprovedBy',user.login)
                    
                }
                
                if(params.state == "Rejected"){
                 or{
                    eq('createdBy',user.login)
                    eq('rejectedBy',user.login)
                 }   
                    
                 eq('year',globalService.getCurrentYear())
                }

                if (params.state == "Approved") {
                    or{
                        eq('createdBy',user.login)    
                        if(rfpApprover?.size() > 0){
                            'in'('id',rfpApprover?.rfp?.id)    
                        }
                        
                    }
                    eq('year',globalService.getCurrentYear())
                }

                
            }



            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Rfp.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def rfpInstance = Rfp.get(id)
        if (!rfpInstance)
            render([success: false] as JSON)
        else {
            try {
                rfpInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def rfpInstance = Rfp.get(params.id)
        if (!rfpInstance) {
            render(
                message : "rfp.not.found",
            ) as JSON

        }
        else {
            render([rfpInstance : rfpInstance ] as JSON)
        }
    }

    /**
    Action Waiting Approve
    **/
    def actionWaitingApprove() {
        
        def rfpInstance = Rfp.get(params.id)
        if (!rfpInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'RFP'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rfpInstance.version > version) {
                rfpInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rfp.label', default: 'RFP')] as Object[],
                          "Another user has updated this RFP while you were editing")
                render(view: "edit", model: [rfpInstance: rfpInstance])
                return
            }
        }

        
        def mustApprovedBy = globalService.getApprovalBySeq(rfpInstance,1)
         
        if(mustApprovedBy){
            rfpInstance.mustApprovedBy = mustApprovedBy[0]?.approver
        }
    
        rfpInstance.state = 'Waiting Approval'    

            
        if (!rfpInstance.save(flush: true)) {
            println rfpInstance.errors

            render(view: "edit", model: [rfpInstance: rfpInstance])
            return
        }

        //sendApproveEmail(rfpInstance)/* --Send Email */

        saveNotif(rfpInstance,mustApprovedBy[0]?.approver)/* --insert TO Notif */
                
        //insertTOPOBalance(rfpInstance)

            
        flash.message = message(code: 'default.waitingApproved.message', args: [message(code: 'rfp.label', default: 'RFP'), rfpInstance.number])
            
        redirect(action: "show", id: rfpInstance.id)
        
    }


        /**
    Action Approve
    **/
    def actionApprove() {
        def rfpInstance = Rfp.get(params.id)
        if (!rfpInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'RFP'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rfpInstance.version > version) {
                rfpInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rfp.label', default: 'RFP')] as Object[],
                          "Another user has updated this RFP while you were editing")
                render(view: "edit", model: [rfpInstance: rfpInstance])
                return
            }
        }
        
        def user = User.findByLogin(session.user)

        
        if(globalService.getNextApproverRfp(rfpInstance,user)){
            rfpInstance.mustApprovedBy = globalService.getNextApproverRfp(rfpInstance,user)
        }

        def countRfpApp = rfpInstance.rfpApprovers?.size()
        def countRfpApproved= RfpApprover.findAllByRfpAndStatus(rfpInstance,1).size()+1
    
        if(countRfpApproved == countRfpApp){
            rfpInstance.state = 'Approved'    

        }
        

        if (!rfpInstance.save(flush: true)) {
            println rfpInstance.errors
            render(view: "edit", model: [rfpInstance: rfpInstance])
            return
        }

       
        def rfpApprover = RfpApprover.findByRfpAndApprover(rfpInstance,user)
        rfpApprover.status = 1
        rfpApprover.approverDate = new Date()
        
        if (!rfpApprover.save(flush:true)) {
            println rfpApprover.errors
        }    

    

        if(globalService.getNextApproverRfp(rfpInstance,user)){
            saveNotif(rfpInstance,rfpInstance.mustApprovedBy)/* --insert TO Notif */
           // sendApproveEmail(rfpInstance)/* --Send Email */
        }

        if(countRfpApproved == countRfpApp){
            rfpDetailInsertPOBalance(rfpInstance)

            /* insert to proxy*/
            syncDatabaseService.insertRfptoProxy(rfpInstance)

        }
        //println "rfpDetail >>> " + 

        flash.message = message(code: 'default.approved.message', args: [message(code: 'rfp.label', default: 'RFP'), rfpInstance.number])
        redirect(action: "show", id: rfpInstance.id)
    }

    /**
    Action Reject
    **/
    def actionReject() {
        
        def rfpInstance = Rfp.get(params.id)
        
        if (!rfpInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfp.label', default: 'Rfp'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rfpInstance.version > version) {
                rfpInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrder.label', default: 'Rfp')] as Object[],
                          "Another user has updated this Rfp while you were editing")
                render(view: "edit", model: [rfpInstance: rfpInstance])
                return
            }
        }
        
        
        rfpInstance.mustApprovedBy = null   
        rfpInstance.dateReject = new Date()
        rfpInstance.rejectedBy = session.user
       
        
        rfpInstance.state = 'Rejected'    
        
 

        if (!rfpInstance.save(flush: true)) {

            render(view: "edit", model: [rfpInstance: rfpInstance])
            return
        }

        /* update Po Approver*/
        def user = User.findByLogin(auth.user()?.toString())
        def rfpApprover = RfpApprover.findByRfpAndApprover(rfpInstance,user)
        
        if(rfpApprover){
            rfpApprover.status = 2
            rfpApprover.approverDate = new Date()
            rfpApprover.save(flush:true)

        }


        saveNotif(rfpInstance,rfpInstance.createdBy) /* --insert TO Notif */
        
        flash.message = message(code: 'default.rejected.message', args: [message(code: 'rfp.label', default: 'Rfp'), rfpInstance.number])
        redirect(action: "show", id: rfpInstance.id)
    }



    /**
    SaveNotif
    **/  
    def saveNotif(rfpInstance,forUser){

        def notif = new Notif()
        notif.docName = "Rfp"
        notif.docId = rfpInstance.id
        notif.docNumber = rfpInstance.number
        notif.state = rfpInstance.state
        notif.forUser = forUser
        notif.createdBy = session.user
        notif.isNew = true
        notif.save()
        
    }/* SaveNotif */

    def totalCost2LargerThanPO2(rfpDetail){
        def totalCost2= rfpDetail.totalCost2
        def pOtotal= rfpDetail?.purchaseOrder?.total
        def ratePO = rfpDetail?.purchaseOrder?.rate
        def pOtotal2= pOtotal/ratePO
        def selisih = totalCost2 - pOtotal2

        def pppDetail = PppDetail.findByPppNumberAndBrand(rfpDetail.pppNumber,rfpDetail.purchaseOrder?.brand)
        pppDetail.balanceWriteOff = pppDetail?.balanceWriteOff - selisih
        pppDetail.save(flush:true)

    }


    def rfpDetailInsertPOBalance(rfpInstance){
        def rfpDetail = RfpDetail.createCriteria().list(){
            eq('rfp',rfpInstance)
            projections{
                groupProperty("purchaseOrder")
                sum('totalCost1')
                sum('totalCost2')  
            }
        }

        rfpDetail.each{
            insertTOPOBalance(it,rfpInstance)     
            updatePPPBalance(it) 
            if(it[0]?.PORemain1 == 0){
                it[0]?.state='Closed'
                it[0]?.save(flush:true)
            }      
        }

        return rfpDetail

    }

    def insertTOPOBalance(purchaseOrderInstance,rfpInstance){

        def poBalance = new PurchaseOrderBalance()
        poBalance.country = purchaseOrderInstance[0]?.country
        poBalance.purchaseOrder = purchaseOrderInstance[0]
        poBalance.description = rfpInstance?.note?:'' +', insert when state RFP Approved '
        poBalance.balance1 = purchaseOrderInstance[0].PORemain1?:0
        poBalance.currency1 = purchaseOrderInstance[0].currency1
        poBalance.balance2 = purchaseOrderInstance[0].PORemain2?:0
        poBalance.refference = rfpInstance?.number
        poBalance.activities = rfpInstance?.state
        poBalance.cost = purchaseOrderInstance[1]
        poBalance.cost2 = purchaseOrderInstance[2]
        poBalance.pppNumber = purchaseOrderInstance[0].pppNumber
        poBalance.pppBalance = purchaseOrderInstance[0].pppRemainBrand
        if(!poBalance.save(flush:true)){
            println "poBalance " + poBalance?.errors
        }

    }



    def updatePPPBalance(purchaseOrderInstance){

        def tCostDetail  = PppDetail.findByPppNumberAndBrand(purchaseOrderInstance[0]?.pppNumber,purchaseOrderInstance[0]?.brand)
        tCostDetail.poCommitted = tCostDetail.costDetail - tCostDetail.remainCreditLimit
        tCostDetail.balanceWriteOff = tCostDetail.remainCreditLimit
        if(!tCostDetail.save(flush:true)){
            println "pppDetail " + tCostDetail?.errors   
        }


    }


    /** generate PDF **/
     def printPdf(){
        //println " params >>>>>>>>>>>>> " +params 

        def rfpInstance = Rfp.get(params.id)
        def trTypeCode = rfpInstance?.transactionGroup?.transactionType?.code
        def filename = rfpInstance?.number
        println " filename" + rfpInstance?.number
        //def file  = filename.replace("/","")
        
        def approver1 = RfpApprover.findByRfpAndNoSeq(rfpInstance,1)
        def approver2 = RfpApprover.findByRfpAndNoSeq(rfpInstance,2)
        
        params.put('approver1',approver1?.approver?.name)
        params.put('approver2',approver2?.approver?.name)
        params.put('companyName','Kalbe International  Pte. Ltd')
        params.put('rfp_id',rfpInstance?.id)
        params.put('view',true)
        params.put('paymentType',rfpInstance?.paidCountry?(rfpInstance?.paymentOption +'/'+rfpInstance?.paidCountry +' : '+rfpInstance?.paymentType)

        def list =[]
        rfpInstance.rfpDetails.each{
            list.push(it.pppNumber +' : '+it.purchaseOrder?.number)
        }

        def remarks = list.join(',')
         params.put('remarks',list)
        printService.print("PDF", request.getLocale(), response,params,trTypeCode,filename)
    }


    def downloadExcel(){
        //println " excel >>>>>>>>>>>>>>>>>>> " +params

        def rfp = Rfp.get(params.id.toLong())
        def trTypeCode = rfp?.transactionGroup?.transactionType?.code
        def filename = rfp.number
       // def file  = filename.replace("/","")
        
        def approver1 = RfpApprover.findByRfpAndNoSeq(rfp,1)
        def approver2 = RfpApprover.findByRfpAndNoSeq(rfp,2)
        
        params.put('approver1',approver1?.approver?.name)
        params.put('approver2',approver2?.approver?.name)
        params.put('companyName','Kalbe International '+ "${rfp?.country}"+ ' Pte. Ltd')
        params.put('rfp_id',rfp?.id)
        params.put('view',false)
        
        printService.print("XLS", request.getLocale(), response,params,trTypeCode,filename)
    }

}
