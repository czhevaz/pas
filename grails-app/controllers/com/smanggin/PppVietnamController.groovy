package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppVietnamController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppVietnamController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppVietnam.createCriteria().list(params){}
        [pppVietnamInstanceList: results, pppVietnamInstanceTotal: results.totalCount]
    }

    def create() {
        [pppVietnamInstance: new PppVietnam(params)]
    }

    def save() {
        def pppVietnamInstance = new PppVietnam(params)
        if (!pppVietnamInstance.save(flush: true)) {
            render(view: "create", model: [pppVietnamInstance: pppVietnamInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), pppVietnamInstance.id])
        redirect(action: "show", id: pppVietnamInstance.id)
    }

    def show() {
        def pppVietnamInstance = PppVietnam.get(params.id)
        if (!pppVietnamInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])
            redirect(action: "list")
            return
        }

        [pppVietnamInstance: pppVietnamInstance]
    }

    def edit() {
        def pppVietnamInstance = PppVietnam.get(params.id)
        if (!pppVietnamInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])
            redirect(action: "list")
            return
        }

        [pppVietnamInstance: pppVietnamInstance]
    }

    def update() {
        def pppVietnamInstance = PppVietnam.get(params.id)
        if (!pppVietnamInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppVietnamInstance.version > version) {
                pppVietnamInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppVietnam.label', default: 'PppVietnam')] as Object[],
                          "Another user has updated this PppVietnam while you were editing")
                render(view: "edit", model: [pppVietnamInstance: pppVietnamInstance])
                return
            }
        }

        pppVietnamInstance.properties = params

        if (!pppVietnamInstance.save(flush: true)) {
            render(view: "edit", model: [pppVietnamInstance: pppVietnamInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), pppVietnamInstance.id])
        redirect(action: "show", id: pppVietnamInstance.id)
    }

    def delete() {
        def pppVietnamInstance = PppVietnam.get(params.id)
        if (!pppVietnamInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppVietnamInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppVietnamInstance = (params.id) ? PppVietnam.get(params.id) : new PppVietnam()
        
        if (!pppVietnamInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppVietnam.label', default: 'PppVietnam'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppVietnamInstance.version > version) {
                    pppVietnamInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppVietnam.label', default: 'PppVietnam')] as Object[],
                              "Another user has updated this PppVietnam while you were editing")
                    render([success: false, messages: pppVietnamInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppVietnamInstance.properties = params
                       
        if (!pppVietnamInstance.save(flush: true)) {
            render([success: false, messages: pppVietnamInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppVietnam.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppVietnam.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppVietnamInstance = PppVietnam.get(id)
        if (!pppVietnamInstance)
            render([success: false] as JSON)
        else {
            try {
                pppVietnamInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppVietnamInstance = PppVietnam.get(params.id)
        if (!pppVietnamInstance) {
            render(
                message : "pppVietnam.not.found",
            ) as JSON

        }
        else {
            render([pppVietnamInstance : pppVietnamInstance ] as JSON)
        }
    }
}
