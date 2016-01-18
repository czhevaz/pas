<%@ page import="com.smanggin.PurchaseOrder" %>


<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'PurchaseOrder')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>

<section id="edit-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
                  <div class="row">					
	                  <div class="col-sm-8">
	                  		<h3 class="box-title"><g:message code="default.edit.label" args="[entityName]" /></h3>
	                  </div>
	                  <div class="col-sm-4">
	                  	<table class="table table-bordered no-margin">
	                  		<thead>
	                  			<tr>
	                  				<td><b>Approver</b> : CM Singapore / Pic LOB</td>
	                  				<td><b>State</b> : ${fieldValue(bean: purchaseOrderInstance, field: "state")}</td>
	                  			</tr>
	                  		</thead>
	                  	</table>
	                  </div>
	                 </div>
                </div><!--/.box-header with-border -->	

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
						<div id="table-ppp">
						<table class="table table-bordered  table-striped  table-hover margin-top-medium">
							<thead>
								<tr>
								
									<th><g:message code="ppp.pppNumber.label" default="PPP Number" /></th>

									<th><g:message code="ppp.pppDescription.label" default="PPP Description" /></th>
									
									<th ><g:message code="ppp.lob.label" default="Lob" /></th>

									<th><g:message code="ppp.brand.label" default="Brand" /></th>

									<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

									<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

									<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>
									
									<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'PPP Date')}" />
																
								
								</tr>
							</thead>
							<tbody>
							
								<tr class="odd">
								
									<td><g:link controller="${session?.domainPPP}" action="show" id="${pppInstance?.id}">${pppInstance?.number}</g:link></td>

									<td>${pppInstance?.pppProgram}</td>

									<td>${pppInstance?.lob}</td>

									<td>${pppInstance?.brand}</td>

									<td>${pppInstance?.requestor}</td>


									<td style="text-align:right">
										<g:formatNumber number="${(pppInstance?.pppCost)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
                					</td>
								
									<td style="text-align:right">
									<g:if test ="${purchaseOrderInstance.state=="Approved"}">
										
									</g:if>
									<g:if test ="${purchaseOrderInstance.state=="Draft"}">
										
									</g:if>
									</td>

									<td><g:formatDate date="${pppInstance?.pppDate}" /></td>

									
								</tr>
							
							</tbody>
						</table>
					
						</div>
					</div><!--/.box-body -->	

					<div class="box-footer">
						<div class="form-actions">
							<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
							<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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
