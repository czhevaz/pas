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
        
        
            
        if(checkApprover(params)){

            approvalDetailInstance.properties = params
            approvalDetailInstance.country = Country.findByName(params.countryName)
            approvalDetailInstance.transactionType = TransactionType.get(params.transactionTypeId)
            if(params.lobCode){
                approvalDetailInstance.lob = params.lobCode
                approvalDetailInstance.brand = params.brandCode    
            }
            
            approvalDetailInstance.creator = User.findByLogin(params.creatorId)
            approvalDetailInstance.approver = User.findByLogin(params.approverId)
            
            if(!params.id){
                approvalDetailInstance.inActive = false    
            }
            
            if(params.inActive == '1'){
                approvalDetailInstance.dateInActive = new Date()
            }
            else{
                approvalDetailInstance.dateInActive = null
            }

            if (!approvalDetailInstance.save(flush: true)) {
                render([success: false, messages: approvalDetailInstance.errors] as JSON)
                return
            }
                            
            render([success: true] as JSON)    

        }else{
            approvalDetailInstance.errors.rejectValue("version", "default.approvalDetail.unique.failure",
                              [message(code: 'approvalDetail.label', default: 'ApprovalDetail')] as Object[],
                              "Country , Lob, Brand , no Sequential, and Approver must be Unique")
            render([success: false, messages: approvalDetailInstance.errors] as JSON)
        }               
        
    }

    def jlist() {
        println params
        if(params.sort == 'creatorId'){
            params.sort  = 'creator'
        }
        if(params.sort == 'approverId'){
            params.sort  = 'approver'
        }

        if(params.sort == 'brandCode'){
            params.sort  = 'brand'
        }

        if(params.sort == 'lobCode'){
            params.sort  = 'lob'
        }
        if(params.sort == 'countryName'){
            params.sort  = 'country'
        }

        params.order = params.order ?: 'asc' 
        params.sort = params.sort ?: 'inActive' 
        if(params.masterField){
            def c = ApprovalDetail.createCriteria()
            def results = c.list(params) {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            //params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render ApprovalDetail.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
       // println params
        def approvalDetailInstance = ApprovalDetail.get(id)
        def poApprover = PurchaseOrderApprover.findByApprovalDetail(approvalDetailInstance)

        if (!approvalDetailInstance){
            render([success: false] as JSON)
        }else if(poApprover){
            def error = [message: message(code: 'default.cannot.delete.message', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail'), params.id])]
            render([success: false, messages: error.message] as JSON)
        }
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

    def checkApprover(params){
        def transactionType = TransactionType.get(params.transactionTypeId)
        def approvalDetail = ApprovalDetail.createCriteria().list(){
            and{
                country{
                    like('name',params.countryName)
                }

                if(transactionType.code != 'RFP'){
                    like('lob',params.lobCode)
                    like('brand',params.brandCode)    
                }
                
                eq('noSeq',params.noSeq?.toLong())
                
                eq('transactionType',transactionType)

                eq('inActive',false)

                if(params.id){
                    ne('id',params.id.toLong())   
                }
                
            }
        }

        println '(approvalDetail)  >>>. ' + approvalDetail
        if(approvalDetail.size() > 0){
            return false
        }else{
            return true
        }
    }
}
