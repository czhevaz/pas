import grails.converters.JSON
import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

    def init = { servletContext ->
    	// init auth events

        def appCtx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext)
        println "appCtx>> " + appCtx
        appCtx.authenticationService.events.onValidatePassword = { password ->
            return password
        }

    	def springContext = WebApplicationContextUtils.getWebApplicationContext( servletContext )
		// Custom marshalling
		springContext.getBean( "customObjectMarshallers" ).register()

    	JSON.registerObjectMarshaller(Date) {
            return it?.format("yyyy-MM-dd HH:mm:ss")
        }
 
    }

    def destroy = {
    }
}
