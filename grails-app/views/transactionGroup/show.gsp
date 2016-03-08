
<%@ page import="com.smanggin.TransactionGroup" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'transactionGroup.label', default: 'TransactionGroup')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	<g:set var="canEdit" value="true" scope="request" />
</head>

<body>

<section id="show-transactionGroup" class="first">
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
								<td valign="top" class="name"><g:message code="transactionGroup.transactionType.label" default="Transaction Type" /></td>
								
								<td valign="top" class="value"><g:link controller="transactionType" action="show" id="${transactionGroupInstance?.transactionType?.id}">${transactionGroupInstance?.transactionType?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.description.label" default="Description" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "description")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.format.label" default="Format" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "format")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.prefix.label" default="Prefix" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "prefix")}</td>
								
							</tr>
						
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.width.label" default="Width" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "width")}</td>
								
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.country.label" default="Country" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "country")}</td>
								
							</tr>

							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${transactionGroupInstance?.dateCreated}" /></td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${transactionGroupInstance?.lastUpdated}" /></td>
								
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
