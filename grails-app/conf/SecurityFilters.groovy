
class SecurityFilters {
    static nonAuthenticatedActions = [
        [controller:'authentication', action:'*'],
        
        [controller:'login', action:'auth']   
    ]

    def filters = {
        accessFilter(controller:'*', action:'*') {
            
            before = {
                boolean needsAuth = !nonAuthenticatedActions.find { 
                    (it.controller == controllerName) && ((it.action == '*') 
                    || (it.action == actionName))
                }
                //println request
                if (needsAuth) {
                    return applicationContext.authenticationService.filterRequest(
                        request, response, 
                        "${request.contextPath}/login/auth" )
                } else 
                    return true
            }
            
        }
    }
}