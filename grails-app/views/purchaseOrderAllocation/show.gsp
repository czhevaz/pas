
<%@ page import="com.smanggin.PurchaseOrderAllocation" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrderAllocation.label', default: 'PurchaseOrderAllocation')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-purchaseOrderAllocation" class="first">
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
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.value1.label" default="Value1" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderAllocationInstance, field: "value1")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.value2.label" default="Value2" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderAllocationInstance, field: "value2")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.brand.label" default="Brand" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderAllocationInstance, field: "brand")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderAllocationInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderAllocationInstance?.lastUpdated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.pppNumber.label" default="Ppp Number" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderAllocationInstance, field: "pppNumber")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrderAllocation.purchaseOrder.label" default="Purchase Order" /></td>
								
								<td valign="top" class="value"><g:link controller="purchaseOrder" action="show" id="${purchaseOrderAllocationInstance?.purchaseOrder?.id}">${purchaseOrderAllocationInstance?.purchaseOrder?.encodeAsHTML()}</g:link></td>
								
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
