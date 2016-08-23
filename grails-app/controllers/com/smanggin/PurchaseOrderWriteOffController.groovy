package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PurchaseOrderWriteOffController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderWriteOffController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrderWriteOff.createCriteria().list(params){}
        [purchaseOrderWriteOffInstanceList: results, purchaseOrderWriteOffInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderWriteOffInstance: new PurchaseOrderWriteOff(params)]
    }

    def save() {
        def purchaseOrderWriteOffInstance = new PurchaseOrderWriteOff(params)
        if (!purchaseOrderWriteOffInstance.save(flush: true)) {
            render(view: "create", model: [purchaseOrderWriteOffInstance: purchaseOrderWriteOffInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), purchaseOrderWriteOffInstance.id])
        redirect(action: "show", id: purchaseOrderWriteOffInstance.id)
    }

    def show() {
        def purchaseOrderWriteOffInstance = PurchaseOrderWriteOff.get(params.id)
        if (!purchaseOrderWriteOffInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderWriteOffInstance: purchaseOrderWriteOffInstance]
    }

    def edit() {
        def purchaseOrderWriteOffInstance = PurchaseOrderWriteOff.get(params.id)
        if (!purchaseOrderWriteOffInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderWriteOffInstance: purchaseOrderWriteOffInstance]
    }

    def update() {
        def purchaseOrderWriteOffInstance = PurchaseOrderWriteOff.get(params.id)
        if (!purchaseOrderWriteOffInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderWriteOffInstance.version > version) {
                purchaseOrderWriteOffInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff')] as Object[],
                          "Another user has updated this PurchaseOrderWriteOff while you were editing")
                render(view: "edit", model: [purchaseOrderWriteOffInstance: purchaseOrderWriteOffInstance])
                return
            }
        }

        purchaseOrderWriteOffInstance.properties = params

        if (!purchaseOrderWriteOffInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderWriteOffInstance: purchaseOrderWriteOffInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), purchaseOrderWriteOffInstance.id])
        redirect(action: "show", id: purchaseOrderWriteOffInstance.id)
    }

    def delete() {
        def purchaseOrderWriteOffInstance = PurchaseOrderWriteOff.get(params.id)
        if (!purchaseOrderWriteOffInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseOrderWriteOffInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def purchaseOrderWriteOffInstance = (params.id) ? PurchaseOrderWriteOff.get(params.id) : new PurchaseOrderWriteOff()
        
        if (!purchaseOrderWriteOffInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (purchaseOrderWriteOffInstance.version > version) {
                    purchaseOrderWriteOffInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'purchaseOrderWriteOff.label', default: 'PurchaseOrderWriteOff')] as Object[],
                              "Another user has updated this PurchaseOrderWriteOff while you were editing")
                    render([success: false, messages: purchaseOrderWriteOffInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        purchaseOrderWriteOffInstance.properties = params
                       
        if (!purchaseOrderWriteOffInstance.save(flush: true)) {
            render([success: false, messages: purchaseOrderWriteOffInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PurchaseOrderWriteOff.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PurchaseOrderWriteOff.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def purchaseOrderWriteOffInstance = PurchaseOrderWriteOff.get(id)
        if (!purchaseOrderWriteOffInstance)
            render([success: false] as JSON)
        else {
            try {
                purchaseOrderWriteOffInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def purchaseOrderWriteOffInstance = PurchaseOrderWriteOff.get(params.id)
        if (!purchaseOrderWriteOffInstance) {
            render(
                message : "purchaseOrderWriteOff.not.found",
            ) as JSON

        }
        else {
            render([purchaseOrderWriteOffInstance : purchaseOrderWriteOffInstance ] as JSON)
        }
    }
}
