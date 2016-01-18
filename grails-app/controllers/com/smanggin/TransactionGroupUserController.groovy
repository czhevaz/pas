package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * TransactionGroupUserController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class TransactionGroupUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = TransactionGroupUser.createCriteria().list(params){}
        [transactionGroupUserInstanceList: results, transactionGroupUserInstanceTotal: results.totalCount]
    }

    def create() {
        [transactionGroupUserInstance: new TransactionGroupUser(params)]
    }

    def save() {
        def transactionGroupUserInstance = new TransactionGroupUser(params)
        if (!transactionGroupUserInstance.save(flush: true)) {
            render(view: "create", model: [transactionGroupUserInstance: transactionGroupUserInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), transactionGroupUserInstance.id])
        redirect(action: "show", id: transactionGroupUserInstance.id)
    }

    def show() {
        def transactionGroupUserInstance = TransactionGroupUser.get(params.id)
        if (!transactionGroupUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])
            redirect(action: "list")
            return
        }

        [transactionGroupUserInstance: transactionGroupUserInstance]
    }

    def edit() {
        def transactionGroupUserInstance = TransactionGroupUser.get(params.id)
        if (!transactionGroupUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])
            redirect(action: "list")
            return
        }

        [transactionGroupUserInstance: transactionGroupUserInstance]
    }

    def update() {
        def transactionGroupUserInstance = TransactionGroupUser.get(params.id)
        if (!transactionGroupUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (transactionGroupUserInstance.version > version) {
                transactionGroupUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser')] as Object[],
                          "Another user has updated this TransactionGroupUser while you were editing")
                render(view: "edit", model: [transactionGroupUserInstance: transactionGroupUserInstance])
                return
            }
        }

        transactionGroupUserInstance.properties = params

        if (!transactionGroupUserInstance.save(flush: true)) {
            render(view: "edit", model: [transactionGroupUserInstance: transactionGroupUserInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), transactionGroupUserInstance.id])
        redirect(action: "show", id: transactionGroupUserInstance.id)
    }

    def delete() {
        def transactionGroupUserInstance = TransactionGroupUser.get(params.id)
        if (!transactionGroupUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])
            redirect(action: "list")
            return
        }

        try {
            transactionGroupUserInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def transactionGroupUserInstance = (params.id) ? TransactionGroupUser.get(params.id) : new TransactionGroupUser()
        
        if (!transactionGroupUserInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (transactionGroupUserInstance.version > version) {
                    transactionGroupUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser')] as Object[],
                              "Another user has updated this TransactionGroupUser while you were editing")
                    render([success: false, messages: transactionGroupUserInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        transactionGroupUserInstance.properties = params
                       
        if (!transactionGroupUserInstance.save(flush: true)) {
            render([success: false, messages: transactionGroupUserInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = TransactionGroupUser.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render TransactionGroupUser.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def transactionGroupUserInstance = TransactionGroupUser.get(id)
        if (!transactionGroupUserInstance)
            render([success: false] as JSON)
        else {
            try {
                transactionGroupUserInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def transactionGroupUserInstance = TransactionGroupUser.get(params.id)
        if (!transactionGroupUserInstance) {
            render(
                message : "transactionGroupUser.not.found",
            ) as JSON

        }
        else {
            render([transactionGroupUserInstance : transactionGroupUserInstance ] as JSON)
        }
    }
}
