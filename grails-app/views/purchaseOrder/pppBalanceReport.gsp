<%@ page import="com.smanggin.PurchaseOrder" %>

<!doctype html>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${title}" />
	<title><g:message code="default.pppBalanceReport.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	<g:set var="months" value="${new java.text.DateFormatSymbols().months}"/>
	<g:set var="today" value="${new Date()}"/>
</head>

<body>

<section id="create-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
    				<h3 class="box-title"><g:message code="default.pppBalanceReport.label" args="[entityName]" /></h3>
    			</div><!--/.box-header with-border -->	
					
						
					<div class="box-body">
						<div class="row">
							<div class="col-sm-6">

								<div class="form-group ${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}  required">
									<label for="country" class="col-sm-3 control-label"><g:message code="register.country.label" default="Country" /></label>
									<div class="col-sm-9">
									<!--	<p class="form-control-static">${session.country}</p>	
										<g:hiddenField name="country" value="${session.country}"/> -->
										<g:select id="country" name="country" from="${com.smanggin.Country.list()}" optionKey="name" required="" value="${purchaseOrderInstance?.country}" class="many-to-one form-control chosen-select" />
										<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}</span>
									</div>
								</div>
							</div>	
							<div class="col-sm-6">		
								<div class="form-group  required">
									<label for="lob" class="col-sm-3 control-label"><g:message code="register.lob.label" default="Lob" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:select id="lob" name="lob.code" from="${com.smanggin.Lob.list()}" optionKey="code"  value="${purchaseOrderInstance?.lob}" class="many-to-one form-control "/>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group required">
									<label for="pppDate" class="col-sm-1 control-label"><g:message code="register.year.label" default="year" /><span class="required-indicator">*</span></label>
									<div class="col-sm-3">
										<g:textField name="year" id="year" class="form-control" value="${params?.year}"/>
										
									</div>
								</div>
								<div class="form-group required">
									<label for="pppDate" class="col-sm-1 control-label"><g:message code="register.month.label" default="Month" /><span class="required-indicator">*</span></label>
									<div class="col-sm-3">
										<g:select id="status" name="month" from="${months as List}"   value="${months[today[Calendar.MONTH]]}" class="many-to-one form-control chosen-select"/>
										
								
									</div>
								</div>
								<div class="form-group required">
									<label for="pppDate" class="col-sm-1 control-label"><g:message code="register.status.label" default="Status" /><span class="required-indicator">*</span></label>
									<div class="col-sm-3">
										<g:select id="status" name="status" from="${['All','Draft','Waiting Approval','Approved','Closed']}"   value="${params?.status}" class="many-to-one form-control chosen-select"/>
										
										
									</div>
								</div>
							</div>
						</div>
		        		
					</div><!--/.box-body -->
					<div class="box-footer clearfix">
						<div class="form-actions">
							<g:submitButton name="searc" class="btn btn-primary" value="${message(code: 'default.button.search.label', default: 'Prosess')}" />
				           
				            
						</div>
					</div><!--/.box-footer -->	
	
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->	

	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-body table-responsive">
					<table class="table table-bordered margin-top-medium">
						<thead>
							<tr>
								<th><g:message code="ppp.number.label" default="Number" /></th>
								
								<th><g:message code="ppp.amount.label" default="Limit (USD)" /></th>

								<th><g:message code="ppp.brand.label" default="PPP brand" /></th>

								<th><g:message code="purchaseOrder.number.label" default="PO No." /></th>

								<th><g:message code="purchaseOrder.trType.label" default="PO Type" /></th>
							
								<th><g:message code="purchaseOrder.state.label" default="PO Status" /></th>

								<th><g:message code="purchaseOrder.Total.label" default="PO Cost" /></th>

								<th><g:message code="ppp.balance.label" default="PPP Balance" /></th>
									
								
							
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="3">
									005/PPP/PH/ETH/01/2016
								</td>
								<td style="text-align:right;" rowspan="3">
									37648
								</td>
								<td rowspan="3">
									EETH
								</td>
								<td>
									PO316023
								</td>
								<td>
									Purchasing Form
								</td>
								<td>
									Done
								</td>
								<td style="text-align:right;">
									5000
								</td>
								<td style="text-align:right;">
									32648
								</td>
							</tr>
							<tr>
							
								<td>
									PO323345
								</td>
								<td>
									Purchasing Form
								</td>
								<td>
									Waiting Approval
								</td>
								<td style="text-align:right;">
									2000
								</td>
								<td style="text-align:right;">
									30648
								</td>
							</tr>
							<tr>
							
								<td>
									PO332211
								</td>
								<td>
									Non PO Form 
								</td>
								<td>
									Draft
								</td>
								<td style="text-align:right;">
									5000
								</td>
								<td style="text-align:right;">
									25648
								</td>
							</tr>
							<tr>
								<td rowspan="2">
									006/PPP/PH/ETH/02/2016
								</td>
								<td style="text-align:right;" rowspan="2">
									20000
								</td>
								<td rowspan="2">
									EETH
								</td>
								<td>
									PO112233
								</td>
								<td>
									PO Sales Marketing
								</td>
								<td>
									Done
								</td>
								<td style="text-align:right;">
									5000
								</td>
								<td style="text-align:right;">
									32648
								</td>
							</tr>
							<tr>
							
								<td>
									PO334455
								</td>
								<td>
									Purchasing Form 
								</td>
								<td>
									Waiting Approval
								</td>
								<td style="text-align:right;">
									15000
								</td>
								<td style="text-align:right;">
									10000
								</td>
							</tr>



						</tbody>
					</table>	
				</div>				
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->	
	
<r:script>
	$("#reset").click(function(){ 
		$('#lob').val('').trigger('chosen:updated');
		$('#brand').val('').trigger('chosen:updated');
		$('#requestor').val('').trigger('chosen:updated');
	});

	$(document).ready(function () {
		$('#lob').prepend("<option value='' > All </option>")		
		$('#lob').chosen();
	});	

</r:script>	

</section>

</body>

</html>
