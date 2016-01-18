
<%@ page import="com.smanggin.TransactionGroup" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'transactionGroup.label', default: 'TransactionGroup')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-transactionGroup" class="first">
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
							
								<g:sortableColumn property="description" title="${message(code: 'transactionGroup.description.label', default: 'Description')}" />
								
								<th><g:message code="transactionGroup.transactionType.label" default="Transaction Type" /></th>

								<g:sortableColumn property="prefix" title="${message(code: 'transactionGroup.prefix.label', default: 'Prefix')}" />

								<g:sortableColumn property="format" title="${message(code: 'transactionGroup.format.label', default: 'Format')}" />

								<g:sortableColumn property="format" title="${message(code: 'transactionGroup.width.label', default: 'Width')}" />
									
								<th><g:message code="transactionGroup.approval.label" default="Approval" /></th>
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${transactionGroupInstanceList}" status="i" var="transactionGroupInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								
								<td><g:link action="show" id="${transactionGroupInstance.id}">${fieldValue(bean: transactionGroupInstance, field: "description")}</g:link></td>

								<td>${fieldValue(bean: transactionGroupInstance, field: "transactionType")}</td>

								<td>${fieldValue(bean: transactionGroupInstance, field: "prefix")}</td>
								
								<td>${fieldValue(bean: transactionGroupInstance, field: "format")}</td>

								<td>${fieldValue(bean: transactionGroupInstance, field: "width")}</td>
							
								<td>${fieldValue(bean: transactionGroupInstance, field: "approval")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${transactionGroupInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
