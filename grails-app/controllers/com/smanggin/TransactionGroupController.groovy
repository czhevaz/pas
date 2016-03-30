package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * TransactionGroupController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class TransactionGroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = TransactionGroup.createCriteria().list(params){
            if(session.userRole != 'ALL'){
                eq('country',session.userRole)    
            }
            
        }
        [transactionGroupInstanceList: results, transactionGroupInstanceTotal: results.totalCount]
    }

    def create() {
        [transactionGroupInstance: new TransactionGroup(params)]
    }

    def save() {
        def transactionGroupInstance = new TransactionGroup()
        transactionGroupInstance.properties  = params
        
        if (!transactionGroupInstance.save(flush: true)) {
            println transactionGroupInstance.errors
            render(view: "create", model: [transactionGroupInstance: transactionGroupInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), transactionGroupInstance.id])
        redirect(action: "show", id: transactionGroupInstance.id)
    }

    def show() {
        def transactionGroupInstance = TransactionGroup.get(params.id)
        if (!transactionGroupInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])
            redirect(action: "list")
            return
        }

        [transactionGroupInstance: transactionGroupInstance]
    }

    def edit() {
        def transactionGroupInstance = TransactionGroup.get(params.id)
        if (!transactionGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])
            redirect(action: "list")
            return
        }

        [transactionGroupInstance: transactionGroupInstance]
    }

    def update() {
        def transactionGroupInstance = TransactionGroup.get(params.id)
        if (!transactionGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (transactionGroupInstance.version > version) {
                transactionGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transactionGroup.label', default: 'TransactionGroup')] as Object[],
                          "Another user has updated this TransactionGroup while you were editing")
                render(view: "edit", model: [transactionGroupInstance: transactionGroupInstance])
                return
            }
        }

        transactionGroupInstance.properties = params

        if (!transactionGroupInstance.save(flush: true)) {
            render(view: "edit", model: [transactionGroupInstance: transactionGroupInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), transactionGroupInstance.id])
        redirect(action: "show", id: transactionGroupInstance.id)
    }

    def delete() {
        def transactionGroupInstance = TransactionGroup.get(params.id)
        if (!transactionGroupInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])
            redirect(action: "list")
            return
        }

        try {
            transactionGroupInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def transactionGroupInstance = (params.id) ? TransactionGroup.get(params.id) : new TransactionGroup()
        
        if (!transactionGroupInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'transactionGroup.label', default: 'TransactionGroup'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (transactionGroupInstance.version > version) {
                    transactionGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'transactionGroup.label', default: 'TransactionGroup')] as Object[],
                              "Another user has updated this TransactionGroup while you were editing")
                    render([success: false, messages: transactionGroupInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        transactionGroupInstance.properties = params
                       
        if (!transactionGroupInstance.save(flush: true)) {
            render([success: false, messages: transactionGroupInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = TransactionGroup.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.login){
            def appDetailsTrType = ApprovalDetail.createCriteria().list(){
                creator{
                    eq('login',params.login)
                }
                country{
                    eq('name',params.country)
                }
                projections{
                    groupProperty('transactionType')
                }

            }

            def results = []
            if(appDetailsTrType){
                println "session.trType " + session.trType

                results = TransactionGroup.createCriteria().list(){
                    'in'('transactionType', appDetailsTrType)
                    
                    if(session.trType){
                        transactionType{
                            eq('code',session.trType)
                        }
                    }else{
                        transactionType{
                            ne('code','RFP')
                        }
                    }

                    if(params.country){
                        eq('country',params.country)
                    }
                }  
            }
            
            render results as JSON
        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render TransactionGroup.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def transactionGroupInstance = TransactionGroup.get(id)
        if (!transactionGroupInstance)
            render([success: false] as JSON)
        else {
            try {
                transactionGroupInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def transactionGroupInstance = TransactionGroup.get(params.id)
        if (!transactionGroupInstance) {
            render(
                message : "transactionGroup.not.found",
            ) as JSON

        }
        else {
            render([transactionGroupInstance : transactionGroupInstance ] as JSON)
        }
    }
}
