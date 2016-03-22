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

        /* send mail */
        def sendInterval=AppSetting.valueDefault('sendmail_interval','60000')
        SendMailJob.schedule('59 59 11 * *  ?')

        /* sync DB */
        def syncDBInterval=AppSetting.valueDefault('sync_db_interval','60000')
        SyncDBJob.schedule(syncDBInterval.toLong())
        
    }

    def destroy = {
    }
}
