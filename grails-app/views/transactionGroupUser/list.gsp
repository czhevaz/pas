
<%@ page import="com.smanggin.TransactionGroupUser" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'transactionGroupUser.label', default: 'TransactionGroupUser')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-transactionGroupUser" class="first">
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
							
								<th><g:message code="transactionGroupUser.transactionGroup.label" default="Transaction Group" /></th>
							
								<th><g:message code="transactionGroupUser.user.label" default="User" /></th>
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${transactionGroupUserInstanceList}" status="i" var="transactionGroupUserInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${transactionGroupUserInstance.id}">${fieldValue(bean: transactionGroupUserInstance, field: "transactionGroup")}</g:link></td>
							
								<td>${fieldValue(bean: transactionGroupUserInstance, field: "user")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${transactionGroupUserInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
