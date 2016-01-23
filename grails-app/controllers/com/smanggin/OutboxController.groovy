package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * OutboxController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class OutboxController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Outbox.createCriteria().list(params){}
        [outboxInstanceList: results, outboxInstanceTotal: results.totalCount]
    }

    def create() {
        [outboxInstance: new Outbox(params)]
    }

    def save() {
        def outboxInstance = new Outbox(params)
        if (!outboxInstance.save(flush: true)) {
            render(view: "create", model: [outboxInstance: outboxInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'outbox.label', default: 'Outbox'), outboxInstance.id])
        redirect(action: "show", id: outboxInstance.id)
    }

    def show() {
        def outboxInstance = Outbox.get(params.id)
        if (!outboxInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])
            redirect(action: "list")
            return
        }

        [outboxInstance: outboxInstance]
    }

    def edit() {
        def outboxInstance = Outbox.get(params.id)
        if (!outboxInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])
            redirect(action: "list")
            return
        }

        [outboxInstance: outboxInstance]
    }

    def update() {
        def outboxInstance = Outbox.get(params.id)
        if (!outboxInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (outboxInstance.version > version) {
                outboxInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'outbox.label', default: 'Outbox')] as Object[],
                          "Another user has updated this Outbox while you were editing")
                render(view: "edit", model: [outboxInstance: outboxInstance])
                return
            }
        }

        outboxInstance.properties = params

        if (!outboxInstance.save(flush: true)) {
            render(view: "edit", model: [outboxInstance: outboxInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'outbox.label', default: 'Outbox'), outboxInstance.id])
        redirect(action: "show", id: outboxInstance.id)
    }

    def delete() {
        def outboxInstance = Outbox.get(params.id)
        if (!outboxInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])
            redirect(action: "list")
            return
        }

        try {
            outboxInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def outboxInstance = (params.id) ? Outbox.get(params.id) : new Outbox()
        
        if (!outboxInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'outbox.label', default: 'Outbox'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (outboxInstance.version > version) {
                    outboxInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'outbox.label', default: 'Outbox')] as Object[],
                              "Another user has updated this Outbox while you were editing")
                    render([success: false, messages: outboxInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        outboxInstance.properties = params
                       
        if (!outboxInstance.save(flush: true)) {
            render([success: false, messages: outboxInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Outbox.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Outbox.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def outboxInstance = Outbox.get(id)
        if (!outboxInstance)
            render([success: false] as JSON)
        else {
            try {
                outboxInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def outboxInstance = Outbox.get(params.id)
        if (!outboxInstance) {
            render(
                message : "outbox.not.found",
            ) as JSON

        }
        else {
            render([outboxInstance : outboxInstance ] as JSON)
        }
    }
}
