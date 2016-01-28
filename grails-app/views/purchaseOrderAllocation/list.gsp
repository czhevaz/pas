
<%@ page import="com.smanggin.PurchaseOrderAllocation" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-purchaseOrderAllocation" class="first">
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
							
								<g:sortableColumn property="value1" title="${message(code: 'purchaseOrderAllocation.value1.label', default: 'Value1')}" />
							
								<g:sortableColumn property="value2" title="${message(code: 'purchaseOrderAllocation.value2.label', default: 'Value2')}" />
							
								<g:sortableColumn property="brand" title="${message(code: 'purchaseOrderAllocation.brand.label', default: 'Brand')}" />
							
								<g:sortableColumn property="dateCreated" title="${message(code: 'purchaseOrderAllocation.dateCreated.label', default: 'Date Created')}" />
							
								<g:sortableColumn property="lastUpdated" title="${message(code: 'purchaseOrderAllocation.lastUpdated.label', default: 'Last Updated')}" />
							
								<g:sortableColumn property="pppNumber" title="${message(code: 'purchaseOrderAllocation.pppNumber.label', default: 'Ppp Number')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${purchaseOrderAllocationInstanceList}" status="i" var="purchaseOrderAllocationInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${purchaseOrderAllocationInstance.id}">${fieldValue(bean: purchaseOrderAllocationInstance, field: "value1")}</g:link></td>
							
								<td>${fieldValue(bean: purchaseOrderAllocationInstance, field: "value2")}</td>
							
								<td>${fieldValue(bean: purchaseOrderAllocationInstance, field: "brand")}</td>
							
								<td><g:formatDate date="${purchaseOrderAllocationInstance.dateCreated}" /></td>
							
								<td><g:formatDate date="${purchaseOrderAllocationInstance.lastUpdated}" /></td>
							
								<td>${fieldValue(bean: purchaseOrderAllocationInstance, field: "pppNumber")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${purchaseOrderAllocationInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
