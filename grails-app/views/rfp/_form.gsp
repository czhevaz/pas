<%@ page import="com.smanggin.Rfp" %>

			<div class="form-group ${hasErrors(bean: rfpInstance, field: 'country', 'error')}  required">
				<label for="country" class="col-sm-3 control-label"><g:message code="register.country.label" default="Country" /></label>
				<div class="col-sm-3">
			
					<g:select id="country" name="country" from="${com.smanggin.Country.list()}" optionKey="name" required="" value="${rfpInstance?.country}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'country', 'error')}</span>
				</div>
			</div>
			
			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'transactionGroup', 'error')} required">
				<label for="transactionGroup" class="col-sm-3 control-label"><g:message code="rfp.transactionGroup.label" default="Transaction Group" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="transactionGroup" name="transactionGroup.id" from="${com.smanggin.TransactionGroup.list()}" optionKey="id" required="" value="${rfpInstance?.transactionGroup?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'transactionGroup', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="rfp.number.label" default="Number" /></label>
				<div class="col-sm-5">
					<g:textField name="number" class="form-control" value="${rfpInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'currency1', 'error')} required">
				<label for="currency1" class="col-sm-3 control-label"><g:message code="rfp.currency1.label" default="Currency1" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="currency1" name="currency1.id" from="${com.smanggin.Currency.list()}" optionKey="code" required="" value="${rfpInstance?.currency1?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'currency1', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'rate', 'error')} required">
				<label for="rate" class="col-sm-3 control-label"><g:message code="rfp.rate.label" default="Rate" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:field type="number" name="rate" step="any" required="" value="${rfpInstance.rate}"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'rate', 'error')}</span>
				</div>
			</div>

			
			
			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'rfpDate', 'error')} required">
				<label for="rfpDate" class="col-sm-3 control-label"><g:message code="rfp.rfpDate.label" default="Rfp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<bs:datePicker name="rfpDate" precision="day"  value="${rfpInstance?.rfpDate}"  />
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'rfpDate', 'error')}</span>
				</div>
			</div>


			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'supplier', 'error')} required">
				<label for="supplier" class="col-sm-3 control-label"><g:message code="rfp.supplier.label" default="Supplier" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="supplier" name="supplier.id" from="${com.smanggin.Supplier.list()}" optionKey="id" required="" value="${rfpInstance?.supplier?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'supplier', 'error')}</span>
				</div>
			</div>



<r:script>
	var country = $('#country').val();

	$(document).ready(function () {
		
		<%
		if(actionName=='create') { 
		%>
		$('#transactionGroup').empty();
		<% 
		}
		%>

		$('#transactionGroup').chosen();

		<g:if test="${session.country}" >
			country ='${session.country}';
			$('#country').val(country);	
			$('#country option:not(:selected)').prop('disabled', true).trigger('chosen:updated');
			
			getCurrency(country);
			getTrGroup(country);
			getSupplier(country)
		</g:if>
		
	});

</r:script>
