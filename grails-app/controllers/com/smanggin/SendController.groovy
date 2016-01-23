package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * SendController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class SendController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Send.createCriteria().list(params){}
        [sendInstanceList: results, sendInstanceTotal: results.totalCount]
    }

    def create() {
        [sendInstance: new Send(params)]
    }

    def save() {
        def sendInstance = new Send(params)
        if (!sendInstance.save(flush: true)) {
            render(view: "create", model: [sendInstance: sendInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'send.label', default: 'Send'), sendInstance.id])
        redirect(action: "show", id: sendInstance.id)
    }

    def show() {
        def sendInstance = Send.get(params.id)
        if (!sendInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'send.label', default: 'Send'), params.id])
            redirect(action: "list")
            return
        }

        [sendInstance: sendInstance]
    }

    def edit() {
        def sendInstance = Send.get(params.id)
        if (!sendInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'send.label', default: 'Send'), params.id])
            redirect(action: "list")
            return
        }

        [sendInstance: sendInstance]
    }

    def update() {
        def sendInstance = Send.get(params.id)
        if (!sendInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'send.label', default: 'Send'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (sendInstance.version > version) {
                sendInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'send.label', default: 'Send')] as Object[],
                          "Another user has updated this Send while you were editing")
                render(view: "edit", model: [sendInstance: sendInstance])
                return
            }
        }

        sendInstance.properties = params

        if (!sendInstance.save(flush: true)) {
            render(view: "edit", model: [sendInstance: sendInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'send.label', default: 'Send'), sendInstance.id])
        redirect(action: "show", id: sendInstance.id)
    }

    def delete() {
        def sendInstance = Send.get(params.id)
        if (!sendInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'send.label', default: 'Send'), params.id])
            redirect(action: "list")
            return
        }

        try {
            sendInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'send.label', default: 'Send'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'send.label', default: 'Send'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def sendInstance = (params.id) ? Send.get(params.id) : new Send()
        
        if (!sendInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'send.label', default: 'Send'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (sendInstance.version > version) {
                    sendInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'send.label', default: 'Send')] as Object[],
                              "Another user has updated this Send while you were editing")
                    render([success: false, messages: sendInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        sendInstance.properties = params
                       
        if (!sendInstance.save(flush: true)) {
            render([success: false, messages: sendInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Send.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Send.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def sendInstance = Send.get(id)
        if (!sendInstance)
            render([success: false] as JSON)
        else {
            try {
                sendInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def sendInstance = Send.get(params.id)
        if (!sendInstance) {
            render(
                message : "send.not.found",
            ) as JSON

        }
        else {
            render([sendInstance : sendInstance ] as JSON)
        }
    }
}
