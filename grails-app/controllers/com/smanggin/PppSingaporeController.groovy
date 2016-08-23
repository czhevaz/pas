package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppSingaporeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppSingaporeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
    //    params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppSingapore.createCriteria().list(params){}
        [pppSingaporeInstanceList: results, pppSingaporeInstanceTotal: results.totalCount]
    }

    def create() {
        [pppSingaporeInstance: new PppSingapore(params)]
    }

    def save() {
        def pppSingaporeInstance = new PppSingapore(params)
        if (!pppSingaporeInstance.save(flush: true)) {
            render(view: "create", model: [pppSingaporeInstance: pppSingaporeInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), pppSingaporeInstance.id])
        redirect(action: "show", id: pppSingaporeInstance.id)
    }

    def show() {
        def pppSingaporeInstance = PppSingapore.get(params.id)
        if (!pppSingaporeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])
            redirect(action: "list")
            return
        }

        [pppSingaporeInstance: pppSingaporeInstance]
    }

    def edit() {
        def pppSingaporeInstance = PppSingapore.get(params.id)
        if (!pppSingaporeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])
            redirect(action: "list")
            return
        }

        [pppSingaporeInstance: pppSingaporeInstance]
    }

    def update() {
        def pppSingaporeInstance = PppSingapore.get(params.id)
        if (!pppSingaporeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppSingaporeInstance.version > version) {
                pppSingaporeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppSingapore.label', default: 'PppSingapore')] as Object[],
                          "Another user has updated this PppSingapore while you were editing")
                render(view: "edit", model: [pppSingaporeInstance: pppSingaporeInstance])
                return
            }
        }

        pppSingaporeInstance.properties = params

        if (!pppSingaporeInstance.save(flush: true)) {
            render(view: "edit", model: [pppSingaporeInstance: pppSingaporeInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), pppSingaporeInstance.id])
        redirect(action: "show", id: pppSingaporeInstance.id)
    }

    def delete() {
        def pppSingaporeInstance = PppSingapore.get(params.id)
        if (!pppSingaporeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppSingaporeInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppSingaporeInstance = (params.id) ? PppSingapore.get(params.id) : new PppSingapore()
        
        if (!pppSingaporeInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppSingapore.label', default: 'PppSingapore'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppSingaporeInstance.version > version) {
                    pppSingaporeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppSingapore.label', default: 'PppSingapore')] as Object[],
                              "Another user has updated this PppSingapore while you were editing")
                    render([success: false, messages: pppSingaporeInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppSingaporeInstance.properties = params
                       
        if (!pppSingaporeInstance.save(flush: true)) {
            render([success: false, messages: pppSingaporeInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppSingapore.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
        //    params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppSingapore.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppSingaporeInstance = PppSingapore.get(id)
        if (!pppSingaporeInstance)
            render([success: false] as JSON)
        else {
            try {
                pppSingaporeInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppSingaporeInstance = PppSingapore.get(params.id)
        if (!pppSingaporeInstance) {
            render(
                message : "pppSingapore.not.found",
            ) as JSON

        }
        else {
            render([pppSingaporeInstance : pppSingaporeInstance ] as JSON)
        }
    }
}
