import com.smanggin.*
import grails.converters.JSON
import org.springframework.web.context.support.WebApplicationContextUtils
import com.grailsrocks.authentication.*

class BootStrap {

    def init = { servletContext ->
    	
        /* Custom marshalling */
        def springContext = WebApplicationContextUtils.getWebApplicationContext( servletContext )
		
		springContext.getBean( "customObjectMarshallers" ).register()

    	JSON.registerObjectMarshaller(Date) {
            return it?.format("yyyy-MM-dd HH:mm:ss")
        }

        /* set authentication user*/
        def appCtx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext)
        appCtx.authenticationService.events.onLoggedIn = { AuthenticatedUser login ->
            def user = User.findByLogin(login.login)
            return true
        }

        /* Set Time Zone Server */
        TimeZone.setDefault(TimeZone.getTimeZone("Asia/Jakarta")) 

        def sendInterval=AppSetting.valueDefault('sendmail_interval','60000')
        println "sendInterval: " + sendInterval
        
        SendMailJob.schedule(sendInterval.toLong())

 
    }

    def destroy = {
    }
}
