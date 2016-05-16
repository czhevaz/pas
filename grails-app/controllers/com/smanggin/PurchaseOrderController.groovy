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

    def printService 
    def fileUploadService
    def globalService       
    def baseCurrency = Currency.findByBaseCurrencyAndActive(true,'Yes')


    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        session.trType = null
        
        def user = User.findByLogin(session.user)
        params.order = params.order ?: 'desc' 
        params.sort = params.sort ?: 'dateCreated' 
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def poApprover = PurchaseOrderApprover.findAllByApprover(user)
        def results = PurchaseOrder.createCriteria().list(params){
            
            /*if(user?.role != 'LOB'){
                or{
                    eq('createdBy',user?.login)
                    eq('mustApprovedBy',user?.login)    
                    eq('rejectedBy',user.login)
                    if(poApprover?.size() > 0){
                        'in'('id',poApprover?.purchaseOrder?.id)    
                    }
                } 
            }*/

            if(params.state){
                eq('state',params.state)
                if(params.state == "Waiting Approval"){
                    eq('mustApprovedBy',user?.login)
                    
                }

                if(params.state == "Rejected"){
                 or{
                    eq('createdBy',user?.login)
                    eq('rejectedBy',user?.login)
                 }   
                    

                }

                if (params.state == "Approved") {
                    or{
                        eq('createdBy',user?.login)    
                        if(poApprover?.size() > 0){
                            'in'('id',poApprover?.purchaseOrder?.id)    
                        }
                        
                    }
                }
            }else{
                or{
                    eq('createdBy',user?.login)
                    eq('mustApprovedBy',user?.login)    
                    eq('rejectedBy',user.login)
                    if(poApprover?.size() > 0){
                        'in'('id',poApprover?.purchaseOrder?.id)    
                    }
                }   
            }
            
        }

        [purchaseOrderInstanceList: results, purchaseOrderInstanceTotal: results.totalCount]
    }

    def create() { 
        
        [purchaseOrderInstance: new PurchaseOrder(params) ,baseCurrency:baseCurrency]
    }

    def save() {
        
        def purchaseOrderInstance = new PurchaseOrder(params)
        
        def country = Country.findByName(params.country)
        def domainPPP = country?.domainPPP

        if(params.pppNumber){
            
        	def domainClassName = "com.smanggin." + domainPPP
    		def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        	def ppp = domainClassInstance.findByNumber(params.pppNumber)
            def pppDetail    = PppDetail.findAllByPppNumberAndBrand(params.pppNumber,params?.brand?.id)

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
        purchaseOrderInstance.createdBy = session.user
        purchaseOrderInstance.state = 'Draft'

        def approvals = globalService.getApprovals(purchaseOrderInstance)  
        /*if (purchaseOrderInstance.transactionGroup?.transactionType?.code =="PONP") {
            approvals = true    
        } */     
        
        if(approvals?.size() > 0){
            if (!purchaseOrderInstance.save(flush: true)) {
                println "<<<<<<< errors >>>>>> " + purchaseOrderInstance.errors
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
        map.put('remainCreditLimit',pppDetail[0]?.remainCreditLimit)
        map.put('ammountTotalPPP',pppInstance?.pppCost)
        map.put('remainCreditLimitTotalPPP',purchaseOrderInstance?.pppRemain)


        def isEdit = false
        if(purchaseOrderInstance.state == "Waiting Approval"){
            def approver1 = globalService?.getPOApproverBySeq(purchaseOrderInstance,1)
           
            if(approver1?.login == session.user){
                isEdit = true       
            }
            
        }else if(purchaseOrderInstance.state == "Draft"){
            if(purchaseOrderInstance.createdBy == session.user){
                isEdit = true 
            }
        }

        
        
        [purchaseOrderInstance: purchaseOrderInstance,pppInstance:map,pppDetails:pppDetails,isEdit:isEdit]
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
        map.put('remainCreditLimit',pppDetail[0]?.remainCreditLimit)
        map.put('ammountTotalPPP',pppInstance?.pppCost)
        map.put('remainCreditLimitTotalPPP',pppInstance?.remainCreditLimit)
        
        def isEdit = false
        if(purchaseOrderInstance.state == "Waiting Approval"){
            def approver1 = globalService?.getPOApproverBySeq(purchaseOrderInstance,1)
           
            if(approver1.login == session.user){
                isEdit = true       
            }
            
        }else if(purchaseOrderInstance.state == "Draft"){
            if(purchaseOrderInstance.createdBy == session.user){
                isEdit = true 
            }
        }

        

        [purchaseOrderInstance: purchaseOrderInstance,pppInstance:map,pppDetails:pppDetails,isEdit:isEdit,baseCurrency :baseCurrency]
    }

    def update() {
      //  println "<==========================update=====================>" + params
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
                render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance],baseCurrency :baseCurrency)
                return
            }
        }

        purchaseOrderInstance.properties = params
        purchaseOrderInstance.updatedBy = session.user
        purchaseOrderInstance.lastUpdated = new Date()
        //savePoComment(purchaseOrderInstance,params)

        if (!purchaseOrderInstance.save(flush: true)) {
           // println "errrrr" + purchaseOrderInstance.errors
            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance],baseCurrency :baseCurrency)
            return
        }


        //insertTOPOBalance(purchaseOrderInstance)


		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
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
        //println " params jsave "+ params
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
        if(params.id){

        }
        if(params.pppNumber){
            purchaseOrderInstance.pppNumber = params.pppNumber
            purchaseOrderInstance.lob = params.lobName
            purchaseOrderInstance.brand = params.brandName
            purchaseOrderInstance.requestor = params.requestorName
            purchaseOrderInstance.pppCost = params.amount?.toFloat()
                    
        }
        
        def approvals = globalService.getApprovals(purchaseOrderInstance)
        
        if(approvals.size() > 0){
            if (!purchaseOrderInstance.save()) {
                render([success: false, messages: purchaseOrderInstance.errors] as JSON)
                return
            }

            def getApprovals = PurchaseOrderApprover.findAllByPurchaseOrder(purchaseOrderInstance)
            
            getApprovals.each{
                it.delete()
            }

        /* insert Po Approver*/    
            
             approvals.each{
                def poApprover = new PurchaseOrderApprover()
                poApprover.purchaseOrder = purchaseOrderInstance
                poApprover.noSeq = it.noSeq
                poApprover.approver = it.approver
                poApprover.country = Country.findByName(purchaseOrderInstance?.country)
                poApprover.status = 0
                poApprover.approvalDetail = it
                poApprover.save(flush:true)
            }
                        
            render([success: true, purchaseOrderInstance:purchaseOrderInstance,poApprover:purchaseOrderInstance?.purchaseOrderApprovers] as JSON)
        }else{
            render([success: false, purchaseOrderInstance:purchaseOrderInstance] as JSON)
        }
            
    }

    def jlist() {
        println " params " + params    	
        if(params.masterField){
            def c = PurchaseOrder.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.search){
           /* filter PO for searh PPP in Create PO*/
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
            
            def sqltes = getPPPHead(null,params,country?.domainPPP)
            def domaintes= domainClassInstance.findAll(sqltes)
            println "sqltes" + domaintes.size()
            domaintes.each{
               // println "number" + it.number
                def pppNumber =  it.number
                def  pppDetails2 = PppDetail.createCriteria().list(){
                    eq('pppNumber',pppNumber)
                    if(params?.brandId){
                        eq('brand',brand?.code)
                    }
                    
                }

                //println "pppDetails2:  " + pppDetails2.size() + " >>>> " +it.number

                if(pppDetails2?.size() > 0){
                    pppDetails2.each{ detail ->
                        def map = [:]
                       if(detail.remainCreditLimit > 0 && it?.remainCreditLimit > 0){
                        map.put('requestorName',it?.requestor)
                        map.put('pppNumber',it?.number)
                        map.put('pppDate',it?.pppDate?.format('yyyy-MM-dd'))
                        map.put('pppDescription',it?.pppProgram)
                      //  map.put('countryName',pppHead[0]?.country?.name)
                        map.put('lobName',it?.lob)
                        map.put('brandName',detail?.brand)
                       // map.put('state',pppHead[0]?.state)
                        map.put('amount',detail.costDetail)
                        map.put('remainCreditLimit',detail.remainCreditLimit)
                        map.put('ammountTotalPPP',it?.pppCost)
                        map.put('remainCreditLimitTotalPPP',it?.remainCreditLimit)
                        results.push(map)
                        }
                        //println "map " + map
                        
                    }
                }

                 //println "pppDetails2" + pppDetails2.size()
            }

            /*pppDetails.each{
                def map = [:]
                
                def sql = getPPPHead(it,params,country?.domainPPP)
                def pppHead = domainClassInstance.findAll(sql)
               //def pppHead = getPPPHead2
                // println "sql" + sql.size()
                if(pppHead?.size() > 0){
                    if(it.remainCreditLimit > 0 && pppHead[0]?.remainCreditLimit > 0){
                        map.put('requestorName',pppHead[0]?.requestor)
                        map.put('pppNumber',pppHead[0]?.number)
                        map.put('pppDate',pppHead[0]?.pppDate?.format('yyyy-MM-dd'))
                        map.put('pppDescription',pppHead[0]?.pppProgram)
                      //  map.put('countryName',pppHead[0]?.country?.name)
                        map.put('lobName',pppHead[0]?.lob)
                        map.put('brandName',it?.brand)
                       // map.put('state',pppHead[0]?.state)
                        map.put('amount',it.costDetail)
                        map.put('remainCreditLimit',it.remainCreditLimit)
                        map.put('ammountTotalPPP',pppHead[0]?.pppCost)
                        map.put('remainCreditLimitTotalPPP',pppHead[0]?.remainCreditLimit)
                        //println "map " + map
                        results.push(map)
                    }
                }
                
            }*/

            
            def list=[:]
            list.put('sEcho','')
            list.put('iTotalRecords',domaintes?.size())
            list.put('iTotalDisplayRecords',domaintes?.size())
            list.put('aaData',results)
            
            
            render list as JSON

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
            /* filter PO For DAshboard*/

            println params.state + " tessdsdsd"
            def user = User.findByLogin(session.user)
            def poApprover = PurchaseOrderApprover.findAllByApprover(user)
            def c = PurchaseOrder.createCriteria()
            def results = c.list {
                eq('state',params.state)

                if(params.state == "Waiting Approval"){
                    eq('mustApprovedBy',user?.login)
                    
                }

                if(params.state == "Rejected"){
                     or{
                        eq('createdBy',user?.login)
                        eq('rejectedBy',user?.login)
                     }   
                     eq('year',globalService.getCurrentYear())       

                }

                if (params.state == "Approved") {
                    or{
                        eq('createdBy',user?.login)    
                        if(poApprover?.size() > 0){
                            'in'('id',poApprover?.purchaseOrder?.id)    
                        }
                        
                    }
                    eq('year',globalService.getCurrentYear())
                }

                
            }
            render results as JSON
        }else if(params?.country){
            /* filter PO for RFP detail */
            def c = PurchaseOrder.createCriteria()
            def results = c.list {
                eq('country',params.country)
                eq('supplier',Supplier.findByCode(params.supplierCode))  
                currency1{
                    eq('code',params.currencyCode)
                }
                eq('state','Approved')
            }
            render results as JSON
        }else if(params?.searchPO){
            println "<<<<<<<<< searchPO >>>>>>>>>> "
            /* filter PO for RFP detail */
            def c = PurchaseOrder.createCriteria()
            
            def results = c.list {
                eq('country',params.countryPO)
                eq('supplier',Supplier.findByCode(params.supplierCode))  
                currency1{
                    eq('code',params.currencyCode)
                }
                eq('state','Approved')
            }

            def listPO = []

            results.each{
                if(it.PORemain1 > 0){
                    def map = [:]
                    map.put('number',it.number)
                    map.put('reasonforInvestment',it.reasonforInvestment)
                    map.put('purchaseOrderDate',it.purchaseOrderDate?.format('dd-MM-yyyy'))
                    map.put('supplierName',it.supplier?.name)
                    map.put('purchaseOrderId',it.id)
                    map.put('pppNumber',it.pppNumber)
                    map.put('createdBy',it.createdBy)
                    map.put('total',it.total)
                    map.put('total2',(it.total/it.rate).round(2))
                    map.put('poRemain1',it.PORemain1)
                    map.put('poRemain2',it.PORemain2)
                    map.put('country',it.country)
                    map.put('lob',it.lob)
                    map.put('brand',it.brand)
                    map.put('currency1',it.currency1?.code)

                    listPO.push(map)
                }
                
            }

            def list=[:]
            list.put('sEcho','')
            list.put('iTotalRecords',results?.size())
            list.put('iTotalDisplayRecords',results?.size())
            list.put('aaData',listPO)

            println " list " + list

            render list as JSON
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
        println "params po Waiting >>>>>>>> " + params
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
                render(view: "show", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }
        }
        
        def attachment = Attachment.findByPurchaseOrder(purchaseOrderInstance)

        if (purchaseOrderInstance?.transactionGroup?.transactionType?.code == 'PONP' && !attachment) {
            
           
            
                flash.error = message(code: 'default.have.attachment.failure', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
                redirect(action: "show", id: purchaseOrderInstance.id)  
           
        }else{
            purchaseOrderInstance.properties = params
            def mustApprovedBy = globalService.getPOApproverBySeq(purchaseOrderInstance,1)
            purchaseOrderInstance.reasonforInvestment= params.reasonforInvestment
            
               
            purchaseOrderInstance.state = 'Waiting Approval'    
            if(mustApprovedBy){
                purchaseOrderInstance.mustApprovedBy = mustApprovedBy?.login
            }
            

                
            if (!purchaseOrderInstance.save(flush: true)) {
                

                render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
                return
            }

            
            savePoComment(purchaseOrderInstance,params)/* --insert TO PO comment */

            sendApproveEmail(purchaseOrderInstance) /* --Send Email */
            
            saveNotif(purchaseOrderInstance,mustApprovedBy?.login)/* --insert TO Notif */
            
            insertTOPOBalance(purchaseOrderInstance)

                
            flash.message = message(code: 'default.waitingApproved.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
                
            
            redirect(action: "show", id: purchaseOrderInstance.id)    
        }
        
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
        
        def user = User.findByLogin(session.user)

        purchaseOrderInstance.approvedBy = session.user
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
            
        }    
        
        savePoComment(purchaseOrderInstance,params)/* --insert TO PO comment */

        insertTOPOBalance(purchaseOrderInstance)
        
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
        purchaseOrderInstance.dateReject = new Date()
        purchaseOrderInstance.rejectedBy = auth.user()
       
        
        purchaseOrderInstance.state = 'Rejected'    
        
        savePoComment(purchaseOrderInstance,params) /* --insert TO PO comment */

        if (!purchaseOrderInstance.save(flush: true)) {

            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

        /* update Po Approver*/
        def user = User.findByLogin(session.user)
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
    Action WriteOff
    **/
    def actionWriteOff() {
        
        
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
         
        purchaseOrderInstance.dateWO = new Date()
        purchaseOrderInstance.woBy = session.user
        purchaseOrderInstance.isWriteOff = true
        
        if(purchaseOrderInstance.woValue1 == purchaseOrderInstance.PORemain1){
            purchaseOrderInstance.state = "Closed"
        }
       
        
       
        if (!purchaseOrderInstance.save(flush: true)) {

            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

        /* insert to write Off history */

        def poWO = new PurchaseOrderWriteOff()
        poWO.purchaseOrder = purchaseOrderInstance
        poWO.woValue1 = purchaseOrderInstance.woValue1
        poWO.woValue2 = purchaseOrderInstance.woValue2
        poWO.woBy = session.user
        poWO.dateWO = new Date()
        poWO.woNotes = purchaseOrderInstance.woNotes

        if(!poWO.save(flush:true)){
            println " po writeOff errors " + poWO.errors
        }

        insertTOPOBalanceWO(purchaseOrderInstance,poWO)

        def totalpoWO = PurchaseOrderWriteOff.createCriteria().list(){
            eq('purchaseOrder', purchaseOrderInstance)
            projections{
                sum('woValue2')
            }           
        }

        def tCostDetail = PppDetail.findByPppNumberAndBrand(purchaseOrderInstance?.pppNumber,purchaseOrderInstance?.brand)
        tCostDetail.poCommitted = tCostDetail.costDetail - tCostDetail.remainCreditLimit
        tCostDetail.balanceWriteOff = tCostDetail.remainCreditLimit
        tCostDetail.save(flush:true)
        
        flash.message = message(code: 'default.writeOff.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.number])
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

        def authUser = User.findByLogin(session.user )
        def sender = authUser?.email 

        Outbox.newEmail( subject,  msg,  sender,  receiver, null, null, null, 'PurchaseOrder',purchaseOrderInstance.id)

        println ">>>>>> SENDING APPROVED MAIL <<<"

    }/* send approve email */


    /**
    save PoComment
    **/  
    def savePoComment(purchaseOrderInstance,params){
        def user = User.findByLogin(session.user)
        if(params.comment){
            
            def logChatInstance =new PurchaseOrderComment()
            logChatInstance.description=params.comment
            logChatInstance.createdBy = user.login
            logChatInstance.purchaseOrder =purchaseOrderInstance
            logChatInstance.save()
        }
    }/* save PoComment */


    /**
    SaveNotif
    **/  
    def saveNotif(purchaseOrderInstance,forUser){
        def user = User.findByLogin(auth.user())
        def notif = new Notif()
        notif.docName = "PurchaseOrder"
        notif.docId = purchaseOrderInstance.id
        notif.docNumber = purchaseOrderInstance.number
        notif.state = purchaseOrderInstance.state
        notif.forUser = forUser
        notif.createdBy = user.login
        notif.isNew = true
        notif.save()
        
    }/* SaveNotif */

    
    /**
    upload
    **/  
    def upload(){
        
        
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request
        CommonsMultipartFile file =(CommonsMultipartFile) mpr.getFile("files")
        def dir= "upload/purchaseOrder"
        
        def fileName = fileUploadService.uploadFileAjax(file,dir,params.id)
        
        def auth = auth.user()        
        int dot = fileName.lastIndexOf('.');
        def ext = fileName.substring(dot + 1);

         
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

    def getPPPHead(detail,params,domainPPP){

        def sql = " from ${domainPPP} as p where"

          
            if(params.countryId){
             sql += " p.country LIKE '%${params.countryId}%'"   
            }
            

            if(params.lobId){
             sql += " AND p.lob LIKE '%${params?.lobId}%' "   
            }

            if(params.requestorId){
              sql += " AND p.requestor LIKE '%${params?.requestorId}%' "      
            }
            
            if(params.year){
               sql += "AND year(p.pppDate) = ${params.year} "     
            }
            if(params.month){
                def month = globalService.monthInt(params.month)+1
               sql += "AND month(p.pppDate) = ${month} "     
            }

            if(detail){
                sql += "AND p.number LIKE '%${detail.pppNumber}%'  "       
            }

            sql +="AND p.state='Done'"

            sql += "order by p.pppDate"


        return sql
    }

    def getPPPHead2(domainInstance,params){
        def pppHead = domainClassInstance.createCriteria().list(params){
            if(params.countryId){
                eq('country',country)    
            }

            if(params.lobId){
                eq('lob',params.lobId)
            }  

            if(params.brandId){
                eq('brand',params.brandId)    
            }

            if(params.year){
                eq('year',params.year?.toInteger())       
            }

            if(params.month){
                def month = globalService.monthInt(params.month)+1
                eq('month',month)
            }

            eq('state', 'Done')
        }
        return pppHead
    }


    def insertTOPOBalance(purchaseOrderInstance){
        def poBalance = new PurchaseOrderBalance()
        poBalance.country = purchaseOrderInstance.country
        poBalance.purchaseOrder = purchaseOrderInstance
        poBalance.description =" insert when PO " + purchaseOrderInstance?.state
        poBalance.balance1 = purchaseOrderInstance.PORemain1?:0
        poBalance.currency1 = purchaseOrderInstance.currency1
        poBalance.balance2 = purchaseOrderInstance.PORemain2?:0
        poBalance.cost = purchaseOrderInstance.total?:0
        poBalance.cost2 = purchaseOrderInstance.total?(purchaseOrderInstance.total/purchaseOrderInstance.rate):0
        poBalance.pppNumber = purchaseOrderInstance.pppNumber
        poBalance.pppBalance = purchaseOrderInstance.pppRemainBrand
        poBalance.activities = purchaseOrderInstance.state
        if(!poBalance.save(flush:true)){
            println "poBalance " + poBalance.errors
        }
        return 

    }

    def insertTOPOBalanceWO(purchaseOrderInstance,poWO){
        def poBalance = new PurchaseOrderBalance()
        poBalance.country = purchaseOrderInstance.country
        poBalance.purchaseOrder = purchaseOrderInstance
        poBalance.description =" insert when PO  Write Off"
        poBalance.balance1 = purchaseOrderInstance.PORemain1?:0
        poBalance.currency1 = purchaseOrderInstance.currency1
        poBalance.balance2 = purchaseOrderInstance.PORemain2?:0
        poBalance.cost = poWO.woValue1?:0
        poBalance.cost2 = poWO.woValue2?:0
        poBalance.pppNumber = purchaseOrderInstance.pppNumber
        poBalance.pppBalance = purchaseOrderInstance.pppRemainBrand
        poBalance.activities = "Write Off"
        if(!poBalance.save(flush:true)){
            println "poBalance " + poBalance.errors
        }
        return         
    }


    def printPdf(){
        println "params " + params 
        def purchaseOrder = PurchaseOrder.get(params.printId)
        println "purchaseOrder" + purchaseOrder
        def trTypeCode = purchaseOrder?.transactionGroup?.transactionType?.code
        def filename = purchaseOrder?.number
        def file  = filename.replace("/","")
        
        def appSettingLogo = AppSetting.valueDefault('default_logo','KI_Logo2.jpg')
        def approver1 = PurchaseOrderApprover.findByPurchaseOrderAndNoSeq(purchaseOrder,1)
        def approver2 = PurchaseOrderApprover.findByPurchaseOrderAndNoSeq(purchaseOrder,2)
        
    
        
        StringBuilder routes = new StringBuilder();
                    routes.append("images/logo/")
                    routes.append(appSettingLogo);

        String absolutePath = getServletContext().getRealPath(routes.toString());

        def areaList = []
        def outletList=[]
        def attachmentList = []
        purchaseOrder?.purchaseOrderDetails?.each{
            areaList.push(it.coverageArea)
            outletList.push(it.outlet)

        }
        outletList.unique()
        areaList.unique();

        def attachments = Attachment.findAllByPurchaseOrder(purchaseOrder)
        attachments.each{
            attachmentList.push(it.originalName)
        }
        attachmentList.unique()

        params.put('area',areaList.join(','))
        params.put('outlet',outletList.join(','))
        params.put('attachment',attachmentList.join(','))
        params.put('approver1',approver1?.approver?.name)
        params.put('approver2',approver2?.approver?.name)
        params.put('companyName','Kalbe International '+ "${purchaseOrder?.country}"+ ' Pte. Ltd')
        params.put('image',absolutePath)
        params.put('po_id',purchaseOrder?.id)
        params.put('view',true)
        
        printService.print("PDF", request.getLocale(), response,params,trTypeCode,file)
    }

    def downloadExcel(){
        def purchaseOrder = PurchaseOrder.get(params.id.toLong())
        def trTypeCode = purchaseOrder?.transactionGroup?.transactionType?.code
        def filename = purchaseOrder.number
        def file  = filename.replace("/","")
        
        def appSettingLogo = AppSetting.valueDefault('default_logo','KI_Logo2.jpg')
        def approver1 = PurchaseOrderApprover.findByPurchaseOrderAndNoSeq(purchaseOrder,1)
        def approver2 = PurchaseOrderApprover.findByPurchaseOrderAndNoSeq(purchaseOrder,2)
        
        
        
        StringBuilder routes = new StringBuilder();
                    routes.append("images/logo/")
                    routes.append(appSettingLogo);

        String absolutePath = getServletContext().getRealPath(routes.toString());

        def areaList = []
        purchaseOrder?.purchaseOrderDetails?.each{
            areaList.push(it.coverageArea)
        }
        areaList.unique();

        params.put('area',areaList.join(','))
        params.put('approver1',approver1?.approver?.name)
        params.put('approver2',approver2?.approver?.name)
        params.put('companyName','Kalbe International '+ "${purchaseOrder?.country}"+ ' Pte. Ltd')
        params.put('image',absolutePath)
        params.put('po_id',purchaseOrder?.id)
        params.put('view',false)

        printService.print("XLS", request.getLocale(), response,params,trTypeCode,file)
    }

    /**
    BEGIN REPORT
    **/

     def report(){
    
        def views = params.type 
        //def yearList = globalService.yearList(params.domain,grailsApplication)
        def sortList = []
        def countryList = Country.createCriteria().list(){
            if(session.userRole != 'ALL'){
                eq('name',session.country)
            }
        }
        if(params.type == 'rfpTrackingSummary'){
            sortList = [
                [id:'rfp.number',value:'RFP No.'],
                [id:'rfp.createdBy',value:'Requestor'],
                [id:'rfp.note',value:'Note'],
                [id:'rfp.state',value:'Status'],
                [id:'rfp.rfpDate',value:'RFP Proposed Date'],
                [id:'rfp.mustApprovedBy',value:'Next Approval'],
            ]
        }

        if(params.type == 'poTrackingSummary'){
            sortList = [
                [id:'number',value:'PO No.'],
                [id:'createdBy',value:'Requestor'],
                [id:'reasonforInvestment',value:'PO purpose'],
                [id:'state',value:'Status'],
                [id:'purchaseOrderDate',value:'PO Proposed Date'],
                [id:'mustApprovedBy',value:'Next Approval'],
            ]
        }

        if(params.type == 'purchaseBalanceReport'){
            sortList = [
                [id:'number',value:'PO No.'],
                [id:'transactionGroup.transactionType.name',value:'PO Type'],
                [id:'createdBy',value:'Requestor'],
                [id:'reasonforInvestment',value:'PO purpose'],
                [id:'state',value:'Status'],
                
            ]   
        }

        if(params.type == 'pppBalanceReport' || params.type == 'pppBalanceHistory'){
            sortList = [
                [id:'pppNumber',value:'PPP No.'],
                [id:'pppBrand',value:'PPP Brand'],
                [id:'pppCost',value:'PPP Value'],
            ]   
        }
        

        render(view: "${views}",model:['sortList':sortList,'countryList':countryList])

    }

    def pppBalanceReport(){
        //println " params > " + params
        //println " params  ppp Balance report " + params 
        def country = Country.findByName(params.countryId)
        def domainClassName = "com.smanggin." + country?.domainPPP
        def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz 
        //println "domainClassInstance " + domainClassInstance
        //def sql = getPPPHead(null,params,country?.domainPPP)
        //params.order = params.order ?: 'asc' 
        //params.sort = params.sort ?: 'pppDate'

        def pppHead = domainClassInstance.createCriteria().list(){
            if(params.countryId){
                eq('country',country)    
            }

            if(params.lobId){
                eq('lob',params.lobId)
            }  

            /*if(params.brandId){
                eq('brand',params.brandId)    
            }*/

            if(params.year){
                eq('year',params.year?.toInteger())       
            }

            if(params.month){
                def month = globalService.monthInt(params.month)+1
                eq('month',month)
            }

        }

         
        

        def list=[] 

        pppHead.each{
            def pppNumber = it.number
            def pppDetail = PppDetail.createCriteria().list(){
                eq('pppNumber',pppNumber)
                if(params.brandId){
                    eq('brand',params.brandId)    
                }
                
            }

            if(pppDetail.size > 0 ){
                pppDetail.each{ detail -> 

                    def pos = PurchaseOrder.createCriteria().list(){
                        eq('pppNumber',detail.pppNumber)
                        eq('brand', ,detail.brand)
                    }
                   
                    def remain = detail.costDetail
                    if(pos.size() > 0){
                        def mapPPP = [:]
                        mapPPP.put('pppNumber',detail.pppNumber)  
                        mapPPP.put('pppCost',detail.costDetail) 
                        mapPPP.put('pppBrand',detail.brand) 

                        def listPO = []
                        pos.each{ po -> 
                           def poTotal2 = (po.total/po.rate).round(2)
                            remain = remain - poTotal2
                            def map=[:]
                            map.put('poId',po.id)
                            map.put('poNumber',po.number) 
                            map.put('poType',po.transactionGroup?.description) 
                            map.put('poState',po.state) 
                            map.put('pototal',poTotal2) 
                            map.put('poWO',totalWOperPO(po))
                            Float totalrfp = 0
                            if(po.state == 'Closed' && po.PORemain1 == 0){
                                totalrfp = po.PORemain2
                            }
                            map.put('poRfp',totalrfp.round(2))
                            Float endCost = 0
                            if(po.state != 'Rejected'){
                                endCost = poTotal2 - totalWOperPO(po) - totalrfp.round(2)
                            }
                            map.put('poRfp',totalrfp.round(2)) 
                            map.put('poEndCost',endCost.round(2))  
                            //println "totalWOperPO" + totalWOperPO(po)
                            listPO.push(map) 
                        }

                        mapPPP.put('pppBalance',detail.balanceWriteOff?detail.balanceWriteOff.round(2):detail?.costDetail) 

                        mapPPP.put('po',listPO)

                        list.push(mapPPP)
                        
                    }

                    /*def pbs = PurchaseOrderBalance.createCriteria().list(){
                        purchaseOrder{
                            eq('pppNumber',detail.pppNumber)
                            eq('brand', ,detail.brand)
                        }
                    }

                    if(pbs.size() > 0){
                        def mapPPP = [:]
                        mapPPP.put('pppNumber',detail.pppNumber)  
                        mapPPP.put('pppCost',detail.costDetail) 
                        mapPPP.put('pppBrand',detail.brand) 

                        def listPO = []
                        pbs.each{ pb -> 
                           def poTotal2 = (pb.purchaseOrder?.total/pb.purchaseOrder?.rate).round(2)
                            //remain = remain - poTotal2
                            def map=[:]
                            map.put('poNumber',pb.purchaseOrder?.number) 
                            map.put('poType',pb.purchaseOrder?.transactionGroup?.description) 
                            map.put('poState',pb.purchaseOrder?.state) 
                            map.put('pototal',poTotal2) 
                            map.put('pppBalance',pb.pppBalance)

                            listPO.push(map) 
                        }

                        mapPPP.put('po',listPO)

                        list.push(mapPPP)
                        
                    }

                    */
                }
            }
            
           
        }

        if(params.order == 'asc'){
            list.sort { 
                it."$params.sort"
            }    
        }

        if(params.order == 'desc'){
            list.sort { 
                it."$params.sort"
            }
            list.reverse(true)
        }        
        
        render([success: true,results:list] as JSON)

    }//End pppBalanceReport

    def totalWOperPO(po){
        def poWO= PurchaseOrderWriteOff.createCriteria().list(){
            eq('purchaseOrder',po)
            projections{
                sum('woValue2')
            }
        }
        Float total=0
        if(poWO.size() > 0)
        {
            total = poWO[0]?:0 
        }

        return total.round(2)

    }

    def purchaseBalanceReport(){
        println 'params'  + params
        def purchaseOrders= PurchaseOrder.createCriteria().list(params){
            if(params.countryId){
                eq('country',params.countryId)    
            }

            if(params.lobId){
                eq('lob',params.lobId)
            }  

            if(params.brandId){
                eq('brand',params.brandId)    
            }

            if(params.year){
                eq('year',params.year?.toInteger())       
            }

            if(params.month){
                def month = globalService.monthInt(params.month)+1
                eq('month',month)
            }

            if(params.status != 'All'){
                eq('state',params.status)
            }

            //order('purchaseOrderDate','desc')

        }

        def list = []
        purchaseOrders.each{
           
            def poBalanceds = it.purchaseOrderBalances.sort { 
                it.dateCreated
            }
           
            def mappo =[:]
            def listRfp = []
            if(poBalanceds.size()){ 
                
                mappo.put('poId',it.id)  
                mappo.put('poNumber',it.number)  
                mappo.put('poCost',(it.total/it.rate).round(2)) 
                mappo.put('poType',it.transactionGroup?.transactionType?.name) 
                mappo.put('poPurposed',it.reasonforInvestment?:'')
                mappo.put('poStatus',it.state) 
                poBalanceds.each{ detail ->
                    def mapRfp =[:]
                    mapRfp.put('rfpNumber',detail.refference?:'')
                    mapRfp.put('rfpDesc',detail.description?:'')

                    mapRfp.put('rfpCurrency',detail.currency1?detail.currency1?.code:'') 
                    mapRfp.put('rfpCost',detail.cost2?.round(2)?:'') 
                    mapRfp.put('poBalanced',detail.balance2.round(2)?:'') 
                    listRfp.push(mapRfp)

                }
                mappo.put('rfp',listRfp)
                list.push(mappo)
            }

            
        }

        render([success: true,results:list] as JSON)

    } // End purchaseBalanceReport

    def poTrackingSummary(){
      
        def purchaseOrders= PurchaseOrder.createCriteria().list(params){
            if(params.countryId){
                eq('country',params.countryId)    
            }

            if(params.lobId){
                eq('lob',params.lobId)
            }  

            if(params.brandId){
                eq('brand',params.brandId)    
            }

            if(params.year){
                eq('year',params.year?.toInteger())       
            }

            if(params.month){
                def month = globalService.monthInt(params.month)+1
                eq('month',month)
            }

            if(params.pppNumber){
                eq('pppNumber',params.pppNumber)
            }

             if(params.status != 'All'){
                eq('state',params.status)
            }

            //order('purchaseOrderDate','desc')

        }

        def list=[]
        purchaseOrders.each{
            def date = it.purchaseOrderDate.format('EEEEE dd MMMMM yyyy')
            def mappo =[:]
            mappo.put('poId',it.id)  
            mappo.put('poNumber',it.number)  
            mappo.put('poCost',(it.total/it.rate).round(2)) 
            mappo.put('poType',it.transactionGroup?.transactionType?.name)
            mappo.put('poDescription',it.reasonforInvestment?:'')
            mappo.put('poStatus',it.state)
            mappo.put('poCreatedBy',it.createdBy)
            mappo.put('poMustApprovedBy',it.mustApprovedBy?:'')
            mappo.put('podate',date)  
            list.push(mappo)
               
        }

        render([success: true,results:list] as JSON)

    }

    def rfpTrackingSummary(){
        println " rfp poTrackingSummary " + params
                
        def rfpDetails = RfpDetail.createCriteria().list(params){
            
            if(params.countryId){
                rfp{
                    eq('country',params.countryId)        

                    if(params.year){
                        eq('year',params.year?.toInteger())       
                    }

                    if(params.month){
                        def month = globalService.monthInt(params.month)+1
                        eq('month',month)
                    }
                      // order("rfpDate", "desc")
                }    
            }

            if(params.poNumber){
                purchaseOrder{
                    eq('number',params.poNumber)    
                }    
            }
        }

        def list=[]
        rfpDetails.each{
            def date = it.rfp?.rfpDate.format('EEEEE dd MMMMM yyyy')
            def map=[:]
            map.put('rfpNumber',it.rfp?.number)
            map.put('rfpCreatedBy',it.rfp?.createdBy)
            map.put('rfpNote',it.rfp?.note?:'')
            map.put('rfpCost',it.rfp?.totalRFP2.round(2))
            map.put('poNumber',it.purchaseOrder?.number)
            map.put('poValue',it.totalCost2.round(2))
            map.put('rfpDate',date)
            map.put('rfpStatus',it.rfp?.state)
            map.put('rfpMustApprovedBy',it.rfp?.mustApprovedBy?:'')
            list.push(map)
        }

        render([success: true,results:list] as JSON)
    }


    def pppBalanceHistory(){
        
        def country = Country.findByName(params.countryId)
        def domainClassName = "com.smanggin." + country?.domainPPP
        def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz 
        //println "domainClassInstance " + domainClassInstance
        //def sql = getPPPHead(null,params,country?.domainPPP)
        
        def pppHead = domainClassInstance.createCriteria().list(){
            if(params.countryId){
                eq('country',country)    
            }

            if(params.lobId){
                eq('lob',params.lobId)
            }  

            if(params.brandId){
                eq('brand',params.brandId)    
            }

            if(params.year){
                eq('year',params.year?.toInteger())       
            }

            if(params.month){
                def month = globalService.monthInt(params.month)+1
                eq('month',month)
            }


        }

        params.order = params.order ?: 'asc' 
        params.sort = params.sort ?: 'dateCreated' 
        
        def list=[] 
        pppHead.each{
            def pppDetail = PppDetail.findAllByPppNumber(it.number)

            if(pppDetail.size > 0 ){
                pppDetail.each{ detail -> 


                    def pbs = PurchaseOrderBalance.createCriteria().list(){
                        eq('pppNumber',detail.pppNumber)
                    }

                    if(pbs.size() > 0){
                        def mapPPP = [:]
                        mapPPP.put('pppNumber',detail.pppNumber)  
                        mapPPP.put('pppCost',detail.costDetail) 
                        mapPPP.put('pppBrand',detail.brand) 

                        def listPO = []
                        pbs.each{ pb -> 
                           
                            //remain = remain - poTotal2
                            def map=[:]
                            map.put('poId',pb.purchaseOrder?.id) 
                            map.put('poNumber',pb.purchaseOrder?.number) 
                            map.put('poType',pb.purchaseOrder?.transactionGroup?.description) 
                            map.put('poState',pb.purchaseOrder?.state) 
                            map.put('pototal',pb.cost2?pb.cost2.round(2):0)
                            map.put('poDescription',pb.description) 
                            map.put('pppBalance',pb.pppBalance?pb.pppBalance.round(2):0)

                            listPO.push(map) 
                        }

                        mapPPP.put('po',listPO)

                        list.push(mapPPP)
                        
                    }
                }
            }
            
           
        }        

        if(params.order == 'asc'){
            list.sort { 
                it."$params.sort"
            }    
        }

        if(params.order == 'desc'){
            list.sort { 
                it."$params.sort"
            }
            list.reverse(true)
        }        

        render([success: true,results:list] as JSON)

    }//End pppBalanceReport

    /*---------------------
    END REport
    --------------------------*/

    def pppAutoComplete(){
        
        def query = {
            or {
                like("number", "%${params.term}%") // term is the parameter send by jQuery autocomplete
            }

            country{
                eq('name',params.country)
            }
        }

        def country = Country.findByName(params.country)
        def domainClassName = "com.smanggin." + country.domainPPP
        def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz

        def clist = domainClassInstance.createCriteria().list(query) // execute  to the get the list of companies
        def custList = [] // to add each company details

        clist.each {
            def customer = [:] // add to map. jQuery autocomplete expects the JSON object to be with id/label/value.
            
            customer.put("label", it.number)
            customer.put("value", it.number)
            
            
            custList.add(customer) // add to the arraylist
        }

       // println " custList ppp " + custList
        
        render custList as JSON
    }

    def poAutoComplete(){
        
        def query = {
            or {
                like("number", "%${params.term}%") // term is the parameter send by jQuery autocomplete
            }

            
            eq('country',params.country)
            
        }
        
        def clist = PurchaseOrder.createCriteria().list(query) // execute  to the get the list of companies
        def custList = [] // to add each company details

        clist.each {
            def customer = [:] // add to map. jQuery autocomplete expects the JSON object to be with id/label/value.
            
            customer.put("label", it.number)
            customer.put("value", it.number)
            
            
            custList.add(customer) // add to the arraylist
        }

       // println " custList ppp " + custList
        
        render custList as JSON
    }


    def getYear(){

        def country = Country.findByName(params.country)
        def domain = country.domainPPP

        if(params.domain){
            domain = params.domain
        }

        def yearList = globalService.yearList(domain,grailsApplication,country)

        render yearList as  JSON
    }
}
