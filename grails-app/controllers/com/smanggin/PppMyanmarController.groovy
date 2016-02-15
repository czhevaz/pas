package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppMyanmarController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppMyanmarController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
      //  params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppMyanmar.createCriteria().list(params){}
        [pppMyanmarInstanceList: results, pppMyanmarInstanceTotal: results.totalCount]
    }

    def create() {
        [pppMyanmarInstance: new PppMyanmar(params)]
    }

    def save() {
        def pppMyanmarInstance = new PppMyanmar(params)
        if (!pppMyanmarInstance.save(flush: true)) {
            render(view: "create", model: [pppMyanmarInstance: pppMyanmarInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), pppMyanmarInstance.id])
        redirect(action: "show", id: pppMyanmarInstance.id)
    }

    def show() {
        def pppMyanmarInstance = PppMyanmar.get(params.id)
        if (!pppMyanmarInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])
            redirect(action: "list")
            return
        }

        [pppMyanmarInstance: pppMyanmarInstance]
    }

    def edit() {
        def pppMyanmarInstance = PppMyanmar.get(params.id)
        if (!pppMyanmarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])
            redirect(action: "list")
            return
        }

        [pppMyanmarInstance: pppMyanmarInstance]
    }

    def update() {
        def pppMyanmarInstance = PppMyanmar.get(params.id)
        if (!pppMyanmarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppMyanmarInstance.version > version) {
                pppMyanmarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppMyanmar.label', default: 'PppMyanmar')] as Object[],
                          "Another user has updated this PppMyanmar while you were editing")
                render(view: "edit", model: [pppMyanmarInstance: pppMyanmarInstance])
                return
            }
        }

        pppMyanmarInstance.properties = params

        if (!pppMyanmarInstance.save(flush: true)) {
            render(view: "edit", model: [pppMyanmarInstance: pppMyanmarInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), pppMyanmarInstance.id])
        redirect(action: "show", id: pppMyanmarInstance.id)
    }

    def delete() {
        def pppMyanmarInstance = PppMyanmar.get(params.id)
        if (!pppMyanmarInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppMyanmarInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppMyanmarInstance = (params.id) ? PppMyanmar.get(params.id) : new PppMyanmar()
        
        if (!pppMyanmarInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppMyanmar.label', default: 'PppMyanmar'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppMyanmarInstance.version > version) {
                    pppMyanmarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppMyanmar.label', default: 'PppMyanmar')] as Object[],
                              "Another user has updated this PppMyanmar while you were editing")
                    render([success: false, messages: pppMyanmarInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppMyanmarInstance.properties = params
                       
        if (!pppMyanmarInstance.save(flush: true)) {
            render([success: false, messages: pppMyanmarInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppMyanmar.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
//            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppMyanmar.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppMyanmarInstance = PppMyanmar.get(id)
        if (!pppMyanmarInstance)
            render([success: false] as JSON)
        else {
            try {
                pppMyanmarInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppMyanmarInstance = PppMyanmar.get(params.id)
        if (!pppMyanmarInstance) {
            render(
                message : "pppMyanmar.not.found",
            ) as JSON

        }
        else {
            render([pppMyanmarInstance : pppMyanmarInstance ] as JSON)
        }
    }
}
