package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppMalaysiaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppMalaysiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
       // params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppMalaysia.createCriteria().list(params){}
        [pppMalaysiaInstanceList: results, pppMalaysiaInstanceTotal: results.totalCount]
    }

    def create() {
        [pppMalaysiaInstance: new PppMalaysia(params)]
    }

    def save() {
        def pppMalaysiaInstance = new PppMalaysia(params)
        if (!pppMalaysiaInstance.save(flush: true)) {
            render(view: "create", model: [pppMalaysiaInstance: pppMalaysiaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), pppMalaysiaInstance.id])
        redirect(action: "show", id: pppMalaysiaInstance.id)
    }

    def show() {
        def pppMalaysiaInstance = PppMalaysia.get(params.id)
        if (!pppMalaysiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])
            redirect(action: "list")
            return
        }

        [pppMalaysiaInstance: pppMalaysiaInstance]
    }

    def edit() {
        def pppMalaysiaInstance = PppMalaysia.get(params.id)
        if (!pppMalaysiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])
            redirect(action: "list")
            return
        }

        [pppMalaysiaInstance: pppMalaysiaInstance]
    }

    def update() {
        def pppMalaysiaInstance = PppMalaysia.get(params.id)
        if (!pppMalaysiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppMalaysiaInstance.version > version) {
                pppMalaysiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppMalaysia.label', default: 'PppMalaysia')] as Object[],
                          "Another user has updated this PppMalaysia while you were editing")
                render(view: "edit", model: [pppMalaysiaInstance: pppMalaysiaInstance])
                return
            }
        }

        pppMalaysiaInstance.properties = params

        if (!pppMalaysiaInstance.save(flush: true)) {
            render(view: "edit", model: [pppMalaysiaInstance: pppMalaysiaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), pppMalaysiaInstance.id])
        redirect(action: "show", id: pppMalaysiaInstance.id)
    }

    def delete() {
        def pppMalaysiaInstance = PppMalaysia.get(params.id)
        if (!pppMalaysiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppMalaysiaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppMalaysiaInstance = (params.id) ? PppMalaysia.get(params.id) : new PppMalaysia()
        
        if (!pppMalaysiaInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppMalaysia.label', default: 'PppMalaysia'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppMalaysiaInstance.version > version) {
                    pppMalaysiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppMalaysia.label', default: 'PppMalaysia')] as Object[],
                              "Another user has updated this PppMalaysia while you were editing")
                    render([success: false, messages: pppMalaysiaInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppMalaysiaInstance.properties = params
                       
        if (!pppMalaysiaInstance.save(flush: true)) {
            render([success: false, messages: pppMalaysiaInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppMalaysia.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
           // params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppMalaysia.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppMalaysiaInstance = PppMalaysia.get(id)
        if (!pppMalaysiaInstance)
            render([success: false] as JSON)
        else {
            try {
                pppMalaysiaInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppMalaysiaInstance = PppMalaysia.get(params.id)
        if (!pppMalaysiaInstance) {
            render(
                message : "pppMalaysia.not.found",
            ) as JSON

        }
        else {
            render([pppMalaysiaInstance : pppMalaysiaInstance ] as JSON)
        }
    }
}
