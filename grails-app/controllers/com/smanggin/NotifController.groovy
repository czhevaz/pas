package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * NotifController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class NotifController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Notif.createCriteria().list(params){}
        [notifInstanceList: results, notifInstanceTotal: results.totalCount]
    }

    def create() {
        [notifInstance: new Notif(params)]
    }

    def save() {
        def notifInstance = new Notif(params)
        if (!notifInstance.save(flush: true)) {
            render(view: "create", model: [notifInstance: notifInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'notif.label', default: 'Notif'), notifInstance.id])
        redirect(action: "show", id: notifInstance.id)
    }

    def show() {
        def notifInstance = Notif.get(params.id)
        if (!notifInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])
            redirect(action: "list")
            return
        }

        [notifInstance: notifInstance]
    }

    def edit() {
        def notifInstance = Notif.get(params.id)
        if (!notifInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])
            redirect(action: "list")
            return
        }

        [notifInstance: notifInstance]
    }

    def update() {
        def notifInstance = Notif.get(params.id)
        if (!notifInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (notifInstance.version > version) {
                notifInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'notif.label', default: 'Notif')] as Object[],
                          "Another user has updated this Notif while you were editing")
                render(view: "edit", model: [notifInstance: notifInstance])
                return
            }
        }

        notifInstance.properties = params

        if (!notifInstance.save(flush: true)) {
            render(view: "edit", model: [notifInstance: notifInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'notif.label', default: 'Notif'), notifInstance.id])
        redirect(action: "show", id: notifInstance.id)
    }

    def delete() {
        def notifInstance = Notif.get(params.id)
        if (!notifInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])
            redirect(action: "list")
            return
        }

        try {
            notifInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def notifInstance = (params.id) ? Notif.get(params.id) : new Notif()
        
        if (!notifInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'notif.label', default: 'Notif'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (notifInstance.version > version) {
                    notifInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'notif.label', default: 'Notif')] as Object[],
                              "Another user has updated this Notif while you were editing")
                    render([success: false, messages: notifInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        notifInstance.properties = params
                       
        if (!notifInstance.save(flush: true)) {
            render([success: false, messages: notifInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Notif.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Notif.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def notifInstance = Notif.get(id)
        if (!notifInstance)
            render([success: false] as JSON)
        else {
            try {
                notifInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def notifInstance = Notif.get(params.id)
        if (!notifInstance) {
            render(
                message : "notif.not.found",
            ) as JSON

        }
        else {
            render([notifInstance : notifInstance ] as JSON)
        }
    }

    def checkNotif(){
        
        def notif = Notif.createCriteria().list(){
            like('forUser','%'+auth.user()+'%')
            eq('isNew',true)  
        }
        
        if(notif){
            render([exist:true,data:notif] as JSON)
        } else {
            render([exist:false] as JSON)
        }
    }
}
