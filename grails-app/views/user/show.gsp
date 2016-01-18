
<%@ page import="com.smanggin.User" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-user" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->	
                <div class="box-body table-responsive">
					<table class="table table-striped">
						<tbody>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.login.label" default="Login" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "login")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.password.label" default="Password" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "password")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.enabled.label" default="Enabled" /></td>
								
								<td valign="top" class="value"><g:formatBoolean boolean="${userInstance?.enabled}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.country.label" default="Country" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "country")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.email.label" default="Email" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "email")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.status.label" default="Status" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "status")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.access.label" default="Access" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "access")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.approver.label" default="Approver" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "approver")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.isAdmin.label" default="Is Admin" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "isAdmin")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.isMaster.label" default="Is Master" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "isMaster")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.name.label" default="Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "name")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.role.label" default="Role" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "role")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.role1.label" default="Role1" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "role1")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.role2.label" default="Role2" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "role2")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="user.sex.label" default="Sex" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: userInstance, field: "sex")}</td>
								
							</tr>
						
						</tbody>
					</table>
				</div><!--/.row -->
				<div class="box-footer clearfix">
						
				</div><!--/.box-footer clearfix -->
			</div><!--/.box-body table-responsive -->

			<g:render template="detail"/> 
		</div><!--/.box box-primary -->
	</div><!--/.row -->
</section>

</body>

</html>
