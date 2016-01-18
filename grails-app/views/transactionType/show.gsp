
<%@ page import="com.smanggin.TransactionType" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'transactionType.label', default: 'TransactionType')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-transactionType" class="first">
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
								<td valign="top" class="name"><g:message code="transactionType.code.label" default="Code" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionTypeInstance, field: "code")}</td>
								
							</tr>

								<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionType.name.label" default="Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionTypeInstance, field: "name")}</td>
								
							</tr>
						
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionType.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${transactionTypeInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionType.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${transactionTypeInstance?.lastUpdated}" /></td>
								
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
