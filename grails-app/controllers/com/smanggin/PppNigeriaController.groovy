package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppNigeriaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppNigeriaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppNigeria.createCriteria().list(params){}
        [pppNigeriaInstanceList: results, pppNigeriaInstanceTotal: results.totalCount]
    }

    def create() {
        [pppNigeriaInstance: new PppNigeria(params)]
    }

    def save() {
        def pppNigeriaInstance = new PppNigeria(params)
        if (!pppNigeriaInstance.save(flush: true)) {
            render(view: "create", model: [pppNigeriaInstance: pppNigeriaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), pppNigeriaInstance.id])
        redirect(action: "show", id: pppNigeriaInstance.id)
    }

    def show() {
        def pppNigeriaInstance = PppNigeria.get(params.id)
        if (!pppNigeriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])
            redirect(action: "list")
            return
        }

        [pppNigeriaInstance: pppNigeriaInstance]
    }

    def edit() {
        def pppNigeriaInstance = PppNigeria.get(params.id)
        if (!pppNigeriaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])
            redirect(action: "list")
            return
        }

        [pppNigeriaInstance: pppNigeriaInstance]
    }

    def update() {
        def pppNigeriaInstance = PppNigeria.get(params.id)
        if (!pppNigeriaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppNigeriaInstance.version > version) {
                pppNigeriaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppNigeria.label', default: 'PppNigeria')] as Object[],
                          "Another user has updated this PppNigeria while you were editing")
                render(view: "edit", model: [pppNigeriaInstance: pppNigeriaInstance])
                return
            }
        }

        pppNigeriaInstance.properties = params

        if (!pppNigeriaInstance.save(flush: true)) {
            render(view: "edit", model: [pppNigeriaInstance: pppNigeriaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), pppNigeriaInstance.id])
        redirect(action: "show", id: pppNigeriaInstance.id)
    }

    def delete() {
        def pppNigeriaInstance = PppNigeria.get(params.id)
        if (!pppNigeriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppNigeriaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppNigeriaInstance = (params.id) ? PppNigeria.get(params.id) : new PppNigeria()
        
        if (!pppNigeriaInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppNigeria.label', default: 'PppNigeria'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppNigeriaInstance.version > version) {
                    pppNigeriaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppNigeria.label', default: 'PppNigeria')] as Object[],
                              "Another user has updated this PppNigeria while you were editing")
                    render([success: false, messages: pppNigeriaInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppNigeriaInstance.properties = params
                       
        if (!pppNigeriaInstance.save(flush: true)) {
            render([success: false, messages: pppNigeriaInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppNigeria.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppNigeria.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppNigeriaInstance = PppNigeria.get(id)
        if (!pppNigeriaInstance)
            render([success: false] as JSON)
        else {
            try {
                pppNigeriaInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppNigeriaInstance = PppNigeria.get(params.id)
        if (!pppNigeriaInstance) {
            render(
                message : "pppNigeria.not.found",
            ) as JSON

        }
        else {
            render([pppNigeriaInstance : pppNigeriaInstance ] as JSON)
        }
    }
}
