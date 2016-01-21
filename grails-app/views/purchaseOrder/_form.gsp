<%@ page import="com.smanggin.PurchaseOrder" %>

			<div class="form-group  required">
				<label for="country" class="col-sm-3 control-label"><g:message code="register.country.label" default="Country" /></label>
				<div class="col-sm-3">
				<!--	<p class="form-control-static">${session.country}</p>	
					<g:hiddenField name="country" value="${session.country}"/> -->
					<g:select id="country" name="country" from="${com.smanggin.Country.list()}" optionKey="name" required="" value="${purchaseOrderInstance?.country}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'transactionGroup', 'error')} required">
				<label for="transactionGroup" class="col-sm-3 control-label"><g:message code="purchaseOrder.transactionGroup.label" default="Transaction Group" /><span class="required-indicator">*</span></label>
				<div class="col-sm-3">
					<g:select id="transactionGroup" name="transactionGroup.id" from="${com.smanggin.TransactionGroup.list()}" optionKey="id" required="" value="${purchaseOrderInstance?.transactionGroup?.id}" class="many-to-one form-control "/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'transactionGroup', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="purchaseOrder.number.label" default="Number" /></label>
				<div class="col-sm-4">
					<g:textField name="number" class="form-control" value="${purchaseOrderInstance?.number}" readonly="true"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'number', 'error')}</span>
				</div>
			</div>


			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'currency1', 'error')} ">
				<label for="currency1" class="col-sm-3 control-label"><g:message code="purchaseOrder.currency1.label" default="Currency1" /></label>
				<div class="col-sm-3">
					<g:select id="currency1" name="currency1.code" from="${com.smanggin.Currency.list()}" optionKey="code" value="${purchaseOrderInstance?.currency1?.code}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'currency1', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')} ">
				<label for="rate" class="col-sm-3 control-label"><g:message code="purchaseOrder.rate.label" default="Rate" /></label>
				<div class="col-sm-4">
					<g:field type="number" name="rate" class="form-control" step="any" value="${purchaseOrderInstance.rate}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'purchaseOrderDate', 'error')} required">
				<label for="purchaseOrderDate" class="col-sm-3 control-label"><g:message code="purchaseOrder.purchaseOrderDate.label" default="Purchase Order Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<bs:datePicker name="purchaseOrderDate" precision="day"  value="${purchaseOrderInstance?.purchaseOrderDate}"  />
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'purchaseOrderDate', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'supplier', 'error')} required">
				<label for="supplier" class="col-sm-3 control-label"><g:message code="purchaseOrder.supplier.label" default="Supplier" /><span class="required-indicator">*</span></label>
				<div class="col-sm-3">
					<g:select id="supplier" name="supplier.id" from="${com.smanggin.Supplier.list()}" optionKey="id" required="" value="${purchaseOrderInstance?.supplier?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'supplier', 'error')}</span>
				</div>
			</div>
			


<%
if(actionName=='edit') { 
%>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')} ">
				<label for="reasonforInvestment" class="col-sm-3 control-label"><g:message code="purchaseOrder.reasonforInvestment.label" default="Reason for Investment" /></label>
				<div class="col-sm-6">
					<g:textArea class="form-control" name="reasonforInvestment" value="${purchaseOrderInstance?.reasonforInvestment}" rows="5" cols="40"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
				</div>
			</div>

			<div class="form-group ">
				<label for="comment" class="col-sm-3 control-label"><g:message code="purchaseOrder.comment.label" default="Feedback / Comment from Reviewers" /></label>
				<div class="col-sm-6">
					<g:textArea class="form-control" name="comment" value="" rows="5" cols="40"/>
				</div>
			</div>

<% 
}
%>

<r:script>
	$("#currency1").on('change', function() {
    	$.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?code="+$(this).val(),
            type: "POST",
            success: function (data) {
				
            	$("#rate").val(data.value);
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    });
</r:script>	

