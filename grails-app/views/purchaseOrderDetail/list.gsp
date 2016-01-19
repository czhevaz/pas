
<%@ page import="com.smanggin.PurchaseOrderDetail" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-purchaseOrderDetail" class="first">
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
							
								<g:sortableColumn property="updatedBy" title="${message(code: 'purchaseOrderDetail.updatedBy.label', default: 'Updated By')}" />
							
								<g:sortableColumn property="startDate" title="${message(code: 'purchaseOrderDetail.startDate.label', default: 'Start Date')}" />
							
								<g:sortableColumn property="finishDate" title="${message(code: 'purchaseOrderDetail.finishDate.label', default: 'Finish Date')}" />
							
								<g:sortableColumn property="qty" title="${message(code: 'purchaseOrderDetail.qty.label', default: 'Qty')}" />
							
								<g:sortableColumn property="unitPrice" title="${message(code: 'purchaseOrderDetail.unitPrice.label', default: 'Unit Price')}" />
							
								<g:sortableColumn property="transactionDate" title="${message(code: 'purchaseOrderDetail.transactionDate.label', default: 'Transaction Date')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${purchaseOrderDetailInstanceList}" status="i" var="purchaseOrderDetailInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${purchaseOrderDetailInstance.id}">${fieldValue(bean: purchaseOrderDetailInstance, field: "updatedBy")}</g:link></td>
							
								<td><g:formatDate date="${purchaseOrderDetailInstance.startDate}" /></td>
							
								<td><g:formatDate date="${purchaseOrderDetailInstance.finishDate}" /></td>
							
								<td>${fieldValue(bean: purchaseOrderDetailInstance, field: "qty")}</td>
							
								<td>${fieldValue(bean: purchaseOrderDetailInstance, field: "unitPrice")}</td>
							
								<td><g:formatDate date="${purchaseOrderDetailInstance.transactionDate}" /></td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${purchaseOrderDetailInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
