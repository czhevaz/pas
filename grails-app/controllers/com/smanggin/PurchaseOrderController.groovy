package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PurchaseOrderController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderController {

   
    def baseCurrency = Currency.findByBaseCurrencyAndActive(true,'Yes')

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrder.createCriteria().list(params){}
        [purchaseOrderInstanceList: results, purchaseOrderInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderInstance: new PurchaseOrder(params)]
    }

    def save() {
        def purchaseOrderInstance = new PurchaseOrder(params)
        if(params.pppNumber){
        	def domainClassName = "com.smanggin." + session.domainPPP
    		def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        	def ppp = domainClassInstance.findByNumber(params.pppNumber)
        	purchaseOrderInstance.number = ppp.number
        	purchaseOrderInstance.country = ppp.country
        	purchaseOrderInstance.lob = ppp.lob
        	purchaseOrderInstance.brand = ppp.brand
        	purchaseOrderInstance.requestor = ppp.requestor
        	purchaseOrderInstance.pppCost = ppp.pppCost
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
        }

        purchaseOrderInstance.triggerDomain = session.domainPPP

        purchaseOrderInstance.state = 'Draft'

        if (!purchaseOrderInstance.save(flush: true)) {
            render(view: "create", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.id])
        redirect(action: "show", id: purchaseOrderInstance.id)
    }

    def show() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)


        if (!purchaseOrderInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        def domainClassName = "com.smanggin." + session?.domainPPP
    	def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz
        def pppInstance = domainClassInstance.findByNumber(purchaseOrderInstance.pppNumber)

        [purchaseOrderInstance: purchaseOrderInstance,pppInstance:pppInstance]
    }

    def edit() {
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrder.label', default: 'PurchaseOrder'), params.id])
            redirect(action: "list")
            return
        }

        def domainClassName = "com.smanggin." + session.domainPPP
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
        
        if(params.comment){
        	
        	def logChatInstance =new PurchaseOrderComment()
        	logChatInstance.description=params.comment
        	logChatInstance.createdBy = auth.user()
        	logChatInstance.purchaseOrder =purchaseOrderInstance
        	logChatInstance.save()
        }


        if (!purchaseOrderInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderInstance: purchaseOrderInstance])
            return
        }

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
    	
         def domainClassName = "com.smanggin." + session.domainPPP
    	def domainClassInstance = grailsApplication.getDomainClass(domainClassName).clazz 
        if(params.masterField){
            def c = PurchaseOrder.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.search){
         
            def brand = Brand.findByCode(params?.brandId)
            def country = Country.findByName(params?.countryId)
            //def requestor = User.get(params?.requestorId)
            /*def sql = "FROM Ppp "
            if(params.month!=''){
                sql += "WHERE MONTH(pppDate)=?"+params.month
            }

            def tes = Ppp.executeQuery(sql)
            println "tes" + tes*/
            def results = domainClassInstance.createCriteria().list(){
            	//eq("country",)
            	eq("country",country)
            	eq("lob",params?.lobId)    
                eq("brand",brand?.code)  
                if(params.requestor) {
                    eq("requestor",params.requestor)    
                }
                
                
            }
  
            render results as JSON
        }else if(params.pppNumber){
        	def results = domainClassInstance.findByNumber(params.pppNumber)

            render results as JSON
        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
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
}
