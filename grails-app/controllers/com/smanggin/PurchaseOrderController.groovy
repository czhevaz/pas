package com.smanggin

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile


/**
 * PurchaseOrderController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderController {

    def fileUploadService
    def globalService       
    def baseCurrency = Currency.findByBaseCurrencyAndActive(true,'Yes')

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def user = User.findByName(auth.user())
        params.order = params.order ?: 'desc' 
        params.sort = params.sort ?: 'dateCreated' 
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrder.createCriteria().list(params){
            
            if(user?.role != 'LOB'){
                or{
                    eq('createdBy',auth.user())
                    eq('mustApprovedBy',auth.user())    
                }    
            }
            if(params.state){
                eq('state',params.state)
            }
        }

        [purchaseOrderInstanceList: results, purchaseOrderInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderInstance: new PurchaseOrder(params)]
    }

    def save() {

        def purchaseOrderInstance = new PurchaseOrder(params)
        
        def country = Country.findByName(params.country)
        def domainPPP = country?.domainPPP

        if(params.pppNumber){
            
        	def domainClassName = "com.smanggin." + domainPPP
    		def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        	def ppp = domainClassInstance.findByNumber(params.pppNumber)
            def pppDetail    = PppDetail.findAllByPppNumberAndBrand(params.pppNumber,ppp?.brand)

        	purchaseOrderInstance.pppNumber = ppp?.number
        	purchaseOrderInstance.country = ppp?.country
        	purchaseOrderInstance.lob = ppp?.lob
        	purchaseOrderInstance.brand = pppDetail[0]?.brand
        	purchaseOrderInstance.requestor = ppp?.requestor
        	purchaseOrderInstance.pppCost = pppDetail[0]?.costDetail

        }
        
		def date = new Date()
        def rate = Rate.createCriteria().list(params){
        	
        	ge('starDate',date)
        	le('endDate',date)
 
        	maxResults(1)
  			
        }


        if(baseCurrency){
        	def localCurrency = Currency.findByCodeAndActive(params.currency1?.code,'Yes')
        	purchaseOrderInstance.currency1=localCurrency
        	purchaseOrderInstance.currency2=baseCurrency
        	purchaseOrderInstance.rate = params.rate?params.rate.toFloat():1
            purchaseOrderInstance.rateDetail = RateDetail.get(params.rateDetail?.id)
        }

        purchaseOrderInstance.triggerDomain = domainPPP
        purchaseOrderInstance.state = 'Draft'

        def approvals = globalService.getApprovals(purchaseOrderInstance)        

        if(approvals){
            if (!purchaseOrderInstance.save(flush: true)) {
                render(view: "create", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }

            /* insert Po Approver*/    
            
            approvals.each{
                def poApprover = new PurchaseOrderApprover()
                poApprover.purchaseOrder = purchaseOrderInstance
                poApprover.noSeq = it.noSeq
                poApprover.approver = it.approver
                poApprover.country = Country.findByName(params?.country)
                poApprover.status = 0
                poApprover.approvalDetail = it
                poApprover.save(flush:true)
            }

            /* insert Po Allocation*/
        //    insertPOAllocation(purchaseOrderInstance)
            /* update Po Balance*/

    		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
            redirect(action: "show", id: purchaseOrderInstance.id)
        }else{
            flash.error = message(code: 'default.setApprover.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder')])
            redirect(action: "create")
        }    
    }

    def show() {
        
        def purchaseOrderInstance = PurchaseOrder.get(params.id)


        if (!purchaseOrderInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        def domainClassName = "com.smanggin." + purchaseOrderInstance?.triggerDomain
    	def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        def pppInstance = domainClassInstance.findByNumber(purchaseOrderInstance.pppNumber)

        if(params.notifId){
            globalService.updateIsNewNotif(params.notifId)
        }

        def pppNumber=purchaseOrderInstance?.pppNumber
        def pppDetails = PppDetail.findAllByPppNumber(pppNumber)
        def pppDetail    = PppDetail.findAllByPppNumberAndBrand(purchaseOrderInstance.pppNumber,purchaseOrderInstance.brand)
        
        def map = [:] 
        map.put('requestorName',pppInstance?.requestor)
        map.put('pppNumber',pppInstance?.number)
        map.put('pppDate',pppInstance?.pppDate)
        map.put('pppDescription',pppInstance?.pppProgram)
        map.put('countryName',pppInstance?.country?.name)
        map.put('lobName',pppInstance?.lob)
        map.put('brandName',pppDetail[0]?.brand)
        map.put('state',pppInstance?.state)
        map.put('amount',pppDetail[0]?.costDetail)
        map.put('remainCreditLimit',pppDetail[0].remainCreditLimit)
        map.put('ammountTotalPPP',pppInstance?.pppCost)
        map.put('remainCreditLimitTotalPPP',pppInstance?.remainCreditLimit)
        
        [purchaseOrderInstance: purchaseOrderInstance,pppInstance:map,pppDetails:pppDetails]
    }

    def edit() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        def domainClassName = "com.smanggin." + purchaseOrderInstance?.triggerDomain
    	def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        def pppInstance = domainClassInstance.findByNumber(purchaseOrderInstance.pppNumber)


        [purchaseOrderInstance: purchaseOrderInstance,pppInstance:pppInstance]
    }

    def update() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderInstance.version > version) {
                purchaseOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrder.label', default: 'PurchaseOrder')] as Object[],
                          "Another user has updated this PurchaseOrder while you were editing")
                render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }
        }

        purchaseOrderInstance.properties = params
        
        savePoComment(purchaseOrderInstance,params)

        if (!purchaseOrderInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

/*        def poBalance = new PurchaseOrderBalance()
        poBalance.country = purchaseOrderInstance.country
        poBalance.purchaseOrder = purchaseOrderInstance
        poBalance.description =" Insert new PO state Draft"
        poBalance.balance1 = purchaseOrderInstance.total?:0
        poBalance.balance2 = purchaseOrderInstance.total?(purchaseOrderInstance.total/purchaseOrderInstance.rate):0
        poBalance.save(flush:true)*/

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.id])
        redirect(action: "show", id: purchaseOrderInstance.id)
    }

    def delete() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseOrderInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def purchaseOrderInstance = (params.id) ? PurchaseOrder.get(params.id) : new PurchaseOrder()
        
        if (!purchaseOrderInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (purchaseOrderInstance.version > version) {
                    purchaseOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'purchaseOrder.label', default: 'PurchaseOrder')] as Object[],
                              "Another user has updated this PurchaseOrder while you were editing")
                    render([success: false, messages: purchaseOrderInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        purchaseOrderInstance.properties = params
                       
        if (!purchaseOrderInstance.save(flush: true)) {
            render([success: false, messages: purchaseOrderInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
    	
        if(params.masterField){
            def c = PurchaseOrder.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.search){
           
            def country = Country.findByName(params?.countryId)
            def domainClassName = "com.smanggin." + country?.domainPPP
            def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz 
    
            def brand = Brand.findByCode(params?.brandId)
      
            
            def sqlDetail = " from PppDetail as d "           
            if(params.brandId){
             sqlDetail += "where d.brand LIKE'%${brand?.code}%' "   
            }
            def results = []
            def pppDetails = PppDetail.findAll(sqlDetail)
            pppDetails.each{
                def map = [:]
                
                def sql = getPPPHead(it,params)
                def pppHead = domainClassInstance.findAll(sql)
                
                if(pppHead?.size() > 0){
                    map.put('requestorName',pppHead[0]?.requestor)
                    map.put('pppNumber',pppHead[0]?.number)
                    map.put('pppDate',pppHead[0]?.pppDate?.format('yyyy-MM-dd'))
                    map.put('pppDescription',pppHead[0]?.pppProgram)
                    map.put('countryName',pppHead[0]?.country?.name)
                    map.put('lobName',pppHead[0]?.lob)
                    map.put('brandName',it?.brand)
                    map.put('state',pppHead[0]?.state)
                    map.put('amount',it.costDetail)
                    map.put('remainCreditLimit',it.remainCreditLimit)
                    map.put('ammountTotalPPP',pppHead[0]?.pppCost)
                    map.put('remainCreditLimitTotalPPP',pppHead[0]?.remainCreditLimit)
                    //println "map " + map
                    results.push(map)
                }
                
            }

            //println results
            
            render results as JSON

        }else if(params.pppNumber){

            def country = Country.findByName(params.countryId)
            def domainClassName = "com.smanggin." + country?.domainPPP
            def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz 
        
        	def ppp = domainClassInstance.findByNumber(params.pppNumber)
            def pppDetail    = PppDetail.findAllByPppNumberAndBrand(params.pppNumber,params.brandId)
            
            def map = [:] 
            map.put('requestorName',ppp?.requestor)
            map.put('pppNumber',ppp?.number)
            map.put('pppDate',ppp?.pppDate?.format('yyyy-MM-dd'))
            map.put('pppDescription',ppp?.pppProgram)
            map.put('countryName',ppp?.country?.name)
            map.put('lobName',ppp?.lob)
            map.put('brandName',pppDetail[0]?.brand)
            map.put('state',ppp?.state)
            map.put('amount',pppDetail[0]?.costDetail)
            map.put('remainCreditLimit',pppDetail[0].remainCreditLimit)
            map.put('ammountTotalPPP',ppp?.pppCost)
            map.put('remainCreditLimitTotalPPP',ppp?.remainCreditLimit)

            render map as JSON
        }else if(params.state){
            def c = PurchaseOrder.createCriteria()
            def results = c.list {
                eq('state',params.state)

                if(params.state == "Waiting Approval"){
                    eq('mustApprovedBy',auth.user())
                    
                }
                if(params.state == "Rejected"){
                    eq('createdBy',auth.user())
                }
            }
            render results as JSON
        }
        else
        {
           // params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PurchaseOrder.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def purchaseOrderInstance = PurchaseOrder.get(id)
        if (!purchaseOrderInstance)
            render([success: false] as JSON)
        else {
            try {
                purchaseOrderInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
            render(
                message : "purchaseOrder.not.found",
            ) as JSON

        }
        else {
            render([purchaseOrderInstance : purchaseOrderInstance ] as JSON)
        }
    }


    /**
    Action Waiting Approve
    **/
    def actionWaitingApprove() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderInstance.version > version) {
                purchaseOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrder.label', default: 'PurchaseOrder')] as Object[],
                          "Another user has updated this PurchaseOrder while you were editing")
                render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }
        }

        Float totalvalue1 = 0
        Float totalvalue2 = 0
        
        def purchaseOrderAllocations = PurchaseOrderAllocation.findAllByPurchaseOrder(purchaseOrderInstance)
        purchaseOrderAllocations.each{
            //println it.value1
            //println it.value2
            Float value1 = it.value1?:0
            Float value2 = it.value2?:0
            totalvalue1 = totalvalue1 + value1 
            totalvalue2 = totalvalue2 + value2
        }

        

        def mustApprovedBy = globalService.getApprovalBySeq(purchaseOrderInstance,1)
        purchaseOrderInstance.reasonforInvestment= params.reasonforInvestment
        
        if(false){
            println " Alocation larger than one "   
            if(totalvalue1?.round(2) == purchaseOrderInstance?.total && totalvalue2?.round(2) == (purchaseOrderInstance.total/purchaseOrderInstance.rate).round(2)){
                purchaseOrderInstance.state = 'Waiting Approval'    

            
                if(mustApprovedBy){
                    purchaseOrderInstance.mustApprovedBy = mustApprovedBy[0]?.approver
                }
            }
        }else{
            println " Alocation 1 "   
            purchaseOrderInstance.state = 'Waiting Approval'    
            if(mustApprovedBy){
                purchaseOrderInstance.mustApprovedBy = mustApprovedBy[0]?.approver
            }
        }

            
        if (!purchaseOrderInstance.save(flush: true)) {
            println purchaseOrderInstance.errors

            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

        
        savePoComment(purchaseOrderInstance,params)/* --insert TO PO comment */

//        saveNotif(purchaseOrderInstance,mustApprovedBy[0]?.approver)/* --insert TO Notif */

        //sendApproveEmail(purchaseOrderInstance)/* --Send Email */

        if(false){
            
            if(totalvalue1?.round(2) == purchaseOrderInstance?.total && totalvalue2?.round(2) == (purchaseOrderInstance.total/purchaseOrderInstance.rate).round(2)){
                
                sendApproveEmail(purchaseOrderInstance) /* --Send Email */
                
                saveNotif(purchaseOrderInstance,mustApprovedBy[0]?.approver)/* --insert TO Notif */
                
                flash.message = message(code: 'default.waitingApproved.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
                
            }else{
                flash.error = message(code: 'default.mustAllocation.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
                
            }
        }else{
                sendApproveEmail(purchaseOrderInstance) /* --Send Email */
                
                saveNotif(purchaseOrderInstance,mustApprovedBy[0]?.approver)/* --insert TO Notif */
                
            /*def poAllocation = PurchaseOrderAllocation.findByPurchaseOrder(purchaseOrderInstance)
            poAllocation.value1 = purchaseOrderInstance.total
            poAllocation.value2 = purchaseOrderInstance.total/purchaseOrderInstance?.rate
            poAllocation.save()*/
            
            flash.message = message(code: 'default.waitingApproved.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
            
        }

        redirect(action: "show", id: purchaseOrderInstance.id)
        
    }    

    /**
    Action Approve
    **/
    def actionApprove() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderInstance.version > version) {
                purchaseOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrder.label', default: 'PurchaseOrder')] as Object[],
                          "Another user has updated this PurchaseOrder while you were editing")
                render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }
        }
        
        def user = User.findByLogin(auth.user()?.toString())

        purchaseOrderInstance.approvedBy = auth.user()?.toString()
        purchaseOrderInstance.dateApproved = new Date()
        
        if(globalService.getNextApprover(purchaseOrderInstance,user)){
            purchaseOrderInstance.mustApprovedBy = globalService.getNextApprover(purchaseOrderInstance,user)
        }

       def countPoApp = purchaseOrderInstance.purchaseOrderApprovers?.size()
        def countPOApproved= PurchaseOrderApprover.findAllByPurchaseOrderAndStatus(purchaseOrderInstance,1).size()+1
    
        if(countPOApproved == countPoApp){
            purchaseOrderInstance.state = 'Approved'    

            /*def poAllocation = PurchaseOrderAllocation.findAllByPurchaseOrder(purchaseOrderInstance)
            poAllocation.each{
                updatePPPDetail(it) /* update T_cost_detail
            }*/
            
        }
        

        if (!purchaseOrderInstance.save(flush: true)) {
            println purchaseOrderInstance.errors
            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

        /* update T_cost_detail*/
        updatePPPDetail2(purchaseOrderInstance)
        /* update Po Approver*/
        def poApprover = PurchaseOrderApprover.findByPurchaseOrderAndApprover(purchaseOrderInstance,user)
        poApprover.status = 1
        poApprover.approverDate = new Date()
        if (!poApprover.save(flush:true)) {
            println poApprover.errors
        }    
        
        savePoComment(purchaseOrderInstance,params)/* --insert TO PO comment */
        
        if(globalService.getNextApprover(purchaseOrderInstance,user)){
            saveNotif(purchaseOrderInstance,purchaseOrderInstance.mustApprovedBy)/* --insert TO Notif */
            sendApproveEmail(purchaseOrderInstance)/* --Send Email */
        }

        

        flash.message = message(code: 'default.approved.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
        redirect(action: "show", id: purchaseOrderInstance.id)
    }

    /**
    Action Reject
    **/
    def actionReject() {
        
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        
        if (!purchaseOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderInstance.version > version) {
                purchaseOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrder.label', default: 'PurchaseOrder')] as Object[],
                          "Another user has updated this PurchaseOrder while you were editing")
                render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }
        }
        
        
        purchaseOrderInstance.mustApprovedBy = null

        if(params.rejectNotes){
            purchaseOrderInstance.rejectNotes = params.rejectNotes
            purchaseOrderInstance.dateReject = new Date()
            purchaseOrderInstance.rejectedBy = auth.user()
        }
        
        purchaseOrderInstance.state = 'Rejected'    
        
        savePoComment(purchaseOrderInstance,params) /* --insert TO PO comment */

        if (!purchaseOrderInstance.save(flush: true)) {

            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

        /* update Po Approver*/
        def user = User.findByLogin(auth.user()?.toString())
        def poApprover = PurchaseOrderApprover.findByPurchaseOrderAndApprover(purchaseOrderInstance,user)
        
        if(poApprover){
            poApprover.status = 2
            poApprover.approverDate = new Date()
            poApprover.save(flush:true)

        }


        saveNotif(purchaseOrderInstance,purchaseOrderInstance.createdBy) /* --insert TO Notif */
        
        flash.message = message(code: 'default.rejected.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
        redirect(action: "show", id: purchaseOrderInstance.id)
    }

     /**
    send approve email 
    **/       
    def sendApproveEmail(purchaseOrderInstance){
       
        def now = new Date()
        def msg = AppSetting.valueDefault('order_approve_email',
            'default [order_approve_email] message, please set at AppSetting')

        def subject = "PO Approved Notification @" + purchaseOrderInstance.number
       
        def userReceiver = User.findByLogin(purchaseOrderInstance.mustApprovedBy)
        def receiver = userReceiver?.email

        def authUser = User.findByLogin( auth.user() )
        def sender = authUser?.email 

        Outbox.newEmail( subject,  msg,  sender,  receiver, null, null, null, 'PurchaseOrder',purchaseOrderInstance.id)

        println ">>>>>> SENDING APPROVED MAIL <<<"

    }/* send approve email */


    /**
    save PoComment
    **/  
    def savePoComment(purchaseOrderInstance,params){
        if(params.comment){
            
            def logChatInstance =new PurchaseOrderComment()
            logChatInstance.description=params.comment
            logChatInstance.createdBy = auth.user()
            logChatInstance.purchaseOrder =purchaseOrderInstance
            logChatInstance.save()
        }
    }/* save PoComment */


    /**
    SaveNotif
    **/  
    def saveNotif(purchaseOrderInstance,forUser){

        def notif = new Notif()
        notif.docName = "PurchaseOrder"
        notif.docId = purchaseOrderInstance.id
        notif.docNumber = purchaseOrderInstance.number
        notif.state = purchaseOrderInstance.state
        notif.forUser = forUser
        notif.createdBy = auth.user()
        notif.isNew = true
        notif.save()
        
    }/* SaveNotif */


    /**
    upload
    **/  
    def upload(){
        println "params" + params
        
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request
        CommonsMultipartFile file =(CommonsMultipartFile) mpr.getFile("files")
        def fileName = fileUploadService.uploadFileAjax(file,"tes","tesDIr")
        
        def auth = auth.user()        
        int dot = fileName.lastIndexOf('.');
        def ext = fileName.substring(dot + 1);

        def attachment = new Attachment()
        attachment.fileName = fileName
        attachment.originalName = fileName
        attachment.fileType = ext
        attachment.purchaseOrder = PurchaseOrder.get(params.id)
        attachment.updatedBy = auth
        attachment.createdBy = auth

        if(!attachment.save(flush:true)){
            println "errors " + attachment.errors
        } 
        render([success: true] as JSON)
    }

    /** 
    insert Alocation PO per Brand 
    **/
    def insertPOAllocation(purchaseOrderInstance){
        def pppNumber=purchaseOrderInstance?.pppNumber
        def pppDetail = PppDetail.findAllByPppNumber(pppNumber)
        pppDetail.each{
            def poAllocation = new PurchaseOrderAllocation()
            poAllocation.purchaseOrder = purchaseOrderInstance
            poAllocation.pppNumber = pppNumber
            poAllocation.brand = it.brand
            poAllocation.save(flush:true)

        }

    }

    /** 
        Update T_cost_detail
    **/

    def updatePPPDetail(poAllocation){
        def poCommitted = PurchaseOrderAllocation.createCriteria().list(){
            eq('pppNumber',poAllocation?.pppNumber)
            eq('brand',poAllocation?.brand)
            projections{
                sum('value2')
            }
        }

        def tCostDetail = PppDetail.findByPppNumberAndBrand(poAllocation?.pppNumber,poAllocation?.brand)
        tCostDetail.poCommitted = poCommitted[0]
        tCostDetail.balanceWriteOff = tCostDetail?.costDetail - poCommitted[0]
        tCostDetail.save(flush:true)
    }

      /** 
        Update T_cost_detail
    **/

    def updatePPPDetail2(po){
        def poCommitted = PurchaseOrder.createCriteria().list(){
            eq('pppNumber',po?.pppNumber)
            eq('brand',po?.brand)
            ne('state','Rejected')
        }

        Float total = 0 
        poCommitted.each{
            total = total + it.total
        }    

        def tCostDetail = PppDetail.findByPppNumberAndBrand(po?.pppNumber,po?.brand)
        tCostDetail.poCommitted = (total/po.rate).round(2)
        tCostDetail.balanceWriteOff = (tCostDetail?.costDetail - (total/po.rate)).round(2)
        tCostDetail.save(flush:true)
    }

    def getPPPHead(detail,params){

        def sql = " from PppPhilippine as p "
            sql += "where p.number LIKE '%${detail.pppNumber}%'"   
            if(params.countryId){
             sql += " AND p.country LIKE '%${params.countryId}%'"   
            }
            
            if(params.lobId){
             sql += " AND p.lob LIKE '%${params?.lobId}%' "   
            }

            if(params.requestor){
              sql += " AND p.requestor LIKE '%${params?.requestor}%' "      
            }      
            
            if(params.year){
               sql += "AND year(p.pppDate) = ${params.year} "     
            }
            if(params.month){
               sql += "AND month(p.pppDate) = ${params.month} "     
            }
            sql += "order by p.pppDate"


        return sql
    }

}
