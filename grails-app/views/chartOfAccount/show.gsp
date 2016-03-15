
<%@ page import="com.smanggin.ChartOfAccount" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'chartOfAccount.label', default: 'ChartOfAccount')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-chartOfAccount" class="first">
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
								<td valign="top" class="name"><g:message code="chartOfAccount.coaIdServer.label" default=" Server Id" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "coaIdServer")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.code.label" default="Code" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "code")}</td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.description.label" default="Description" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "description")}</td>
								
							</tr>
												
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment01.label" default="Segment01" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment01")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment02.label" default="Segment02" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment02")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment03.label" default="Segment03" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment03")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment04.label" default="Segment04" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment04")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment05.label" default="Segment05" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment05")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment06.label" default="Segment06" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment06")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.segment07.label" default="Segment07" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "segment07")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.active.label" default="Active" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: chartOfAccountInstance, field: "active")}</td>
								
							</tr>
						
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${chartOfAccountInstance?.dateCreated}" /></td>
								
							</tr>
						
							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="chartOfAccount.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${chartOfAccountInstance?.lastUpdated}" /></td>
								
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
