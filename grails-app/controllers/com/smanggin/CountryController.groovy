package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * CountryController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class CountryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Country.createCriteria().list(params){}
        [countryInstanceList: results, countryInstanceTotal: results.totalCount]
    }

    def create() {
        [countryInstance: new Country(params)]
    }

    def save() {
        def countryInstance = new Country(params)
        if (!countryInstance.save(flush: true)) {
            render(view: "create", model: [countryInstance: countryInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'country.label', default: 'Country'), countryInstance.id])
        redirect(action: "show", id: countryInstance.id)
    }

    def show() {
        
        def countryInstance = Country.findByName(params.name)
        if (!countryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "list")
            return
        }

        [countryInstance: countryInstance]
    }

    def edit() {
        def countryInstance = Country.findByName(params.name)
        if (!countryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "list")
            return
        }

        [countryInstance: countryInstance]
    }

    def update() {
        
        def countryInstance = Country.findByName(params.name)

        
        if (!countryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (countryInstance.version > version) {
                countryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'country.label', default: 'Country')] as Object[],
                          "Another user has updated this Country while you were editing")
                render(view: "edit", model: [countryInstance: countryInstance])
                return
            }
        }

        //countryInstance.properties = params
        countryInstance.name=params.name
        countryInstance.code = params.code
        countryInstance.active = params.active?'Yes':'No'

        if (!countryInstance.save(validate: false)) {
            render(view: "edit", model: [countryInstance: countryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'country.label', default: 'Country'), countryInstance.name])
        redirect(action: "show",  params:['name':countryInstance.name] )
    }

    def delete() {
        def countryInstance = Country.findByName(params.name)
        if (!countryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "list")
            return
        }

        try {
            countryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def countryInstance = (params.name) ? Country.get((params.name)) : new Country()
        
        if (!countryInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (countryInstance.version > version) {
                    countryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'country.label', default: 'Country')] as Object[],
                              "Another user has updated this Country while you were editing")
                    render([success: false, messages: countryInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        countryInstance.properties = params
                       
        if (!countryInstance.save(flush: true)) {
            render([success: false, messages: countryInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Country.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Country.list(params) as JSON           
        }
        
    }   

    def jdelete(String name) {
        def countryInstance = Country.findByName(params.name)
        if (!countryInstance)
            render([success: false] as JSON)
        else {
            try {
                countryInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def countryInstance = Country.get(params.id)
        if (!countryInstance) {
            render(
                message : "country.not.found",
            ) as JSON

        }
        else {
            render([countryInstance : countryInstance ] as JSON)
        }
    }
}
