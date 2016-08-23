package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * LobController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class LobController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Lob.createCriteria().list(params){}
        [lobInstanceList: results, lobInstanceTotal: results.totalCount]
    }

    def create() {
        [lobInstance: new Lob(params)]
    }

    def save() {
        def lobInstance = new Lob(params)
        if (!lobInstance.save(flush: true)) {
            render(view: "create", model: [lobInstance: lobInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'lob.label', default: 'Lob'), lobInstance.id])
        redirect(action: "show", id: lobInstance.id)
    }

    def show() {
        def lobInstance = Lob.get(params.id)
        if (!lobInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])
            redirect(action: "list")
            return
        }

        [lobInstance: lobInstance]
    }

    def edit() {
        def lobInstance = Lob.get(params.id)
        if (!lobInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])
            redirect(action: "list")
            return
        }

        [lobInstance: lobInstance]
    }

    def update() {
        def lobInstance = Lob.get(params.id)
        if (!lobInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (lobInstance.version > version) {
                lobInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'lob.label', default: 'Lob')] as Object[],
                          "Another user has updated this Lob while you were editing")
                render(view: "edit", model: [lobInstance: lobInstance])
                return
            }
        }

        lobInstance.properties = params

        if (!lobInstance.save(flush: true)) {
            render(view: "edit", model: [lobInstance: lobInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'lob.label', default: 'Lob'), lobInstance.id])
        redirect(action: "show", id: lobInstance.id)
    }

    def delete() {
        def lobInstance = Lob.get(params.id)
        if (!lobInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])
            redirect(action: "list")
            return
        }

        try {
            lobInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def lobInstance = (params.id) ? Lob.get(params.id) : new Lob()
        
        if (!lobInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'lob.label', default: 'Lob'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (lobInstance.version > version) {
                    lobInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'lob.label', default: 'Lob')] as Object[],
                              "Another user has updated this Lob while you were editing")
                    render([success: false, messages: lobInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        lobInstance.properties = params
                       
        if (!lobInstance.save(flush: true)) {
            render([success: false, messages: lobInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {

        if(params.masterField){

            def c = Lob.createCriteria()
            def results = c.list {
                eq(params.masterField.name,params.masterField.id)    
            }
            
            render results as JSON

        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Lob.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def lobInstance = Lob.get(id)
        if (!lobInstance)
            render([success: false] as JSON)
        else {
            try {
                lobInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def lobInstance = Lob.get(params.id)
        if (!lobInstance) {
            render(
                message : "lob.not.found",
            ) as JSON

        }
        else {
            render([lobInstance : lobInstance ] as JSON)
        }
    }
}
