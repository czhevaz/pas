package com.smanggin



import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

/**
 * UserController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class UserController {
    def globalService
    def syncDatabaseService
	def authenticationService
    def connectDBService
    def grailsApplication
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = User.createCriteria().list(params){}
        [userInstanceList: results, userInstanceTotal: results.totalCount]
    }

    def create() {
        [userInstance: new User(params)]
    }

    def save() {
        def userInstance = new User(params)
        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show() {
        
        def userInstance = User.get(params.id)
       // println "connectDBService " +connectDBService.getSqlProxyKalbeConnection()
        println globalService.yearList('PppPhilippine',grailsApplication)
        if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def edit() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def userInstance = (params.id) ? User.get(params.id) : new User()
        
        if (!userInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (userInstance.version > version) {
                    userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'user.label', default: 'User')] as Object[],
                              "Another user has updated this User while you were editing")
                    render([success: false, messages: userInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        userInstance.properties = params
                       
        if (!userInstance.save(flush: true)) {
            render([success: false, messages: userInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = User.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }else if(params.country){
            def c = User.createCriteria()
            
            def results = c.list {
                eq('country',params.country)    
            }

            render results as JSON                   
        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render User.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance)
            render([success: false] as JSON)
        else {
            try {
                userInstance.delete(flush: true)             
                render([success: true] as JSON)
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            render(
                message : "user.not.found",
            ) as JSON

        }
        else {
            render([userInstance : userInstance ] as JSON)
        }
    }

    def postLogin() {
		//println "postlogin >>>>>>>>>> " +auth.user()
		def user = User.findByLogin(auth.user().trim())
        session['user'] = user?.login 
		session['email'] = user?.email
		session['country'] = user?.country
        session['isAdmin'] = user?.isAdmin
        session['userRole'] = user?.userRole
		//session['domainPPP'] = Country.findByName(user?.country).domainPPP 	
		
        redirect(action: "index", controller:"home",params: params)
    }


}
