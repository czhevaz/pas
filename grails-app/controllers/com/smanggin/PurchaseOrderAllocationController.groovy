package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PurchaseOrderAllocationController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderAllocationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrderAllocation.createCriteria().list(params){}
        [purchaseOrderAllocationInstanceList: results, purchaseOrderAllocationInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderAllocationInstance: new PurchaseOrderAllocation(params)]
    }

    def save() {
        def purchaseOrderAllocationInstance = new PurchaseOrderAllocation(params)
        if (!purchaseOrderAllocationInstance.save(flush: true)) {
            render(view: "create", model: [purchaseOrderAllocationInstance: purchaseOrderAllocationInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), purchaseOrderAllocationInstance.id])
        redirect(action: "show", id: purchaseOrderAllocationInstance.id)
    }

    def show() {
        def purchaseOrderAllocationInstance = PurchaseOrderAllocation.get(params.id)
        if (!purchaseOrderAllocationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderAllocationInstance: purchaseOrderAllocationInstance]
    }

    def edit() {
        def purchaseOrderAllocationInstance = PurchaseOrderAllocation.get(params.id)
        if (!purchaseOrderAllocationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderAllocationInstance: purchaseOrderAllocationInstance]
    }

    def update() {
        def purchaseOrderAllocationInstance = PurchaseOrderAllocation.get(params.id)
        if (!purchaseOrderAllocationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderAllocationInstance.version > version) {
                purchaseOrderAllocationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation')] as Object[],
                          "Another user has updated this PurchaseOrderAllocation while you were editing")
                render(view: "edit", model: [purchaseOrderAllocationInstance: purchaseOrderAllocationInstance])
                return
            }
        }

        purchaseOrderAllocationInstance.properties = params

        if (!purchaseOrderAllocationInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderAllocationInstance: purchaseOrderAllocationInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), purchaseOrderAllocationInstance.id])
        redirect(action: "show", id: purchaseOrderAllocationInstance.id)
    }

    def delete() {
        def purchaseOrderAllocationInstance = PurchaseOrderAllocation.get(params.id)
        if (!purchaseOrderAllocationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseOrderAllocationInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        println params
        def purchaseOrderAllocationInstance = (params.id) ? PurchaseOrderAllocation.get(params.id) : new PurchaseOrderAllocation()
        
        if (!purchaseOrderAllocationInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (purchaseOrderAllocationInstance.version > version) {
                    purchaseOrderAllocationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation')] as Object[],
                              "Another user has updated this PurchaseOrderAllocation while you were editing")
                    render([success: false, messages: purchaseOrderAllocationInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        purchaseOrderAllocationInstance.properties = params
        purchaseOrderAllocationInstance.purchaseOrder = PurchaseOrder.get(params.purchaseOrderId)               
        if (!purchaseOrderAllocationInstance.save(flush: true)) {
            render([success: false, messages: purchaseOrderAllocationInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PurchaseOrderAllocation.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PurchaseOrderAllocation.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def purchaseOrderAllocationInstance = PurchaseOrderAllocation.get(id)
        if (!purchaseOrderAllocationInstance)
            render([success: false] as JSON)
        else {
            try {
                purchaseOrderAllocationInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def purchaseOrderAllocationInstance = PurchaseOrderAllocation.get(params.id)
        if (!purchaseOrderAllocationInstance) {
            render(
                message : "purchaseOrderAllocation.not.found",
            ) as JSON

        }
        else {
            render([purchaseOrderAllocationInstance : purchaseOrderAllocationInstance ] as JSON)
        }
    }

    def listAllocation(){
        
    }    
}
