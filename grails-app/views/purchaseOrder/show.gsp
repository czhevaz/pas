
<%@ page import="com.smanggin.PurchaseOrder" %>

<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'PurchaseOrder')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	<g:set var="canDelete" value="true" scope="request" />
</head>

<body>

<section id="show-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<g:form method="post" class="form-horizontal" >
			<div class="box box-primary">
				<g:render template="headerTittle"/> 				
                
                <div class="box-body table-responsive ">
					<table class="table table-striped">
						<tbody>
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.number.label" default="Number" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderInstance, field: "number")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.country.label" default="Country" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderInstance, field: "country")}</td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.transactionGroup.label" default="Transaction Group" /></td>
								
								<td valign="top" class="value"><g:link controller="transactionGroup" action="show" id="${purchaseOrderInstance?.transactionGroup?.id}">${purchaseOrderInstance?.transactionGroup?.encodeAsHTML()}</g:link></td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.currency1.label" default="Local Currency" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: purchaseOrderInstance, field: "currency1")}</td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.rate.label" default="Exchange Rate" /></td>
								
								<td valign="top" class="value"><g:formatNumber number="${purchaseOrderInstance?.rate?:0}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" /></td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.purchaseOrderDate.label" default="Purchase Order Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${purchaseOrderInstance?.purchaseOrderDate}" format="yyyy-MM-dd"/></td>
								
							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.supplier.label" default="Supplier" /></td>
								
								<td valign="top" class="value"><g:link controller="supplier" action="show" id="${purchaseOrderInstance?.supplier?.id}">${purchaseOrderInstance?.supplier?.encodeAsHTML()}</g:link></td>
								
							</tr>
							
							
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.reasonforInvestment.label" default="Reason for Investment" /></td>
								
								<td valign="top" class="value">
								
									<g:textArea class="form-control" name="reasonforInvestment" value="${purchaseOrderInstance?.reasonforInvestment}" rows="5" cols="40"/>
									<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
								</td>
								
							</tr>
							<!--
							<tr class="prop">
								<td valign="top" class="name"><g:message code="purchaseOrder.comment.label" default="Feedback / Comment from Reviewers" /></td>
								
								<td valign="top" class="value">
								
									<g:textArea class="form-control" name="comment" value="" rows="5" cols="40" placeholder="Type message..."/>
								</td>
								
							</tr>
							-->
								
						</tbody>
					</table>
					<g:render template="pppInfo"/> 
				</div><!--/.box-body table-responsive -->


				<div class="box-footer clearfix">
					
						<g:hiddenField name="id" value="${purchaseOrderInstance?.id}" />
						<g:hiddenField name="version" value="${purchaseOrderInstance?.version}" />
						<g:hiddenField name="updatedBy" value="${auth.user()}"/>
						<g:hiddenField id ="rejectNotes" name="rejectNotes" value="${purchaseOrderInstance?.rejectNotes}" />

						<div class="form-actions">
						 <!-- <a class="btn btn-primary" id="search2" href="#" role="button" onclick ="modalOpened()">${message(code: 'default.button.Search.label', default: 'allocation')}</a> -->
							<g:if test="${purchaseOrderInstance?.state=='Draft' || purchaseOrderInstance?.state=='Rejected'}">
								<g:if test="${purchaseOrderInstance?.createdBy == auth.user().toString()}">
									<g:actionSubmit class="btn btn-primary btn-sm" action="actionWaitingApprove" value="${message(code: 'default.button.approve.label', default: 'Send To Approver')}" />
									
								</g:if>	
							</g:if>
							<g:if test="${purchaseOrderInstance?.state=='Waiting Approval'}">
								<g:if test="${purchaseOrderInstance?.mustApprovedBy==auth.user().toString()}">
									<g:actionSubmit class="btn btn-primary btn-sm" action="actionApprove" value="${message(code: 'default.button.approve.label', default: 'Approve')}" />
									
									<g:actionSubmit id="reject" class="btn btn-primary btn-sm" action="actionReject" value="${message(code: 'default.button.rejected.label', default: 'Rejected')}" />

									<a href="${createLink(action:'writeOff',id:purchaseOrderInstance?.id)}" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-pencil pull-left"></span> Write Off</a>
								</g:if>	
							</g:if>
							
						</div>	
					
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->
			</g:form>	
			<div class="box box-primary clearfix">
				<div class="box-body clearfix">

					<g:render template="detail"/> 
					<div class="form-group clearfix">
						<label for="totalPO" class="col-sm-2 control-label"><g:message code="purchaseOrder.totalPo.label" default="Total PO" /> (${purchaseOrderInstance?.currency1?.code})</label>
						<div class="col-sm-3" >
							<p class="form-control-static">
								<span id ="totalPO">
								<g:formatNumber number="${purchaseOrderInstance?.total?:0}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
									
								</span>
							</p>	
						</div>
					</div>
					
					<div class="form-group clearfix">
						<label for="totalPO2" class="col-sm-2 control-label"><g:message code="purchaseOrder.totalPo.label" default="Total PO" /> (${purchaseOrderInstance?.currency2?.code})</label>
						<div class="col-sm-3">

							<p class="form-control-static">
								<span id ="totalPO2">
									<g:formatNumber number="${(purchaseOrderInstance?.total?:0) / (purchaseOrderInstance?.rate?:1)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
								</span>
							</p>
							
						</div>
					</div>
				</div><!--/.box-body -->	
				
			</div><!--/.box box-primary --> 
			<g:render template="discussionArea"/>
			<g:render template="acivityProposal"/>
			
		</div>
		<r:script>
			function modalOpened(){
				$('#allocation').modal('show')
			  	.on('shown', function() {
			        location.reload(); 
			    });
			}
		/*	$('#reject').on('click', function(){
            	var r= prompt('note');
            	$('#rejectNotes').val(r);        
        	});*/
		</r:script>
	</div><!--/.row -->
</section>

</body>

</html>
