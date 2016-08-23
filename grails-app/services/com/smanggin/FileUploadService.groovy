package com.smanggin
import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile
import org.apache.commons.lang.RandomStringUtils
/**
 * FileUploadService
 * A service class encapsulates the core business logic of a Grails application
 */
class FileUploadService {
    def authenticationService

    def uploadFileAjax(CommonsMultipartFile file , String destDirectory, String id) {
    	
    	def fileName = file.originalFilename
        println "fileName=" + fileName
        
        int dot = fileName.lastIndexOf('.');
        def ext = fileName.substring(dot + 1);

        String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
    	def servletContext = ServletContextHolder.servletContext
    	def storagePath = servletContext.getRealPath(destDirectory)
    	
        println "storagePath" +storagePath
    	def storagePathDirectory = new File(storagePath)

    	if(!storagePathDirectory.exists()){
    		if(storagePathDirectory.mkdirs()){
    			println " SUCCESS "
    		}else{
    			println " FAILED"
    		}

    	}

        def auth = authenticationService.getSessionUser()?.login        

    	if(!file.isEmpty()){
            def attachment = new Attachment()
            attachment.fileName = name
            attachment.originalName = fileName
            attachment.fileType = ext
            attachment.purchaseOrder = PurchaseOrder.get(id)
            attachment.updatedBy = auth
            attachment.createdBy = auth

            if(!attachment.save(flush:true)){
                println "errors " + attachment.errors
            }
    		file.transferTo(new File("${storagePath}/${name}"))
    		return "${fileName}"
    	}else {
    		println " isEmpty"
    		return null
    	}
    }
}
