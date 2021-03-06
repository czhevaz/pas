package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * SupplierController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class SupplierController {
    def syncDatabaseService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)

        def results = Supplier.createCriteria().list(params){
            if(session.user != 'admin'){
                if(session.country){
                    countryOwnerID{
                        eq('name',session.country)
                    }    
                }

                                    
            }

            if(session.isAdmin != 'Yes') {
                eq('createdBy',session.user)        
            }
        }
        [supplierInstanceList: results, supplierInstanceTotal: results.totalCount]
    }

    def create() {
        def countryList = Country.createCriteria().list(){
            if(session.userRole != 'ALL'){
                eq('name',session.country)
            }
        }

        [supplierInstance: new Supplier(params),countryList:countryList]
    }

    def save() {
        def supplierInstance = new Supplier(params)
        supplierInstance.countryOwnerID = Country.findByName(params.countryOwnerID?.name)
        
        def findexist = Supplier.createCriteria().list(){
            eq('code',params.code)
            eq('countryOwnerID',supplierInstance.countryOwnerID)   
        }

        println findexist 
        if(findexist){
            flash.error = message(code: 'default.exist.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.code])
            redirect(action: "create", model: [supplierInstance: supplierInstance])
        }else{
            if (!supplierInstance.save(flush: true)) {
                render(view: "create", model: [supplierInstance: supplierInstance])
                return
            }

            syncDatabaseService.insertSupplierToProxy(supplierInstance)

            flash.message = message(code: 'default.created.message', args: [message(code: 'supplier.label', default: 'Supplier'), supplierInstance.name])
            redirect(action: "show", id: supplierInstance.id)    
        }

        
    }

    def show() {
        def supplierInstance = Supplier.get(params.id)
        if (!supplierInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])
            redirect(action: "list")
            return
        }

        [supplierInstance: supplierInstance]
    }

    def edit() {
        def countryList = Country.createCriteria().list(){
            if(session.userRole != 'ALL'){
                eq('name',session.country)
            }
        }
       
        def supplierInstance = Supplier.get(params.id)
        if (!supplierInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])
            redirect(action: "list")
            return
        }

        [supplierInstance: supplierInstance,countryList:countryList]
    }

    def update() {
        def supplierInstance = Supplier.get(params.id)
        if (!supplierInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (supplierInstance.version > version) {
                supplierInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'supplier.label', default: 'Supplier')] as Object[],
                          "Another user has updated this Supplier while you were editing")
                render(view: "edit", model: [supplierInstance: supplierInstance])
                return
            }
        }

        supplierInstance.properties = params

        if (!supplierInstance.save(flush: true)) {
            render(view: "edit", model: [supplierInstance: supplierInstance])
            return
        }
        
        syncDatabaseService.updateSupplierToProxy(supplierInstance)

		flash.message = message(code: 'default.updated.message', args: [message(code: 'supplier.label', default: 'Supplier'), supplierInstance.id])
        redirect(action: "show", id: supplierInstance.id)
    }

    def delete() {
        def supplierInstance = Supplier.get(params.id)
        if (!supplierInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])
            redirect(action: "list")
            return
        }

        try {
            supplierInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def supplierInstance = (params.id) ? Supplier.get(params.id) : new Supplier()
        
        if (!supplierInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'supplier.label', default: 'Supplier'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (supplierInstance.version > version) {
                    supplierInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'supplier.label', default: 'Supplier')] as Object[],
                              "Another user has updated this Supplier while you were editing")
                    render([success: false, messages: supplierInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        supplierInstance.properties = params
                       
        if (!supplierInstance.save(flush: true)) {
            render([success: false, messages: supplierInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        println params
        if(params.masterField){
            def c = Supplier.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.name',params.masterField.id)    
            }
            render results as JSON

        }else if(params.countryOwnerID){
            def c = Supplier.createCriteria()
            def list = []
            list.push('Indonesia')
            list.push(params.countryOwnerID)
            list.unique()
            
            def results = c.list {
               countryOwnerID{
                    'in'('name',list)
               }
            }
            render results as JSON
        }
        else
        {
          //  params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Supplier.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def supplierInstance = Supplier.get(id)
        if (!supplierInstance)
            render([success: false] as JSON)
        else {
            try {
                supplierInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def supplierInstance = Supplier.get(params.id)
        if (!supplierInstance) {
            render(
                message : "supplier.not.found",
            ) as JSON

        }
        else {
            render([supplierInstance : supplierInstance ] as JSON)
        }
    }
}
