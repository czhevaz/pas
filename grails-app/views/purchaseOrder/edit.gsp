<%@ page import="com.smanggin.PurchaseOrder" %>


<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'PurchaseOrder')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	<g:set var="canEdit" value="true" scope="request" />
</head>

<body>

<section id="edit-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<g:render template="headerTittle"/> 				
				<g:hasErrors bean="${purchaseOrderInstance}">
				<div class="alert alert-error">
					<g:renderErrors bean="${purchaseOrderInstance}" as="list" />
				</div>
				</g:hasErrors>
					
				<g:form method="post" class="form-horizontal" >
					<div class="box-body">
						<g:hiddenField name="id" value="${purchaseOrderInstance?.id}" />
						<g:hiddenField name="version" value="${purchaseOrderInstance?.version}" />
						<g:hiddenField name="updatedBy" value="${auth.user()}"/>
						
						<!-- render template -->
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>

						<g:render template="pppInfo"/> 
					
						
					</div><!--/.box-body -->	

					<div class="box-footer">
						<div class="form-actions">
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
							
				            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
						</div>
					</div><!--/.box-footer -->	
				</g:form>
				

			</div><!--/.box box-primary -->
			
			<div class="box box-primary clearfix">
				<div class="box-body clearfix">

					<g:render template="detail"/> 
					<div class="form-group clearfix">
						<label for="totalPO" class="col-sm-2 control-label"><g:message code="purchaseOrder.totalPo.label" default="Total PO" /> (${purchaseOrderInstance.currency1?.code})</label>
						<div class="col-sm-3" >
							<p class="form-control-static">
								<span id ="totalPO">
								<g:formatNumber number="${purchaseOrderInstance?.total?:0}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
									
								</span>
							</p>	
						</div>
					</div>
					
					<div class="form-group clearfix">
						<label for="totalPO2" class="col-sm-2 control-label"><g:message code="purchaseOrder.totalPo.label" default="Total PO" /> (${purchaseOrderInstance.currency2?.code})</label>
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
			<div class="clearfix">
			</div>
			<g:render template="discussionArea"/>
			<g:render template="acivityProposal"/>
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>
			
</body>

</html>
