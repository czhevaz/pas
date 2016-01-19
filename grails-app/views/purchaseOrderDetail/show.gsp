
<%@ page import="com.smanggin.PurchaseOrderDetail" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrderDetail.label', default: 'PurchaseOrderDetail')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-purchaseOrderDetail" class="first">
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
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.updatedBy.label" default="Updated By" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "updatedBy")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.startDate.label" default="Start Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderDetailInstance?.startDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.finishDate.label" default="Finish Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderDetailInstance?.finishDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.qty.label" default="Qty" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "qty")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.unitPrice.label" default="Unit Price" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "unitPrice")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.transactionDate.label" default="Transaction Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderDetailInstance?.transactionDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.coverageArea.label" default="Coverage Area" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "coverageArea")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.createdBy.label" default="Created By" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "createdBy")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderDetailInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.description.label" default="Description" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "description")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderDetailInstance?.lastUpdated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.outlet.label" default="Outlet" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "outlet")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.pic.label" default="Pic" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "pic")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.purchaseOrder.label" default="Purchase Order" /></td>
								
								<td valign="top" class="value"><g:link controller="purchaseOrder" action="show" id="${purchaseOrderDetailInstance?.purchaseOrder?.id}">${purchaseOrderDetailInstance?.purchaseOrder?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.remark.label" default="Remark" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "remark")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.totalCost.label" default="Total Cost" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "totalCost")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderDetail.totalCost2.label" default="Total Cost2" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderDetailInstance, field: "totalCost2")}</td>
								
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
