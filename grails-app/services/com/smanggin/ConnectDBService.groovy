package com.smanggin

import groovy.sql.Sql
import java.sql.PreparedStatement;

/**
 * ConnectDBService
 * A service class encapsulates the core business logic of a Grails application
 */
class ConnectDBService {
	def grailsApplication

    static transactional = true

    /* Amatra*/
	def getSqlAmatraConnection() {
	 	def url = grailsApplication.config.dataSource.url
	 	def username = grailsApplication.config.dataSource.username
	 	def password = grailsApplication.config.dataSource.password
	 	def sql = Sql.newInstance(url, username, password, "com.microsoft.sqlserver.jdbc.SQLServerDriver") // Sql.newInstance("jdbc:mysql://localhost:3306/sjs?useUnicode=yes&characterEncoding=UTF-8", "root", "", "com.mysql.jdbc.Driver")

	 	print " sync db " + sql
	 	return sql
	 }

    /* proxy Kalbe */
	def getSqlProxyKalbeConnection() {
	 	def url = grailsApplication.config.proxy.kalbe.url
	 	def username = grailsApplication.config.proxy.kalbe.username
	 	def password = grailsApplication.config.proxy.kalbe.password
	 	def sql = Sql.newInstance(url, username, password, "com.mysql.jdbc.Driver") // Sql.newInstance("jdbc:mysql://localhost:3306/sjs?useUnicode=yes&characterEncoding=UTF-8", "root", "", "com.mysql.jdbc.Driver")

	 	print " sync db " + sql
	 	return sql
	 }
}
