package com.smanggin

class Requestmap {

	String url
	String configAttribute

	static mapping = {
		table 'M_PAS_Requestmap'
		cache true
	}

	static constraints = {
		url blank: false, unique: true
		configAttribute blank: false
	}
}
