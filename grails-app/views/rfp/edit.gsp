<%@ page import="com.smanggin.Rfp" %>


<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rfp.label', default: 'Rfp')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
	<g:if test="${isEdit}" >
		<g:set var="canEdit" value="true" scope="request" />
		<g:set var="canDelete" value="true" scope="request" />
	</g:if>
</head>

<body>

<section id="edit-rfp" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.edit.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->	

				<g:hasErrors bean="${rfpInstance}">
				<div class="alert alert-error">
					<g:renderErrors bean="${rfpInstance}" as="list" />
				</div>
				</g:hasErrors>

				<g:form method="post" class="form-horizontal" >
					<div class="box-body">
						<g:hiddenField name="id" value="${rfpInstance?.id}" />
						<g:hiddenField name="version" value="${rfpInstance?.version}" />
						
						<fieldset class="form">
							<g:render template="form"/>

						</fieldset>
					</div><!--/.box-body -->	

					<div class="box-footer">
						<div class="form-actions">
							<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Save')}" />
							<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
						</div>
					</div><!--/.box-footer -->	
				</g:form>
				<g:render template="detail"/> 	
				<g:render template="searchPOModal"/>
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>
			
</body>

</html>
