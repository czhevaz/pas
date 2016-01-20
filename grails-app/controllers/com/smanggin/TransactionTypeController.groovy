package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * TransactionTypeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class TransactionTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = TransactionType.createCriteria().list(params){}
        [transactionTypeInstanceList: results, transactionTypeInstanceTotal: results.totalCount]
    }

    def create() {
        [transactionTypeInstance: new TransactionType(params)]
    }

    def save() {
        def transactionTypeInstance = new TransactionType(params)
        if (!transactionTypeInstance.save(flush: true)) {
            render(view: "create", model: [transactionTypeInstance: transactionTypeInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), transactionTypeInstance.id])
        redirect(action: "show", id: transactionTypeInstance.id)
    }

    def show() {
        def transactionTypeInstance = TransactionType.get(params.id)
        if (!transactionTypeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])
            redirect(action: "list")
            return
        }

        [transactionTypeInstance: transactionTypeInstance]
    }

    def edit() {
        def transactionTypeInstance = TransactionType.get(params.id)
        if (!transactionTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])
            redirect(action: "list")
            return
        }

        [transactionTypeInstance: transactionTypeInstance]
    }

    def update() {
        def transactionTypeInstance = TransactionType.get(params.id)
        if (!transactionTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (transactionTypeInstance.version > version) {
                transactionTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transactionType.label', default: 'TransactionType')] as Object[],
                          "Another user has updated this TransactionType while you were editing")
                render(view: "edit", model: [transactionTypeInstance: transactionTypeInstance])
                return
            }
        }

        transactionTypeInstance.properties = params

        if (!transactionTypeInstance.save(flush: true)) {
            render(view: "edit", model: [transactionTypeInstance: transactionTypeInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), transactionTypeInstance.id])
        redirect(action: "show", id: transactionTypeInstance.id)
    }

    def delete() {
        def transactionTypeInstance = TransactionType.get(params.id)
        if (!transactionTypeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])
            redirect(action: "list")
            return
        }

        try {
            transactionTypeInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def transactionTypeInstance = (params.id) ? TransactionType.get(params.id) : new TransactionType()
        
        if (!transactionTypeInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'transactionType.label', default: 'TransactionType'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (transactionTypeInstance.version > version) {
                    transactionTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'transactionType.label', default: 'TransactionType')] as Object[],
                              "Another user has updated this TransactionType while you were editing")
                    render([success: false, messages: transactionTypeInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        transactionTypeInstance.properties = params
                       
        if (!transactionTypeInstance.save(flush: true)) {
            render([success: false, messages: transactionTypeInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = TransactionType.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.creator){
            def approvalDetail = ApprovalDetail.createCriteria().list(){
                country{
                   eq('name',params.country)     
                }
                eq('lob',params.lob)
                eq('brand',params.brand)
                creator{
                    eq('login',params.user)
                }
                projections{
                    groupProperty('transactionType')        
                }
            }

            println approvalDetail
                
            render approvalDetail as JSON
        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render TransactionType.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def transactionTypeInstance = TransactionType.get(id)
        if (!transactionTypeInstance)
            render([success: false] as JSON)
        else {
            try {
                transactionTypeInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def transactionTypeInstance = TransactionType.get(params.id)
        if (!transactionTypeInstance) {
            render(
                message : "transactionType.not.found",
            ) as JSON

        }
        else {
            render([transactionTypeInstance : transactionTypeInstance ] as JSON)
        }
    }
}
