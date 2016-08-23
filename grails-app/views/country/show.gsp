
<%@ page import="com.smanggin.Country" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-country" class="first">
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
								<td valign="top" class="name"><g:message code="country.code.label" default="Id" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: countryInstance, field: "code")}</td>
								
							</tr>
						

							<tr class="prop">
								<td valign="top" class="name"><g:message code="country.name.label" default="Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: countryInstance, field: "name")}</td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="country.code.label" default="Code" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: countryInstance, field: "codeCoa")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="country.active.label" default="Active" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: countryInstance, field: "active")}</td>
								
							</tr>
						</tbody>
					</table>
				</div><!--/.row -->
				<div class="box-footer clearfix">
						
				</div><!--/.box-footer clearfix -->
			</div><!--/.box-body table-responsive -->

			
		</div><!--/.box box-primary -->
	</div><!--/.row -->
</section>

</body>

</html>
