package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * ApprovalController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class ApprovalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Approval.createCriteria().list(params){}
        [approvalInstanceList: results, approvalInstanceTotal: results.totalCount]
    }

    def create() {
        [approvalInstance: new Approval(params)]
    }

    def save() {
        def approvalInstance = new Approval(params)
        if (!approvalInstance.save(flush: true)) {
            render(view: "create", model: [approvalInstance: approvalInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'approval.label', default: 'Approval'), approvalInstance.id])
        redirect(action: "show", id: approvalInstance.id)
    }

    def show() {
        def approvalInstance = Approval.get(params.id)
        if (!approvalInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
            redirect(action: "list")
            return
        }

        [approvalInstance: approvalInstance]
    }

    def edit() {
        def approvalInstance = Approval.get(params.id)
        if (!approvalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
            redirect(action: "list")
            return
        }

        [approvalInstance: approvalInstance]
    }

    def update() {
        def approvalInstance = Approval.get(params.id)
        if (!approvalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (approvalInstance.version > version) {
                approvalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'approval.label', default: 'Approval')] as Object[],
                          "Another user has updated this Approval while you were editing")
                render(view: "edit", model: [approvalInstance: approvalInstance])
                return
            }
        }

        approvalInstance.properties = params

        if (!approvalInstance.save(flush: true)) {
            render(view: "edit", model: [approvalInstance: approvalInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'approval.label', default: 'Approval'), approvalInstance.id])
        redirect(action: "show", id: approvalInstance.id)
    }

    def delete() {
        def approvalInstance = Approval.get(params.id)
        if (!approvalInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
            redirect(action: "list")
            return
        }

        try {
            approvalInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def approvalInstance = (params.id) ? Approval.get(params.id) : new Approval()
        
        if (!approvalInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (approvalInstance.version > version) {
                    approvalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'approval.label', default: 'Approval')] as Object[],
                              "Another user has updated this Approval while you were editing")
                    render([success: false, messages: approvalInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        approvalInstance.properties = params
                       
        if (!approvalInstance.save(flush: true)) {
            render([success: false, messages: approvalInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Approval.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Approval.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def approvalInstance = Approval.get(id)
        if (!approvalInstance)
            render([success: false] as JSON)
        else {
            try {
                approvalInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def approvalInstance = Approval.get(params.id)
        if (!approvalInstance) {
            render(
                message : "approval.not.found",
            ) as JSON

        }
        else {
            render([approvalInstance : approvalInstance ] as JSON)
        }
    }
}
