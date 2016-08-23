<%@ page import="com.smanggin.PppNigeria" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppNigeria.label', default: 'PppNigeria')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<section id="create-pppNigeria" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
    				<h3 class="box-title"><g:message code="default.create.label" args="[entityName]" /></h3>
    			</div><!--/.box-header with-border -->	
				<g:hasErrors bean="${pppNigeriaInstance}">
				<div class="alert alert-error">
					<g:renderErrors bean="${pppNigeriaInstance}" as="list" />
				</div>
				</g:hasErrors>
				
				<g:form action="save" class="form-horizontal" >
					<div class="box-body">
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
					</div><!--/.box-body -->
					<div class="box-footer">
						<div class="form-actions">
							<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
						</div>
					</div><!--/.box-footer -->	
				</g:form>
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			
</section>
		
</body>

</html>
