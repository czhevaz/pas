package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppSouthAfricaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppSouthAfricaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppSouthAfrica.createCriteria().list(params){}
        [pppSouthAfricaInstanceList: results, pppSouthAfricaInstanceTotal: results.totalCount]
    }

    def create() {
        [pppSouthAfricaInstance: new PppSouthAfrica(params)]
    }

    def save() {
        def pppSouthAfricaInstance = new PppSouthAfrica(params)
        if (!pppSouthAfricaInstance.save(flush: true)) {
            render(view: "create", model: [pppSouthAfricaInstance: pppSouthAfricaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), pppSouthAfricaInstance.id])
        redirect(action: "show", id: pppSouthAfricaInstance.id)
    }

    def show() {
        def pppSouthAfricaInstance = PppSouthAfrica.get(params.id)
        if (!pppSouthAfricaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])
            redirect(action: "list")
            return
        }

        [pppSouthAfricaInstance: pppSouthAfricaInstance]
    }

    def edit() {
        def pppSouthAfricaInstance = PppSouthAfrica.get(params.id)
        if (!pppSouthAfricaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])
            redirect(action: "list")
            return
        }

        [pppSouthAfricaInstance: pppSouthAfricaInstance]
    }

    def update() {
        def pppSouthAfricaInstance = PppSouthAfrica.get(params.id)
        if (!pppSouthAfricaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppSouthAfricaInstance.version > version) {
                pppSouthAfricaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica')] as Object[],
                          "Another user has updated this PppSouthAfrica while you were editing")
                render(view: "edit", model: [pppSouthAfricaInstance: pppSouthAfricaInstance])
                return
            }
        }

        pppSouthAfricaInstance.properties = params

        if (!pppSouthAfricaInstance.save(flush: true)) {
            render(view: "edit", model: [pppSouthAfricaInstance: pppSouthAfricaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), pppSouthAfricaInstance.id])
        redirect(action: "show", id: pppSouthAfricaInstance.id)
    }

    def delete() {
        def pppSouthAfricaInstance = PppSouthAfrica.get(params.id)
        if (!pppSouthAfricaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppSouthAfricaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppSouthAfricaInstance = (params.id) ? PppSouthAfrica.get(params.id) : new PppSouthAfrica()
        
        if (!pppSouthAfricaInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppSouthAfricaInstance.version > version) {
                    pppSouthAfricaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica')] as Object[],
                              "Another user has updated this PppSouthAfrica while you were editing")
                    render([success: false, messages: pppSouthAfricaInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppSouthAfricaInstance.properties = params
                       
        if (!pppSouthAfricaInstance.save(flush: true)) {
            render([success: false, messages: pppSouthAfricaInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppSouthAfrica.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppSouthAfrica.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppSouthAfricaInstance = PppSouthAfrica.get(id)
        if (!pppSouthAfricaInstance)
            render([success: false] as JSON)
        else {
            try {
                pppSouthAfricaInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppSouthAfricaInstance = PppSouthAfrica.get(params.id)
        if (!pppSouthAfricaInstance) {
            render(
                message : "pppSouthAfrica.not.found",
            ) as JSON

        }
        else {
            render([pppSouthAfricaInstance : pppSouthAfricaInstance ] as JSON)
        }
    }
}
