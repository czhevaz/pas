
<%@ page import="com.smanggin.User" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-user" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->

				<div class="box-body table-responsive">	
					<table class="table table-bordered margin-top-medium">
						<thead>
							<tr>
							
								<g:sortableColumn property="login" title="${message(code: 'user.login.label', default: 'Login')}" />
							
								<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
							
								<g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
							
								<g:sortableColumn property="country" title="${message(code: 'user.country.label', default: 'Country')}" />
							
								<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
							
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${userInstanceList}" status="i" var="userInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "login")}</g:link></td>
							
								<td>${fieldValue(bean: userInstance, field: "password")}</td>
							
								<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
							
								<td>${fieldValue(bean: userInstance, field: "country")}</td>
							
								<td>${fieldValue(bean: userInstance, field: "email")}</td>
							

							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${userInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
