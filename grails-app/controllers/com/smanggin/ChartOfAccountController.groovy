package com.smanggin

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * ChartOfAccountController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class ChartOfAccountController {
    def syncDatabaseService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = ChartOfAccount.createCriteria().list(params){}
        [chartOfAccountInstanceList: results, chartOfAccountInstanceTotal: results.totalCount]
    }


    def create() {
        [chartOfAccountInstance: new ChartOfAccount(params)]
    }

    def save() {
        def chartOfAccountInstance = new ChartOfAccount(params)
        if (!chartOfAccountInstance.save(flush: true)) {
            render(view: "create", model: [chartOfAccountInstance: chartOfAccountInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), chartOfAccountInstance.id])
        redirect(action: "show", id: chartOfAccountInstance.id)
    }

    def show() {
        def chartOfAccountInstance = ChartOfAccount.get(params.id)
        if (!chartOfAccountInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])
            redirect(action: "list")
            return
        }

        [chartOfAccountInstance: chartOfAccountInstance]
    }

    def edit() {
        def chartOfAccountInstance = ChartOfAccount.get(params.id)
        if (!chartOfAccountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])
            redirect(action: "list")
            return
        }

        [chartOfAccountInstance: chartOfAccountInstance]
    }

    def update() {
        def chartOfAccountInstance = ChartOfAccount.get(params.id)
        if (!chartOfAccountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (chartOfAccountInstance.version > version) {
                chartOfAccountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'chartOfAccount.label', default: 'ChartOfAccount')] as Object[],
                          "Another user has updated this ChartOfAccount while you were editing")
                render(view: "edit", model: [chartOfAccountInstance: chartOfAccountInstance])
                return
            }
        }

        chartOfAccountInstance.properties = params

        if (!chartOfAccountInstance.save(flush: true)) {
            render(view: "edit", model: [chartOfAccountInstance: chartOfAccountInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), chartOfAccountInstance.id])
        redirect(action: "show", id: chartOfAccountInstance.id)
    }

    def delete() {
        def chartOfAccountInstance = ChartOfAccount.get(params.id)
        if (!chartOfAccountInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])
            redirect(action: "list")
            return
        }

        try {
            chartOfAccountInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def chartOfAccountInstance = (params.id) ? ChartOfAccount.get(params.id) : new ChartOfAccount()
        
        if (!chartOfAccountInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'chartOfAccount.label', default: 'ChartOfAccount'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (chartOfAccountInstance.version > version) {
                    chartOfAccountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'chartOfAccount.label', default: 'ChartOfAccount')] as Object[],
                              "Another user has updated this ChartOfAccount while you were editing")
                    render([success: false, messages: chartOfAccountInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        chartOfAccountInstance.properties = params
                       
        if (!chartOfAccountInstance.save(flush: true)) {
            render([success: false, messages: chartOfAccountInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        println "params"+params
        if(params.masterField){
            def c = ChartOfAccount.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.country){
            
            def country = Country.findByName(params.country)
            def lob = Lob.findByCode(params.lob)
            def c = ChartOfAccount.createCriteria()

            def results = c.list(params) {
                eq('segment05',lob?.codeCoa)
                if(country?.codeCoa != '999'){
                    eq('segment06',country?.codeCoa)        
                }
                if(params.brand){
                    eq('segment04',params.brand)
                }
                
            }
            render results as JSON
        }
        else
        {
            //arams.max = Math.min(params.max ? params.int('max') : 10, 100)
            render ChartOfAccount.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def chartOfAccountInstance = ChartOfAccount.get(id)
        if (!chartOfAccountInstance)
            render([success: false] as JSON)
        else {
            try {
                chartOfAccountInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def chartOfAccountInstance = ChartOfAccount.get(params.id)
        if (!chartOfAccountInstance) {
            render(
                message : "chartOfAccount.not.found",
            ) as JSON

        }
        else {
            render([chartOfAccountInstance : chartOfAccountInstance ] as JSON)
        }
    }


    def snycCoa(){
        syncDatabaseService.syncCOAFromProxy()
    }
}
