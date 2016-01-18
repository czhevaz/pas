
<%@ page import="com.smanggin.Lob" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'lob.label', default: 'Lob')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-lob" class="first">
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
								<td valign="top" class="name"><g:message code="lob.name.label" default="Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: lobInstance, field: "name")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="lob.code.label" default="Code" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: lobInstance, field: "code")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="lob.active.label" default="Active" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: lobInstance, field: "active")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="lob.country.label" default="Country" /></td>
								
								<td valign="top" class="value"><g:link controller="country" action="show" id="${lobInstance?.country?.id}">${lobInstance?.country?.encodeAsHTML()}</g:link></td>
								
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
