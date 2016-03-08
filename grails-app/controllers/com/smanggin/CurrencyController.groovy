package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * CurrencyController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class CurrencyController {

	def globalService
    def baseCurrency = Currency.findByBaseCurrencyAndActive(true,'Yes')
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Currency.createCriteria().list(params){}
        [currencyInstanceList: results, currencyInstanceTotal: results.totalCount]
    }

    def create() {
        [currencyInstance: new Currency(params)]
    }

    def save() {
        def currencyInstance = new Currency(params)
        currencyInstance.active = params.active?'Yes':'No'
        if (!currencyInstance.save(flush: true)) {
            render(view: "create", model: [currencyInstance: currencyInstance])
            return
        }

        if(params.baseCurrency){
            def currencys = Currency.createCriteria().list(){
                ne('code',params.code)
            }

            currencys.each{
                it.baseCurrency = false
                it.save()
            }
        }


		flash.message = message(code: 'default.created.message', args: [message(code: 'currency.label', default: 'Currency'), currencyInstance.id])
        redirect(action: "show", id: currencyInstance.id)
    }

    def show() {
        //def currencyInstance = Currency.get(params.id)
        def currencyInstance = Currency.findByCode(params.code)
        if (!currencyInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            redirect(action: "list")
            return
        }

        [currencyInstance: currencyInstance]
    }

    def edit() {
        def currencyInstance = Currency.findByCode(params.code)
        if (!currencyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            redirect(action: "list")
            return
        }

        [currencyInstance: currencyInstance]
    }

    def update() {
        
        def currencyInstance = Currency.findByCode(params.code)

        
        if(params.baseCurrency){
            def baseCurrency = Currency.findAllByBaseCurrency(true)    
            println "baseCurrency" +baseCurrency
            baseCurrency.each{
                it.baseCurrency =false
                if(!it.save(validate:false)){
                    println it.errors
                }    

            }
        }else{
            def baseCurrency = Currency.createCriteria().list(){
                ne('code',params.code)
                eq('baseCurrency',true)
            }
            println " false baseCurrency" + baseCurrency
            if(baseCurrency.size() == 0){
                currencyInstance.errors.rejectValue("baseCurrency", "default.baseCurrency.haveOne.failure",
                          [message(code: 'currency.label', default: 'Currency')] as Object[],
                          "Currency must have one Base Currency")
                render(view: "edit", model: [currencyInstance: currencyInstance])
                return
            }
        }
        
        if (!currencyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.code])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (currencyInstance.version > version) {
                currencyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'currency.label', default: 'Currency')] as Object[],
                          "Another user has updated this Currency while you were editing")
                render(view: "edit", model: [currencyInstance: currencyInstance])
                return
            }
        }

        
        currencyInstance.properties = params
        currencyInstance.active = (params.active=="on"?"Yes":"No")
        currencyInstance.name = params.name
       
        if (!currencyInstance.save(validate:false)) {

            render(view: "edit", model: [currencyInstance: currencyInstance])
            return
        }

        


		flash.message = message(code: 'default.updated.message', args: [message(code: 'currency.label', default: 'Currency'), currencyInstance.code])
        redirect(action: "show", params:['code':currencyInstance.code])
    }

    def delete() {
        def currencyInstance = Currency.get(params.id)
        if (!currencyInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            redirect(action: "list")
            return
        }

        try {
            currencyInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def currencyInstance = (params.id) ? Currency.get(params.id) : new Currency()
        
        if (!currencyInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (currencyInstance.version > version) {
                    currencyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'currency.label', default: 'Currency')] as Object[],
                              "Another user has updated this Currency while you were editing")
                    render([success: false, messages: currencyInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        currencyInstance.properties = params
                       
        if (!currencyInstance.save(flush: true)) {
            render([success: false, messages: currencyInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        
        
        def date = globalService.stringToDate(params.date,'yyyy-MM-dd')
        println "params.date" +params.date
        println "date" + date
        

        if(params.masterField){
            def c = Currency.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.code){
        	def value=1
            def rateDetailId

        	def localCurrency = Currency.findByCodeAndActive(params.code,'Yes')
        	def rate = Rate.createCriteria().list(params){
        	
	        	le('starDate',date)
	        	ge('endDate',date)
	        	maxResults(1)
	        }

	        
	        if(rate){
	        	def rateDetail = RateDetail.createCriteria().list(){
		        	eq('rate.id',rate[0].id)
		        	eq('currency1',localCurrency)
		        	eq('currency2',baseCurrency)
		        	maxResults(1)
		        }
		    
		        
		        if(rateDetail){
		        	value = rateDetail[0]?.value
                    rateDetailId = rateDetail[0]?.id
		        }

                 println "exchange arate"+rateDetail	
	        }
	         
	        render ([value:value,rateDetailId:rateDetailId]  as JSON)
        }else if(params.country){
            if(params.country == "Indonesia"){
                params.country = "Head Office"
            }
            def value=1
            def rateDetailId
        
            def localCurrency = Currency.findByCountryAndActive(params.country,'Yes')
            def rate = Rate.createCriteria().list(params){
            
                le('starDate',date)
                ge('endDate',date)
                maxResults(1)
            }

            
            if(rate){
                def rateDetail = RateDetail.createCriteria().list(){
                    eq('rate.id',rate[0].id)
                    eq('currency1',localCurrency)
                    eq('currency2',baseCurrency)
                    maxResults(1)
                }
            
                
                if(rateDetail){
                    value = rateDetail[0]?.value
                    rateDetailId = rateDetail[0]?.id
                }   
            }

            render ([value:value,code:localCurrency?.code,rateDetailId:rateDetailId]  as JSON)    
        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Currency.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def currencyInstance = Currency.get(id)
        if (!currencyInstance)
            render([success: false] as JSON)
        else {
            try {
                currencyInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def currencyInstance = Currency.get(params.id)
        if (!currencyInstance) {
            render(
                message : "currency.not.found",
            ) as JSON

        }
        else {
            render([currencyInstance : currencyInstance ] as JSON)
        }
    }
}
