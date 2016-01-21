package com.smanggin
import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

/**
 * FileUploadService
 * A service class encapsulates the core business logic of a Grails application
 */
class FileUploadService {


    def uploadFileAjax(CommonsMultipartFile file , String name , String destDirectory) {
    	
    	def fileName = file.originalFilename
        println "fileName=" + fileName
    	def servletContext = ServletContextHolder.servletContext
    	def storagePath = servletContext.getRealPath('tesImage')
    	println "storagePath" +storagePath
    	def storagePathDirectory = new File(storagePath)

    	if(!storagePathDirectory.exists()){
    		if(storagePathDirectory.mkdirs()){
    			println " SUCCESS "
    		}else{
    			println " FAILED"
    		}

    	}

    	if(!file.isEmpty()){
    		file.transferTo(new File("${storagePath}/${fileName}"))
    		return "${fileName}"
    	}else {
    		println " isEmpty"
    		return null
    	}
    }
}
