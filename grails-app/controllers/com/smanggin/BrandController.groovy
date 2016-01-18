package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * BrandController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class BrandController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Brand.createCriteria().list(params){}
        [brandInstanceList: results, brandInstanceTotal: results.totalCount]
    }

    def create() {
        [brandInstance: new Brand(params)]
    }

    def save() {
        def brandInstance = new Brand(params)
        if (!brandInstance.save(flush: true)) {
            render(view: "create", model: [brandInstance: brandInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'brand.label', default: 'Brand'), brandInstance.id])
        redirect(action: "show", id: brandInstance.id)
    }

    def show() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        [brandInstance: brandInstance]
    }

    def edit() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        [brandInstance: brandInstance]
    }

    def update() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (brandInstance.version > version) {
                brandInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'brand.label', default: 'Brand')] as Object[],
                          "Another user has updated this Brand while you were editing")
                render(view: "edit", model: [brandInstance: brandInstance])
                return
            }
        }

        brandInstance.properties = params

        if (!brandInstance.save(flush: true)) {
            render(view: "edit", model: [brandInstance: brandInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'brand.label', default: 'Brand'), brandInstance.id])
        redirect(action: "show", id: brandInstance.id)
    }

    def delete() {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
            return
        }

        try {
            brandInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def brandInstance = (params.id) ? Brand.get(params.id) : new Brand()
        
        if (!brandInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (brandInstance.version > version) {
                    brandInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'brand.label', default: 'Brand')] as Object[],
                              "Another user has updated this Brand while you were editing")
                    render([success: false, messages: brandInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        brandInstance.properties = params
                       
        if (!brandInstance.save(flush: true)) {
            render([success: false, messages: brandInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Brand.createCriteria()
            def results = c.list {
            	if(params.country){
            		eq('country',params.country)
            	}
                eq(params.masterField.name,params.masterField.id)    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Brand.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def brandInstance = Brand.get(id)
        if (!brandInstance)
            render([success: false] as JSON)
        else {
            try {
                brandInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            render(
                message : "brand.not.found",
            ) as JSON

        }
        else {
            render([brandInstance : brandInstance ] as JSON)
        }
    }
}
