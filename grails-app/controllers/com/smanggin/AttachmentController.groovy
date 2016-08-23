package com.smanggin

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException
import org.codehaus.groovy.grails.web.context.ServletContextHolder
/**
 * AttachmentController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */

class AttachmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results = Attachment.createCriteria().list(params){}
        [attachmentInstanceList: results, attachmentInstanceTotal: results.totalCount]
    }

    def create() {
        [attachmentInstance: new Attachment(params)]
    }

    def save() {
        def attachmentInstance = new Attachment(params)
        if (!attachmentInstance.save(flush: true)) {
            render(view: "create", model: [attachmentInstance: attachmentInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'attachment.label', default: 'Attachment'), attachmentInstance.id])
        redirect(action: "show", id: attachmentInstance.id)
    }

    def show() {
        def attachmentInstance = Attachment.get(params.id)
        if (!attachmentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
            redirect(action: "list")
            return
        }

        [attachmentInstance: attachmentInstance]
    }

    def edit() {
        def attachmentInstance = Attachment.get(params.id)
        if (!attachmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
            redirect(action: "list")
            return
        }

        [attachmentInstance: attachmentInstance]
    }

    def update() {
        def attachmentInstance = Attachment.get(params.id)
        if (!attachmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (attachmentInstance.version > version) {
                attachmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'attachment.label', default: 'Attachment')] as Object[],
                          "Another user has updated this Attachment while you were editing")
                render(view: "edit", model: [attachmentInstance: attachmentInstance])
                return
            }
        }

        attachmentInstance.properties = params

        if (!attachmentInstance.save(flush: true)) {
            render(view: "edit", model: [attachmentInstance: attachmentInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'attachment.label', default: 'Attachment'), attachmentInstance.id])
        redirect(action: "show", id: attachmentInstance.id)
    }

    def delete() {
        def attachmentInstance = Attachment.get(params.id)
        if (!attachmentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            attachmentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def jsave() {
        def attachmentInstance = (params.id) ? Attachment.get(params.id) : new Attachment()
        
        if (!attachmentInstance) {                     
            def error = [message: message(code: 'default.not.found.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])]
            render([success: false, messages: [errors:[error]] ] as JSON)       
            return
        }
        
        if (params.version)
        {
            def version = params.version.toLong()
            if (version != null) {
                if (attachmentInstance.version > version) {
                    attachmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                              [message(code: 'attachment.label', default: 'Attachment')] as Object[],
                              "Another user has updated this Attachment while you were editing")
                    render([success: false, messages: attachmentInstance.errors] as JSON)
                    return
                }
            }            
        }
        
        attachmentInstance.properties = params
                       
        if (!attachmentInstance.save(flush: true)) {
            render([success: false, messages: attachmentInstance.errors] as JSON)
            return
        }
                        
        render([success: true] as JSON)
    }

    def jlist() {
        if(params.masterField){
            def c = Attachment.createCriteria()
            def results = c.list {
                eq(params.masterField.name+'.id',params.masterField.id.toLong())    
            }
            render results as JSON

        }
        else
        {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            render Attachment.list(params) as JSON           
        }
        
    }   

    def jdelete(Long id) {
        def attachmentInstance = Attachment.get(id)
        if (!attachmentInstance)
            render([success: false] as JSON)
        else {

            try {
                String filename = attachmentInstance.fileName
                String filePath = 'upload/purchaseOrder/'+filename
                def servletContext = ServletContextHolder.servletContext
                def storagePath = servletContext.getRealPath(filePath)
        
                boolean fileSuccessfullyDeleted =  new File(storagePath).delete()
                println "filePath >> " + filePath
                println "fileSuccessfullyDeleted >>" + fileSuccessfullyDeleted

                if(fileSuccessfullyDeleted ){
                    attachmentInstance.delete(flush: true)             
                    render([success: true] as JSON)
                }
                else{
                    render([success: false] as JSON)
                }
                
            }catch (DataIntegrityViolationException e) {
                render([success: false, error: e.message] as JSON)
            }
        }
    }

    def jshow = {
        def attachmentInstance = Attachment.get(params.id)
        if (!attachmentInstance) {
            render(
                message : "attachment.not.found",
            ) as JSON

        }
        else {
            render([attachmentInstance : attachmentInstance ] as JSON)
        }
    }


    def downloadFile() {
        def sub = Attachment.get(params.id)
        
        StringBuilder routes = new StringBuilder();
                    routes.append("upload/purchaseOrder/")
                    routes.append(sub.fileName);

        String absolutePath = getServletContext().getRealPath(routes.toString());
        
        def file = new File(absolutePath)
        //if (file.exists)
            //{
            response.setContentType("application/octet-stream") // or or image/JPEG or text/xml or whatever type the file is
            response.setHeader("Content-disposition", "attachment;filename=${sub.originalName}")
            response.outputStream << file.bytes
        //}
        //else render "Error!" // appropriate error handling
        render([success: true] as JSON)
    }
}
