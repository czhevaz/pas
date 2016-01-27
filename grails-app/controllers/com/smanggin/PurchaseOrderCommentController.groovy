package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PurchaseOrderCommentController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PurchaseOrderCommentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PurchaseOrderComment.createCriteria().list(params){}
        [purchaseOrderCommentInstanceList: results, purchaseOrderCommentInstanceTotal: results.totalCount]
    }

    def create() {
        [purchaseOrderCommentInstance: new PurchaseOrderComment(params)]
    }

    def save() {
        def purchaseOrderCommentInstance = new PurchaseOrderComment(params)
        if (!purchaseOrderCommentInstance.save(flush: true)) {
            render(view: "create", model: [purchaseOrderCommentInstance: purchaseOrderCommentInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), purchaseOrderCommentInstance.id])
        redirect(action: "show", id: purchaseOrderCommentInstance.id)
    }

    def show() {
        def purchaseOrderCommentInstance = PurchaseOrderComment.get(params.id)
        if (!purchaseOrderCommentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderCommentInstance: purchaseOrderCommentInstance]
    }

    def edit() {
        def purchaseOrderCommentInstance = PurchaseOrderComment.get(params.id)
        if (!purchaseOrderCommentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseOrderCommentInstance: purchaseOrderCommentInstance]
    }

    def update() {
        def purchaseOrderCommentInstance = PurchaseOrderComment.get(params.id)
        if (!purchaseOrderCommentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseOrderCommentInstance.version > version) {
                purchaseOrderCommentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment')] as Object[],
                          "Another user has updated this PurchaseOrderComment while you were editing")
                render(view: "edit", model: [purchaseOrderCommentInstance: purchaseOrderCommentInstance])
                return
            }
        }

        purchaseOrderCommentInstance.properties = params

        if (!purchaseOrderCommentInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseOrderCommentInstance: purchaseOrderCommentInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), purchaseOrderCommentInstance.id])
        redirect(action: "show", id: purchaseOrderCommentInstance.id)
    }

    def delete() {
        def purchaseOrderCommentInstance = PurchaseOrderComment.get(params.id)
        if (!purchaseOrderCommentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseOrderCommentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def purchaseOrderCommentInstance = (params.id) ? PurchaseOrderComment.get(params.id) : new PurchaseOrderComment()
        
        if (!purchaseOrderCommentInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (purchaseOrderCommentInstance.version > version) {
                    purchaseOrderCommentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'purchaseOrderComment.label', default: 'PurchaseOrderComment')] as Object[],
                              "Another user has updated this PurchaseOrderComment while you were editing")
                    render([success: false, messages: purchaseOrderCommentInstance.errors] as JSON)
                    return
                }
            }            
        }
        def purchaseOrderInstance= PurchaseOrder.get(params.purchaseOrderId)
        purchaseOrderCommentInstance.properties = params
        purchaseOrderCommentInstance.purchaseOrder = purchaseOrderInstance
        purchaseOrderCommentInstance.createdBy = auth.user()
                       
        if (!purchaseOrderCommentInstance.save(flush: true)) {
            render([success: false, messages: purchaseOrderCommentInstance.errors] as JSON)
            return
        }
                        
        render([success: true,data:purchaseOrderCommentInstance,datas:purchaseOrderInstance?.purchaseOrderComments.sort{it.dateCreated}] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PurchaseOrderComment.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PurchaseOrderComment.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def purchaseOrderCommentInstance = PurchaseOrderComment.get(id)
        if (!purchaseOrderCommentInstance)
            render([success: false] as JSON)
        else {
            try {
                purchaseOrderCommentInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def purchaseOrderCommentInstance = PurchaseOrderComment.get(params.id)
        if (!purchaseOrderCommentInstance) {
            render(
                message : "purchaseOrderComment.not.found",
            ) as JSON

        }
        else {
            render([purchaseOrderCommentInstance : purchaseOrderCommentInstance ] as JSON)
        }
    }
}
