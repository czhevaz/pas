package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * ApprovalDetailController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class ApprovalDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = ApprovalDetail.createCriteria().list(params){}
        [approvalDetailInstanceList: results, approvalDetailInstanceTotal: results.totalCount]
    }

    def create() {
        [approvalDetailInstance: new ApprovalDetail(params)]
    }

    def save() {
        def approvalDetailInstance = new ApprovalDetail(params)
        if (!approvalDetailInstance.save(flush: true)) {
            render(view: "create", model: [approvalDetailInstance: approvalDetailInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), approvalDetailInstance.id])
        redirect(action: "show", id: approvalDetailInstance.id)
    }

    def show() {
        def approvalDetailInstance = ApprovalDetail.get(params.id)
        if (!approvalDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])
            redirect(action: "list")
            return
        }

        [approvalDetailInstance: approvalDetailInstance]
    }

    def edit() {
        def approvalDetailInstance = ApprovalDetail.get(params.id)
        if (!approvalDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])
            redirect(action: "list")
            return
        }

        [approvalDetailInstance: approvalDetailInstance]
    }

    def update() {
        def approvalDetailInstance = ApprovalDetail.get(params.id)
        if (!approvalDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (approvalDetailInstance.version > version) {
                approvalDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'approvalDetail.label', default: 'ApprovalDetail')] as Object[],
                          "Another user has updated this ApprovalDetail while you were editing")
                render(view: "edit", model: [approvalDetailInstance: approvalDetailInstance])
                return
            }
        }

        approvalDetailInstance.properties = params

        if (!approvalDetailInstance.save(flush: true)) {
            render(view: "edit", model: [approvalDetailInstance: approvalDetailInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), approvalDetailInstance.id])
        redirect(action: "show", id: approvalDetailInstance.id)
    }

    def delete() {
        def approvalDetailInstance = ApprovalDetail.get(params.id)
        if (!approvalDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            approvalDetailInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        println params
        def approvalDetailInstance = (params.id) ? ApprovalDetail.get(params.id) : new ApprovalDetail()
        
        if (!approvalDetailInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (approvalDetailInstance.version > version) {
                    approvalDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'approvalDetail.label', default: 'ApprovalDetail')] as Object[],
                              "Another user has updated this ApprovalDetail while you were editing")
                    render([success: false, messages: approvalDetailInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        approvalDetailInstance.properties = params
        approvalDetailInstance.country = Country.findByName(params.countryName)
        approvalDetailInstance.transactionType = TransactionType.get(params.transactionTypeId)
        approvalDetailInstance.lob = params.lobCode
        approvalDetailInstance.brand = params.brandCode
        approvalDetailInstance.creator = User.findByLogin(params.creatorId)
        approvalDetailInstance.approver = User.findByLogin(params.approverId)
                       
        if (!approvalDetailInstance.save(flush: true)) {
            render([success: false, messages: approvalDetailInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = ApprovalDetail.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render ApprovalDetail.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def approvalDetailInstance = ApprovalDetail.get(id)
        if (!approvalDetailInstance)
            render([success: false] as JSON)
        else {
            try {
                approvalDetailInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def approvalDetailInstance = ApprovalDetail.get(params.id)
        if (!approvalDetailInstance) {
            render(
                message : "approvalDetail.not.found",
            ) as JSON

        }
        else {
            render([approvalDetailInstance : approvalDetailInstance ] as JSON)
        }
    }
}
