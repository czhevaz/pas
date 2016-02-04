<%@ page import="com.smanggin.PurchaseOrder" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'PurchaseOrder')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
</head>

<body>

<section id="create-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
    				<h3 class="box-title"><g:message code="default.create.label" args="[entityName]" /></h3>
    			</div><!--/.box-header with-border -->	
				<g:hasErrors bean="${purchaseOrderInstance}">
				<div class="alert alert-error">
					<g:renderErrors bean="${purchaseOrderInstance}" as="list" />
				</div>
				</g:hasErrors>
				
				<g:form action="save" class="form-horizontal" >
					<g:hiddenField name="createdBy" value="${auth.user()}"/>
					<g:hiddenField id="pppNumber" name="pppNumber" value="purchaseOrderInstance?.pppNumber"/>	
					<div class="box-body">
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						<g:render template="modal"/>		
					
		        
		          <div class="col-sm-6">
		          		
		          		<div class="form-group  required">
							<label for="lob" class="col-sm-3 control-label"><g:message code="register.lob.label" default="Lob" /><span class="required-indicator">*</span></label>
							<div class="col-sm-9">
								<g:select id="lob" name="lob.code" from="${com.smanggin.Lob.list()}" optionKey="code" required="" value="${params?.lob?.code}" class="many-to-one form-control required"/>
								
							</div>
						</div>
						<div class="form-group  required">
							<label for="brand" class="col-sm-3 control-label"><g:message code="register.brand.label" default="Brand" /><span class="required-indicator">*</span></label>
							<div class="col-sm-9">
								<g:select id="brand" name="brand.id" from="${com.smanggin.Brand.list()}" optionKey="code" required="" value="${params?.brand?.id}" class="many-to-one form-control "/>
							</div>
						</div>
						<div class="form-group  required">
							<label for="requestor" class="col-sm-3 control-label"><g:message code="register.requestor.label" default="Requestor" /><span class="required-indicator">*</span></label>
							<div class="col-sm-9">
								<g:select id="requestor" name="requestor" from="${com.smanggin.User.list()}" optionKey="name" optionValue ="name" required="" value="${params?.requestor}" class="many-to-one form-control chosen-select" noSelection="['': '']"/>
								
							</div>
						</div>
					
		          </div>
		          <div class ="col-sm-6">
						<div class="form-group required">
							<label for="pppDate" class="col-sm-2 control-label"><g:message code="register.year.label" default="year" /><span class="required-indicator">*</span></label>
							<div class="col-sm-4">
								<g:textField name="year" id="year" class="form-control" value="${params?.year}"/>
								
							</div>
						</div>
						<div class="form-group required">
							<label for="pppDate" class="col-sm-2 control-label"><g:message code="register.month.label" default="Month" /><span class="required-indicator">*</span></label>
							<div class="col-sm-4">
								<g:textField name="month" id="month" class="form-control" value="${params?.month}"/>
								
							</div>
						</div>
						<div class="form-group">
							<a class="btn btn-primary" id="search2" href="#" role="button" data-toggle="modal" data-target="#searchPpp">${message(code: 'default.button.Search.label', default: 'Search')}</a>	
							
						</div>
					</div>

						<div id="table-ppp">

						<table class="table table-bordered  table-striped  table-hover margin-top-medium">
							<thead>
								<tr>
								
									<th><g:message code="ppp.pppNumber.label" default="PPP Number" /></th>
									
									<th ><g:message code="ppp.lob.label" default="Lob" /></th>

									<th><g:message code="ppp.brand.label" default="Brand" /></th>

									<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

									<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

									<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>
									
									<th><g:message code="ppp.amountTotal.label" default="PPP LIMIT(USD)" />( ${baseCurrency.code} )</th>

									<th><g:message code="ppp.remainTotal.label" default="PPP LIMIT REMAINING (USD)" />( ${baseCurrency.code} ) </th>
					
									<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'PPP Date')}" />
																
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${pppInstanceList}" status="i" var="pppInstance">
								<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
								
									<td><g:link controller="purchaseOrder" action="save" id="${pppInstance.id}">${fieldValue(bean: pppInstance, field: "pppNumber")}</g:link></td>

									<td>${fieldValue(bean: pppInstance, field: "lob")}</td>

									<td>${fieldValue(bean: pppInstance, field: "brand")}</td>

									<td>${fieldValue(bean: pppInstance, field: "requestor")}</td>

									<td>${fieldValue(bean: pppInstance, field: "amount")}</td>
								
									<td>${fieldValue(bean: pppInstance, field: "remainCreditLimit")}</td>
									
									<td></td>
								
									<td></td>
								
									<td><g:formatDate date="${pppInstance.pppDate}" /></td>

									
								</tr>
							</g:each>
							</tbody>
						</table>
						</div>
					</div><!--/.box-body -->
					<div class="box-footer">
						<div class="form-actions">
							<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
				            

						</div>
					</div><!--/.box-footer -->	
				</g:form>
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->	
<r:script>
	

</r:script>	
</section>

</body>

</html>
