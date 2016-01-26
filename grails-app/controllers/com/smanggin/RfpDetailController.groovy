package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * RfpDetailController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class RfpDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = RfpDetail.createCriteria().list(params){}
        [rfpDetailInstanceList: results, rfpDetailInstanceTotal: results.totalCount]
    }

    def create() {
        [rfpDetailInstance: new RfpDetail(params)]
    }

    def save() {
        def rfpDetailInstance = new RfpDetail(params)
        if (!rfpDetailInstance.save(flush: true)) {
            render(view: "create", model: [rfpDetailInstance: rfpDetailInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), rfpDetailInstance.id])
        redirect(action: "show", id: rfpDetailInstance.id)
    }

    def show() {
        def rfpDetailInstance = RfpDetail.get(params.id)
        if (!rfpDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])
            redirect(action: "list")
            return
        }

        [rfpDetailInstance: rfpDetailInstance]
    }

    def edit() {
        def rfpDetailInstance = RfpDetail.get(params.id)
        if (!rfpDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])
            redirect(action: "list")
            return
        }

        [rfpDetailInstance: rfpDetailInstance]
    }

    def update() {
        def rfpDetailInstance = RfpDetail.get(params.id)
        if (!rfpDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rfpDetailInstance.version > version) {
                rfpDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rfpDetail.label', default: 'RfpDetail')] as Object[],
                          "Another user has updated this RfpDetail while you were editing")
                render(view: "edit", model: [rfpDetailInstance: rfpDetailInstance])
                return
            }
        }

        rfpDetailInstance.properties = params

        if (!rfpDetailInstance.save(flush: true)) {
            render(view: "edit", model: [rfpDetailInstance: rfpDetailInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), rfpDetailInstance.id])
        redirect(action: "show", id: rfpDetailInstance.id)
    }

    def delete() {
        def rfpDetailInstance = RfpDetail.get(params.id)
        if (!rfpDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            rfpDetailInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def rfpDetailInstance = (params.id) ? RfpDetail.get(params.id) : new RfpDetail()
        
        if (!rfpDetailInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'rfpDetail.label', default: 'RfpDetail'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (rfpDetailInstance.version > version) {
                    rfpDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'rfpDetail.label', default: 'RfpDetail')] as Object[],
                              "Another user has updated this RfpDetail while you were editing")
                    render([success: false, messages: rfpDetailInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        rfpDetailInstance.properties = params
                       
        if (!rfpDetailInstance.save(flush: true)) {
            render([success: false, messages: rfpDetailInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = RfpDetail.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render RfpDetail.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def rfpDetailInstance = RfpDetail.get(id)
        if (!rfpDetailInstance)
            render([success: false] as JSON)
        else {
            try {
                rfpDetailInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def rfpDetailInstance = RfpDetail.get(params.id)
        if (!rfpDetailInstance) {
            render(
                message : "rfpDetail.not.found",
            ) as JSON

        }
        else {
            render([rfpDetailInstance : rfpDetailInstance ] as JSON)
        }
    }
}
