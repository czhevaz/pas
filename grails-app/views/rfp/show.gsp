
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
			<g:form method="post" class="form-horizontal" >
			<div class="box box-primary">
				<g:render template="headerTittle"/>
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
								
								<td valign="top" class="value"><g:formatDate date="${rfpInstance?.rfpDate}"  format="yyyy-MM-dd"/></td>
								
							</tr>
							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rfp.supplier.label" default="Supplier" /></td>
								
								<td valign="top" class="value"><g:link controller="supplier" action="show" id="${rfpInstance?.supplier?.id}">${rfpInstance?.supplier?.encodeAsHTML()}</g:link></td>
								
							</tr>
								
						</tbody>
					</table>
				</div><!--/.row -->
				<div class="box-footer clearfix">
					
						<g:hiddenField name="id" value="${rfpInstance?.id}" />
						<g:hiddenField name="version" value="${rfpInstance?.version}" />
						<g:hiddenField name="updatedBy" value="${session.user}"/>
					

						<div class="form-actions">
					
							<g:if test="${rfpInstance?.state=='Draft' }">
								<g:if test="${rfpInstance?.createdBy == session.user}">
									<g:actionSubmit class="btn btn-primary btn-sm" action="actionWaitingApprove" value="${message(code: 'default.button.approve.label', default: 'Send To Approver')}" />
									
								</g:if>	
							</g:if>
							<g:if test="${rfpInstance?.state=='Waiting Approval'}">
								<g:if test="${rfpInstance?.mustApprovedBy == session.user}">
									<g:actionSubmit class="btn btn-primary btn-sm" action="actionApprove" value="${message(code: 'default.button.approve.label', default: 'Approve')}" />
									
									<g:actionSubmit id="reject" class="btn btn-primary btn-sm" action="actionReject" value="${message(code: 'default.button.rejected.label', default: 'Rejected')}" />

									
								</g:if>	
							</g:if>
							
						</div>	
					
				</div><!--/.box-footer clearfix -->
			</div><!--/.box-body table-responsive -->

			<g:render template="detail"/> 
		</div><!--/.box box-primary -->
		</g:form>
	</div><!--/.row -->
</section>

</body>

</html>
