
<%@ page import="com.smanggin.Rfp" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rfp.label', default: 'Rfp')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-rfp" class="first">
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
								<td valign="top" class="name"><g:message code="rfp.number.label" default="Number" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: rfpInstance, field: "number")}</td>
								
							</tr>
								<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.country.label" default="Country" /></td>
								
								<td valign="top" class="value"><g:link controller="country" action="show" id="${rfpInstance?.country}">${rfpInstance?.country?.encodeAsHTML()}</g:link></td>
								
							</tr>
						

							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.transactionGroup.label" default="Transaction Group" /></td>
								
								<td valign="top" class="value"><g:link controller="transactionGroup" action="show" id="${rfpInstance?.transactionGroup?.id}">${rfpInstance?.transactionGroup?.encodeAsHTML()}</g:link></td>
								
							</tr>

						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.paymentOption.label" default="Payment Option" /></td>
								
								<td valign="top" class="value">${rfpInstance?.paymentOption}</td>
								
							</tr>
						
							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.currency1.label" default="Currency1" /></td>
								
								<td valign="top" class="value"><g:link controller="currency" action="show" id="${rfpInstance?.currency1?.id}">${rfpInstance?.currency1?.encodeAsHTML()}</g:link></td>
								
							</tr>
							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.rate.label" default="Rate" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: rfpInstance, field: "rate")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.rfpDate.label" default="Rfp Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${rfpInstance?.rfpDate}" /></td>
								
							</tr>
							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.supplier.label" default="Supplier" /></td>
								
								<td valign="top" class="value"><g:link controller="supplier" action="show" id="${rfpInstance?.supplier?.id}">${rfpInstance?.supplier?.encodeAsHTML()}</g:link></td>
								
							</tr>
	

							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.state.label" default="State" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: rfpInstance, field: "state")}</td>
								
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
