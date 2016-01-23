package com.grailsrocks.authentication

class LoginForm implements Serializable {
	String login
	String password
	
	boolean rememberMe
	
	static constraints = {
		login(size:4..40, nullable: false, blank:false)
		password(size:3..40, password:true, nullable: false, blank:false)
	}
}
