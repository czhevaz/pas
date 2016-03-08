package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PurchaseOrderDetailController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrderDetail.createCriteria().list(params){}
        [purchaseOrderDetailInstanceList: results, purchaseOrderDetailInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderDetailInstance: new PurchaseOrderDetail(params)]
    }

    def save() {
        def purchaseOrderDetailInstance = new PurchaseOrderDetail(params)
        if (!purchaseOrderDetailInstance.save(flush: true)) {
            render(view: "create", model: [purchaseOrderDetailInstance: purchaseOrderDetailInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), purchaseOrderDetailInstance.id])
        redirect(action: "show", id: purchaseOrderDetailInstance.id)
    }

    def show() {
        def purchaseOrderDetailInstance = PurchaseOrderDetail.get(params.id)
        if (!purchaseOrderDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderDetailInstance: purchaseOrderDetailInstance]
    }

    def edit() {
        def purchaseOrderDetailInstance = PurchaseOrderDetail.get(params.id)
        if (!purchaseOrderDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderDetailInstance: purchaseOrderDetailInstance]
    }

    def update() {
        def purchaseOrderDetailInstance = PurchaseOrderDetail.get(params.id)
        if (!purchaseOrderDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderDetailInstance.version > version) {
                purchaseOrderDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail')] as Object[],
                          "Another user has updated this PurchaseOrderDetail while you were editing")
                render(view: "edit", model: [purchaseOrderDetailInstance: purchaseOrderDetailInstance])
                return
            }
        }

        purchaseOrderDetailInstance.properties = params

        if (!purchaseOrderDetailInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderDetailInstance: purchaseOrderDetailInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), purchaseOrderDetailInstance.id])
        redirect(action: "show", id: purchaseOrderDetailInstance.id)
    }

    def delete() {
        def purchaseOrderDetailInstance = PurchaseOrderDetail.get(params.id)
        if (!purchaseOrderDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseOrderDetailInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def purchaseOrderDetailInstance = (params.id) ? PurchaseOrderDetail.get(params.id) : new PurchaseOrderDetail()
        
        if (!purchaseOrderDetailInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (purchaseOrderDetailInstance.version > version) {
                    purchaseOrderDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail')] as Object[],
                              "Another user has updated this PurchaseOrderDetail while you were editing")
                    render([success: false, messages: purchaseOrderDetailInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        purchaseOrderDetailInstance.properties = params


                       
        if(params.purchaseOrderId){
        	purchaseOrderDetailInstance.purchaseOrder = PurchaseOrder.get(params.purchaseOrderId)
        }

        if(params.supplierId){
        	purchaseOrderDetailInstance.supplier = Supplier.get(params.supplierId)
        }

        if(params.currencyCode){
            purchaseOrderDetailInstance.currency1 = Currency.findByCode(params.currencyCode)
            purchaseOrderDetailInstance.purchaseOrder.currency1 = purchaseOrderDetailInstance.currency1
            purchaseOrderDetailInstance.purchaseOrder.rate = purchaseOrderDetailInstance.rate
        }

        def check = checkLimit(purchaseOrderDetailInstance.purchaseOrder,params.totalCost)

        if(check){
            if (!purchaseOrderDetailInstance.save(flush: true)) {
                println "errors" + purchaseOrderDetailInstance.errors
                render([success: false, messages: purchaseOrderDetailInstance.errors] as JSON)
                return
            }
                            
            render([success: true] as JSON)    
        }else{
            render([success: false, limit:true,messages:"total can'not larger than  PPP value"] as JSON)    
        }
        
    }

    def jlist() {
        if(params.masterField){
            def c = PurchaseOrderDetail.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.totalPoId){
        	def soitem = PurchaseOrderDetail.createCriteria().list{
                purchaseOrder{
                    eq('id',params.totalPoId?.toLong())
                }
                projections{
                    sum('totalCost')
                }
            }

            println "tot soid"

            render([success: true, data: soitem[0]?:0] as JSON)
        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PurchaseOrderDetail.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def purchaseOrderDetailInstance = PurchaseOrderDetail.get(id)
        if (!purchaseOrderDetailInstance)
            render([success: false] as JSON)
        else {
            try {
                purchaseOrderDetailInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def purchaseOrderDetailInstance = PurchaseOrderDetail.get(params.id)
        if (!purchaseOrderDetailInstance) {
            render(
                message : "purchaseOrderDetail.not.found",
            ) as JSON

        }
        else {
            render([purchaseOrderDetailInstance : purchaseOrderDetailInstance ] as JSON)
        }
    }

    def checkLimit(purchaseOrder,totalCost){
        def pppLimit = purchaseOrder.pppCost
        def totalPO = 0
        def purchaseOrders = PurchaseOrder.createCriteria().list(){
            eq('pppNumber',purchaseOrder.pppNumber)
        }

        purchaseOrders.each{
            totalPO = totalPO + it.total
        }

        def grandtotalPO = totalPO + totalCost.toFloat()
        def grandtotalPO2 = grandtotalPO/purchaseOrder.rate
        def result = false

        println "grandtotalPO2 = " +grandtotalPO2
        println "pppLimit= " +pppLimit
        if(grandtotalPO2 <= pppLimit){
            result = true
        }

        return result

    }

    def deleteAllDetail(){
        def purchaseOrderInstance = PurchaseOrder.get(params.id)
        if (!purchaseOrderInstance)
            render([success: false] as JSON)
        else {
            def purchaseOrderDetails = PurchaseOrderDetail.findAllByPurchaseOrder(purchaseOrderInstance)
            purchaseOrderDetails?.each{
                it.delete()             
            }
            render([success: true] as JSON)
        }   
    }
}
