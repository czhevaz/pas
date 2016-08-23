package com.smanggin

class User {

	transient springSecurityService

	String login
	String password
	String name
	String country
	String email
	String isAdmin 
	String role 
	String role2 
	String approver 
	String access 
	String sex 
	String role1 
	String isMaster 
	Integer status
	boolean enabled

	String userRole
	String toString(){ return login}	

	static constraints = {
		login blank: false, unique: true
		password blank: false
		enabled nullable:true
		country nullable:true
		email nullable:true
		version nullable:true
		status nullable:true
		userRole nullable:true
	}

	static mapping = {
		table 'm_user'
		id 	column: "Usr_ID",
        	name : 'login',
        	type: 'string',
        	generator: 'identity'
		login column:'Usr_ID'
		password column:'Usr_Password'
		enabled column:'Usr_Active'
		name column:'Usr_Name'
		country column:'Usr_Country' 
	    email column: 'Usr_Email'
	    isAdmin column: 'Usr_Admin'  
	    role column: 'Usr_Level' 
	    role2 column: 'usr_Level2'
	    approver column: 'Usr_Approve'
	    access column: 'Usr_Access'
	    sex column:'usr_Sex'
	    role1 column: 'usr_level1'
	    isMaster column: 'usr_master'
	    userRole column: 'Usr_Role'
		
	}


	def beforeValidate(){
	}

	def beforeInsert() {

	}

	def beforeUpdate() {
	}


}
