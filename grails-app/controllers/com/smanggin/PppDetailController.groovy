package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * PppDetailController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class PppDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = PppDetail.createCriteria().list(params){}
        [pppDetailInstanceList: results, pppDetailInstanceTotal: results.totalCount]
    }

    def create() {
        [pppDetailInstance: new PppDetail(params)]
    }

    def save() {
        def pppDetailInstance = new PppDetail(params)
        if (!pppDetailInstance.save(flush: true)) {
            render(view: "create", model: [pppDetailInstance: pppDetailInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), pppDetailInstance.id])
        redirect(action: "show", id: pppDetailInstance.id)
    }

    def show() {
        def pppDetailInstance = PppDetail.get(params.id)
        if (!pppDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])
            redirect(action: "list")
            return
        }

        [pppDetailInstance: pppDetailInstance]
    }

    def edit() {
        def pppDetailInstance = PppDetail.get(params.id)
        if (!pppDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])
            redirect(action: "list")
            return
        }

        [pppDetailInstance: pppDetailInstance]
    }

    def update() {
        def pppDetailInstance = PppDetail.get(params.id)
        if (!pppDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pppDetailInstance.version > version) {
                pppDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pppDetail.label', default: 'PppDetail')] as Object[],
                          "Another user has updated this PppDetail while you were editing")
                render(view: "edit", model: [pppDetailInstance: pppDetailInstance])
                return
            }
        }

        pppDetailInstance.properties = params

        if (!pppDetailInstance.save(flush: true)) {
            render(view: "edit", model: [pppDetailInstance: pppDetailInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), pppDetailInstance.id])
        redirect(action: "show", id: pppDetailInstance.id)
    }

    def delete() {
        def pppDetailInstance = PppDetail.get(params.id)
        if (!pppDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pppDetailInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def pppDetailInstance = (params.id) ? PppDetail.get(params.id) : new PppDetail()
        
        if (!pppDetailInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'pppDetail.label', default: 'PppDetail'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (pppDetailInstance.version > version) {
                    pppDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'pppDetail.label', default: 'PppDetail')] as Object[],
                              "Another user has updated this PppDetail while you were editing")
                    render([success: false, messages: pppDetailInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        pppDetailInstance.properties = params
                       
        if (!pppDetailInstance.save(flush: true)) {
            render([success: false, messages: pppDetailInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = PppDetail.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.pppNumber){
            def results = PppDetail.findAllByPppNumber(params.pppNumber)
            render results as JSON
        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render PppDetail.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def pppDetailInstance = PppDetail.get(id)
        if (!pppDetailInstance)
            render([success: false] as JSON)
        else {
            try {
                pppDetailInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def pppDetailInstance = PppDetail.get(params.id)
        if (!pppDetailInstance) {
            render(
                message : "pppDetail.not.found",
            ) as JSON

        }
        else {
            render([pppDetailInstance : pppDetailInstance ] as JSON)
        }
    }


   

}
