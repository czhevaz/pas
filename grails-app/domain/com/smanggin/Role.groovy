package com.smanggin

class Role {

	String authority
	String name

	static mapping = {
		table 'M_PAS_Role'
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
		name nullable:true
	}
}
