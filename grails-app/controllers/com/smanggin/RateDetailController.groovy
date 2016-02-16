package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * RateDetailController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class RateDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = RateDetail.createCriteria().list(params){}
        [rateDetailInstanceList: results, rateDetailInstanceTotal: results.totalCount]
    }

    def create() {
        [rateDetailInstance: new RateDetail(params)]
    }

    def save() {
        def rateDetailInstance = new RateDetail(params)
        if (!rateDetailInstance.save(flush: true)) {
            render(view: "create", model: [rateDetailInstance: rateDetailInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), rateDetailInstance.id])
        redirect(action: "show", id: rateDetailInstance.id)
    }

    def show() {
        def rateDetailInstance = RateDetail.get(params.id)
        if (!rateDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])
            redirect(action: "list")
            return
        }

        [rateDetailInstance: rateDetailInstance]
    }

    def edit() {
        def rateDetailInstance = RateDetail.get(params.id)
        if (!rateDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])
            redirect(action: "list")
            return
        }

        [rateDetailInstance: rateDetailInstance]
    }

    def update() {
        
        def rateDetailInstance = RateDetail.get(params.id)
        if (!rateDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rateDetailInstance.version > version) {
                rateDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rateDetail.label', default: 'RateDetail')] as Object[],
                          "Another user has updated this RateDetail while you were editing")
                render(view: "edit", model: [rateDetailInstance: rateDetailInstance])
                return
            }
        }

        rateDetailInstance.properties = params



        if (!rateDetailInstance.save(flush: true)) {
            render(view: "edit", model: [rateDetailInstance: rateDetailInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), rateDetailInstance.id])
        redirect(action: "show", id: rateDetailInstance.id)
    }

    def delete() {
        def rateDetailInstance = RateDetail.get(params.id)
        if (!rateDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            rateDetailInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        println params
        def rateDetailInstance = (params.id) ? RateDetail.get(params.id) : new RateDetail()
        
        if (!rateDetailInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }


        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (rateDetailInstance.version > version) {
                    rateDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'rateDetail.label', default: 'RateDetail')] as Object[],
                              "Another user has updated this RateDetail while you were editing")
                    render([success: false, messages: rateDetailInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        def rate = Rate.get(params.rateId)
        def ratedetails = RateDetail.createCriteria().list(params){
            eq('rate',rate)
            eq('currency1', Currency.findByCode(params.currency1Code))
            eq('currency2', Currency.findByCode(params.currency2Code))
            if(params.id){
                ne('id',params?.id?.toLong())
            }
        }


        
        if(ratedetails){
            rateDetailInstance.errors.rejectValue("currency1", "default.currency1.unique.failure",
                      [message(code: 'rateDetail.label', default: 'RateDetail')] as Object[],
                      "Currency1 must be Unique")
            render([success: false, messages: rateDetailInstance.errors] as JSON)
        }else{
            rateDetailInstance.properties = params
             if (params.id) {
                rateDetailInstance.updatedBy = auth.user()
                rateDetailInstance.lastUpdated = new Date()
            
            }else{
                rateDetailInstance.createdBy = auth.user()
                rateDetailInstance.dateCreated = new Date()
            }
            
            rateDetailInstance.currency1 = Currency.findByCode(params.currency1Code)
            rateDetailInstance.currency2 = Currency.findByCode(params.currency2Code)
            rateDetailInstance.rate = Rate.get(params.rateId)
            

            if (!rateDetailInstance.save(flush: true)) {
                render([success: false, messages: rateDetailInstance.errors] as JSON)
                return
            }
                            
            render([success: true] as JSON)
        }

        
    }

    def jlist() {
        if(params.masterField){
            def c = RateDetail.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render RateDetail.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def rateDetailInstance = RateDetail.get(id)
        def rateInPO = PurchaseOrder.findByRateDetail(rateDetailInstance)
        println "rateInPO " +rateInPO
        if (!rateDetailInstance){
            render([success: false] as JSON)
      
        }else if(rateInPO){
            def error = [message: message(code: 'default.cannot.delete.message', args: [message(code: 'rateDetail.label', default: 'RateDetail'), params.id])]
            render([success: false, messages: error.message] as JSON)
        }else {
            try {
                rateDetailInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def rateDetailInstance = RateDetail.get(params.id)
        if (!rateDetailInstance) {
            render(
                message : "rateDetail.not.found",
            ) as JSON

        }
        else {
            render([rateDetailInstance : rateDetailInstance ] as JSON)
        }
    }
}
