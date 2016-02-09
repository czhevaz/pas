package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppIndonesiaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppIndonesiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppIndonesia.createCriteria().list(params){}
        [pppIndonesiaInstanceList: results, pppIndonesiaInstanceTotal: results.totalCount]
    }

    def create() {
        [pppIndonesiaInstance: new PppIndonesia(params)]
    }

    def save() {
        def pppIndonesiaInstance = new PppIndonesia(params)
        if (!pppIndonesiaInstance.save(flush: true)) {
            render(view: "create", model: [pppIndonesiaInstance: pppIndonesiaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), pppIndonesiaInstance.id])
        redirect(action: "show", id: pppIndonesiaInstance.id)
    }

    def show() {
        def pppIndonesiaInstance = PppIndonesia.get(params.id)
        if (!pppIndonesiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])
            redirect(action: "list")
            return
        }

        [pppIndonesiaInstance: pppIndonesiaInstance]
    }

    def edit() {
        def pppIndonesiaInstance = PppIndonesia.get(params.id)
        if (!pppIndonesiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])
            redirect(action: "list")
            return
        }

        [pppIndonesiaInstance: pppIndonesiaInstance]
    }

    def update() {
        def pppIndonesiaInstance = PppIndonesia.get(params.id)
        if (!pppIndonesiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppIndonesiaInstance.version > version) {
                pppIndonesiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppIndonesia.label', default: 'PppIndonesia')] as Object[],
                          "Another user has updated this PppIndonesia while you were editing")
                render(view: "edit", model: [pppIndonesiaInstance: pppIndonesiaInstance])
                return
            }
        }

        pppIndonesiaInstance.properties = params

        if (!pppIndonesiaInstance.save(flush: true)) {
            render(view: "edit", model: [pppIndonesiaInstance: pppIndonesiaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), pppIndonesiaInstance.id])
        redirect(action: "show", id: pppIndonesiaInstance.id)
    }

    def delete() {
        def pppIndonesiaInstance = PppIndonesia.get(params.id)
        if (!pppIndonesiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppIndonesiaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppIndonesiaInstance = (params.id) ? PppIndonesia.get(params.id) : new PppIndonesia()
        
        if (!pppIndonesiaInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppIndonesia.label', default: 'PppIndonesia'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppIndonesiaInstance.version > version) {
                    pppIndonesiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppIndonesia.label', default: 'PppIndonesia')] as Object[],
                              "Another user has updated this PppIndonesia while you were editing")
                    render([success: false, messages: pppIndonesiaInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppIndonesiaInstance.properties = params
                       
        if (!pppIndonesiaInstance.save(flush: true)) {
            render([success: false, messages: pppIndonesiaInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppIndonesia.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppIndonesia.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppIndonesiaInstance = PppIndonesia.get(id)
        if (!pppIndonesiaInstance)
            render([success: false] as JSON)
        else {
            try {
                pppIndonesiaInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppIndonesiaInstance = PppIndonesia.get(params.id)
        if (!pppIndonesiaInstance) {
            render(
                message : "pppIndonesia.not.found",
            ) as JSON

        }
        else {
            render([pppIndonesiaInstance : pppIndonesiaInstance ] as JSON)
        }
    }
}
