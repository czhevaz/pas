package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PurchaseOrderBalanceController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderBalanceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrderBalance.createCriteria().list(params){}
        [purchaseOrderBalanceInstanceList: results, purchaseOrderBalanceInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderBalanceInstance: new PurchaseOrderBalance(params)]
    }

    def save() {
        def purchaseOrderBalanceInstance = new PurchaseOrderBalance(params)
        if (!purchaseOrderBalanceInstance.save(flush: true)) {
            render(view: "create", model: [purchaseOrderBalanceInstance: purchaseOrderBalanceInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), purchaseOrderBalanceInstance.id])
        redirect(action: "show", id: purchaseOrderBalanceInstance.id)
    }

    def show() {
        def purchaseOrderBalanceInstance = PurchaseOrderBalance.get(params.id)
        if (!purchaseOrderBalanceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderBalanceInstance: purchaseOrderBalanceInstance]
    }

    def edit() {
        def purchaseOrderBalanceInstance = PurchaseOrderBalance.get(params.id)
        if (!purchaseOrderBalanceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderBalanceInstance: purchaseOrderBalanceInstance]
    }

    def update() {
        def purchaseOrderBalanceInstance = PurchaseOrderBalance.get(params.id)
        if (!purchaseOrderBalanceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderBalanceInstance.version > version) {
                purchaseOrderBalanceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance')] as Object[],
                          "Another user has updated this PurchaseOrderBalance while you were editing")
                render(view: "edit", model: [purchaseOrderBalanceInstance: purchaseOrderBalanceInstance])
                return
            }
        }

        purchaseOrderBalanceInstance.properties = params

        if (!purchaseOrderBalanceInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderBalanceInstance: purchaseOrderBalanceInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), purchaseOrderBalanceInstance.id])
        redirect(action: "show", id: purchaseOrderBalanceInstance.id)
    }

    def delete() {
        def purchaseOrderBalanceInstance = PurchaseOrderBalance.get(params.id)
        if (!purchaseOrderBalanceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseOrderBalanceInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def purchaseOrderBalanceInstance = (params.id) ? PurchaseOrderBalance.get(params.id) : new PurchaseOrderBalance()
        
        if (!purchaseOrderBalanceInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (purchaseOrderBalanceInstance.version > version) {
                    purchaseOrderBalanceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'purchaseOrderBalance.label', default: 'PurchaseOrderBalance')] as Object[],
                              "Another user has updated this PurchaseOrderBalance while you were editing")
                    render([success: false, messages: purchaseOrderBalanceInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        purchaseOrderBalanceInstance.properties = params
                       
        if (!purchaseOrderBalanceInstance.save(flush: true)) {
            render([success: false, messages: purchaseOrderBalanceInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PurchaseOrderBalance.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PurchaseOrderBalance.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def purchaseOrderBalanceInstance = PurchaseOrderBalance.get(id)
        if (!purchaseOrderBalanceInstance)
            render([success: false] as JSON)
        else {
            try {
                purchaseOrderBalanceInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def purchaseOrderBalanceInstance = PurchaseOrderBalance.get(params.id)
        if (!purchaseOrderBalanceInstance) {
            render(
                message : "purchaseOrderBalance.not.found",
            ) as JSON

        }
        else {
            render([purchaseOrderBalanceInstance : purchaseOrderBalanceInstance ] as JSON)
        }
    }
}
