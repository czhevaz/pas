package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppSrilankaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppSrilankaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
       // params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppSrilanka.createCriteria().list(params){}
        [pppSrilankaInstanceList: results, pppSrilankaInstanceTotal: results.totalCount]
    }

    def create() {
        [pppSrilankaInstance: new PppSrilanka(params)]
    }

    def save() {
        def pppSrilankaInstance = new PppSrilanka(params)
        if (!pppSrilankaInstance.save(flush: true)) {
            render(view: "create", model: [pppSrilankaInstance: pppSrilankaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), pppSrilankaInstance.id])
        redirect(action: "show", id: pppSrilankaInstance.id)
    }

    def show() {
        def pppSrilankaInstance = PppSrilanka.get(params.id)
        if (!pppSrilankaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])
            redirect(action: "list")
            return
        }

        [pppSrilankaInstance: pppSrilankaInstance]
    }

    def edit() {
        def pppSrilankaInstance = PppSrilanka.get(params.id)
        if (!pppSrilankaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])
            redirect(action: "list")
            return
        }

        [pppSrilankaInstance: pppSrilankaInstance]
    }

    def update() {
        def pppSrilankaInstance = PppSrilanka.get(params.id)
        if (!pppSrilankaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppSrilankaInstance.version > version) {
                pppSrilankaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppSrilanka.label', default: 'PppSrilanka')] as Object[],
                          "Another user has updated this PppSrilanka while you were editing")
                render(view: "edit", model: [pppSrilankaInstance: pppSrilankaInstance])
                return
            }
        }

        pppSrilankaInstance.properties = params

        if (!pppSrilankaInstance.save(flush: true)) {
            render(view: "edit", model: [pppSrilankaInstance: pppSrilankaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), pppSrilankaInstance.id])
        redirect(action: "show", id: pppSrilankaInstance.id)
    }

    def delete() {
        def pppSrilankaInstance = PppSrilanka.get(params.id)
        if (!pppSrilankaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppSrilankaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppSrilankaInstance = (params.id) ? PppSrilanka.get(params.id) : new PppSrilanka()
        
        if (!pppSrilankaInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppSrilanka.label', default: 'PppSrilanka'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppSrilankaInstance.version > version) {
                    pppSrilankaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppSrilanka.label', default: 'PppSrilanka')] as Object[],
                              "Another user has updated this PppSrilanka while you were editing")
                    render([success: false, messages: pppSrilankaInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppSrilankaInstance.properties = params
                       
        if (!pppSrilankaInstance.save(flush: true)) {
            render([success: false, messages: pppSrilankaInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppSrilanka.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppSrilanka.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppSrilankaInstance = PppSrilanka.get(id)
        if (!pppSrilankaInstance)
            render([success: false] as JSON)
        else {
            try {
                pppSrilankaInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppSrilankaInstance = PppSrilanka.get(params.id)
        if (!pppSrilankaInstance) {
            render(
                message : "pppSrilanka.not.found",
            ) as JSON

        }
        else {
            render([pppSrilankaInstance : pppSrilankaInstance ] as JSON)
        }
    }
}
