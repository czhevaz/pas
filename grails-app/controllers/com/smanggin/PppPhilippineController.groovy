package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppPhilippineController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppPhilippineController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppPhilippine.createCriteria().list(params){
            if(params.countryName){
                country{
                    eq('name',params.countryName)
                }    
            }
    
        }
        [pppPhilippineInstanceList: results, pppPhilippineInstanceTotal: results.totalCount]
    }

    def create() {
        [pppPhilippineInstance: new PppPhilippine(params)]
    }

    def save() {
        def pppPhilippineInstance = new PppPhilippine(params)
        if (!pppPhilippineInstance.save(flush: true)) {
            render(view: "create", model: [pppPhilippineInstance: pppPhilippineInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), pppPhilippineInstance.id])
        redirect(action: "show", id: pppPhilippineInstance.id)
    }

    def show() {
        //def pppPhilippineInstance = PppPhilippine.get(params.id)
        def pppPhilippineInstance = PppPhilippine.findByNumber(params.number)
        if (!pppPhilippineInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])
            redirect(action: "list")
            return
        }

        [pppPhilippineInstance: pppPhilippineInstance]
    }

    def edit() {
        def pppPhilippineInstance = PppPhilippine.get(params.id)
        if (!pppPhilippineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])
            redirect(action: "list")
            return
        }

        [pppPhilippineInstance: pppPhilippineInstance]
    }

    def update() {
        def pppPhilippineInstance = PppPhilippine.get(params.id)
        if (!pppPhilippineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppPhilippineInstance.version > version) {
                pppPhilippineInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppPhilippine.label', default: 'PppPhilippine')] as Object[],
                          "Another user has updated this PppPhilippine while you were editing")
                render(view: "edit", model: [pppPhilippineInstance: pppPhilippineInstance])
                return
            }
        }

        pppPhilippineInstance.properties = params

        if (!pppPhilippineInstance.save(flush: true)) {
            render(view: "edit", model: [pppPhilippineInstance: pppPhilippineInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), pppPhilippineInstance.id])
        redirect(action: "show", id: pppPhilippineInstance.id)
    }

    def delete() {
        def pppPhilippineInstance = PppPhilippine.get(params.id)
        if (!pppPhilippineInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppPhilippineInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppPhilippineInstance = (params.id) ? PppPhilippine.get(params.id) : new PppPhilippine()
        
        if (!pppPhilippineInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppPhilippine.label', default: 'PppPhilippine'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppPhilippineInstance.version > version) {
                    pppPhilippineInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppPhilippine.label', default: 'PppPhilippine')] as Object[],
                              "Another user has updated this PppPhilippine while you were editing")
                    render([success: false, messages: pppPhilippineInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppPhilippineInstance.properties = params
                       
        if (!pppPhilippineInstance.save(flush: true)) {
            render([success: false, messages: pppPhilippineInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppPhilippine.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppPhilippine.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppPhilippineInstance = PppPhilippine.get(id)
        if (!pppPhilippineInstance)
            render([success: false] as JSON)
        else {
            try {
                pppPhilippineInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppPhilippineInstance = PppPhilippine.get(params.id)
        if (!pppPhilippineInstance) {
            render(
                message : "pppPhilippine.not.found",
            ) as JSON

        }
        else {
            render([pppPhilippineInstance : pppPhilippineInstance ] as JSON)
        }
    }
}
