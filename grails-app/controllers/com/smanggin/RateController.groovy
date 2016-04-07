package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * RateController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class RateController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def globalService
    def syncDatabaseService
        
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Rate.createCriteria().list(params){}
        [rateInstanceList: results, rateInstanceTotal: results.totalCount]
    }

    def create() {
        [rateInstance: new Rate(params)]
    }

    def save() {
        def rateInstance = new Rate(params)
        
        rateInstance.properties = params
        def filterDate = globalService.filterDate(rateInstance.starDate,rateInstance.endDate)
        def startDate = filterDate.start
        def endDate = filterDate.end
        
        rateInstance.starDate = startDate
        rateInstance.endDate = endDate
        
        def check = checkPeriode(startDate, endDate,null)

        if(check){
            flash.error = 'overlap with other Period ' 
            render(view: "create", model: [rateInstance: rateInstance])
        }else{
            if (!rateInstance.save(flush: true)) {
                render(view: "create", model: [rateInstance: rateInstance])
                return
            }

    		flash.message = message(code: 'default.created.message', args: [message(code: 'rate.label', default: 'Rate'), rateInstance.id])
            redirect(action: "show", id: rateInstance.id)
        }
    }

    def show() {
        def rateInstance = Rate.get(params.id)
        syncDatabaseService.syncRateDetailFromProxy()
        if (!rateInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])
            redirect(action: "list")
            return
        }

        [rateInstance: rateInstance]
    }

    def edit() {
        def rateInstance = Rate.get(params.id)
        
        if (!rateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])
            redirect(action: "list")
            return
        }

        [rateInstance: rateInstance]
    }

    def update() {
        def rateInstance = Rate.get(params.id)

        
        if (!rateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (rateInstance.version > version) {
                rateInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rate.label', default: 'Rate')] as Object[],
                          "Another user has updated this Rate while you were editing")
                render(view: "edit", model: [rateInstance: rateInstance])
                return
            }
        }

        rateInstance.properties = params
        def filterDate = globalService.filterDate(rateInstance.starDate,rateInstance.endDate)
        def startDate = filterDate.start
        def endDate = filterDate.end

        rateInstance.starDate = startDate
        rateInstance.endDate = endDate
        def check = checkPeriode(startDate, endDate,params.id?.toLong())
        
        if(check){
                flash.error = ' overlap with other Period ' 
                render(view: "edit", model: [rateInstance: rateInstance])
        }else{
            if (!rateInstance.save(flush: true)) {
                render(view: "edit", model: [rateInstance: rateInstance])
                return
            }

    		flash.message = message(code: 'default.updated.message', args: [message(code: 'rate.label', default: 'Rate'), rateInstance.id])
            redirect(action: "show", id: rateInstance.id)
        }    
    }

    def delete() {
        def rateInstance = Rate.get(params.id)
        if (!rateInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])
            redirect(action: "list")
            return
        }

        try {
            rateInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def rateInstance = (params.id) ? Rate.get(params.id) : new Rate()
        
        if (!rateInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'rate.label', default: 'Rate'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (rateInstance.version > version) {
                    rateInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'rate.label', default: 'Rate')] as Object[],
                              "Another user has updated this Rate while you were editing")
                    render([success: false, messages: rateInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        rateInstance.properties = params
                       
        if (!rateInstance.save(flush: true)) {
            render([success: false, messages: rateInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Rate.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Rate.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def rateInstance = Rate.get(id)
        if (!rateInstance)
            render([success: false] as JSON)
        else {
            try {
                rateInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def rateInstance = Rate.get(params.id)
        if (!rateInstance) {
            render(
                message : "rate.not.found",
            ) as JSON

        }
        else {
            render([rateInstance : rateInstance ] as JSON)
        }
    }

     def checkPeriode(startDate,endDate,id){

     
        def rate = Rate.withCriteria{    
            if(id){
                ne('id',id)
            }

            gt('endDate',startDate)
            /*or{
               between('starDate',startDate,endDate) 
               between('endDate',startDate,endDate)
            } */   
               
        }
        def state = false
        if(rate.size() > 0){
            state = true
        }

        return state
    }
}
