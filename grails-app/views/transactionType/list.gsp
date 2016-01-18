
<%@ page import="com.smanggin.TransactionType" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'transactionType.label', default: 'TransactionType')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-transactionType" class="first">
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
							
								<g:sortableColumn property="code" title="${message(code: 'transactionType.code.label', default: 'Code')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'transactionType.name.label', default: 'Name')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${transactionTypeInstanceList}" status="i" var="transactionTypeInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${transactionTypeInstance.id}">${fieldValue(bean: transactionTypeInstance, field: "code")}</g:link></td>
							
								<td>${fieldValue(bean: transactionTypeInstance, field: "name")}</td>

							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${transactionTypeInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
