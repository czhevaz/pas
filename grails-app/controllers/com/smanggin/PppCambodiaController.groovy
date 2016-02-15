package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppCambodiaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppCambodiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
    //    params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppCambodia.createCriteria().list(params){}
        [pppCambodiaInstanceList: results, pppCambodiaInstanceTotal: results.totalCount]
    }

    def create() {
        [pppCambodiaInstance: new PppCambodia(params)]
    }

    def save() {
        def pppCambodiaInstance = new PppCambodia(params)
        if (!pppCambodiaInstance.save(flush: true)) {
            render(view: "create", model: [pppCambodiaInstance: pppCambodiaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), pppCambodiaInstance.id])
        redirect(action: "show", id: pppCambodiaInstance.id)
    }

    def show() {
        def pppCambodiaInstance = PppCambodia.get(params.id)
        if (!pppCambodiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])
            redirect(action: "list")
            return
        }

        [pppCambodiaInstance: pppCambodiaInstance]
    }

    def edit() {
        def pppCambodiaInstance = PppCambodia.get(params.id)
        if (!pppCambodiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])
            redirect(action: "list")
            return
        }

        [pppCambodiaInstance: pppCambodiaInstance]
    }

    def update() {
        def pppCambodiaInstance = PppCambodia.get(params.id)
        if (!pppCambodiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppCambodiaInstance.version > version) {
                pppCambodiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppCambodia.label', default: 'PppCambodia')] as Object[],
                          "Another user has updated this PppCambodia while you were editing")
                render(view: "edit", model: [pppCambodiaInstance: pppCambodiaInstance])
                return
            }
        }

        pppCambodiaInstance.properties = params

        if (!pppCambodiaInstance.save(flush: true)) {
            render(view: "edit", model: [pppCambodiaInstance: pppCambodiaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), pppCambodiaInstance.id])
        redirect(action: "show", id: pppCambodiaInstance.id)
    }

    def delete() {
        def pppCambodiaInstance = PppCambodia.get(params.id)
        if (!pppCambodiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppCambodiaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppCambodiaInstance = (params.id) ? PppCambodia.get(params.id) : new PppCambodia()
        
        if (!pppCambodiaInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppCambodia.label', default: 'PppCambodia'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppCambodiaInstance.version > version) {
                    pppCambodiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppCambodia.label', default: 'PppCambodia')] as Object[],
                              "Another user has updated this PppCambodia while you were editing")
                    render([success: false, messages: pppCambodiaInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppCambodiaInstance.properties = params
                       
        if (!pppCambodiaInstance.save(flush: true)) {
            render([success: false, messages: pppCambodiaInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppCambodia.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
        //    params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppCambodia.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppCambodiaInstance = PppCambodia.get(id)
        if (!pppCambodiaInstance)
            render([success: false] as JSON)
        else {
            try {
                pppCambodiaInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppCambodiaInstance = PppCambodia.get(params.id)
        if (!pppCambodiaInstance) {
            render(
                message : "pppCambodia.not.found",
            ) as JSON

        }
        else {
            render([pppCambodiaInstance : pppCambodiaInstance ] as JSON)
        }
    }
}
