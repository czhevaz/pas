<%@ page import="com.smanggin.PurchaseOrderAllocation" %>



			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderAllocationInstance, field: 'value1', 'error')} ">
				<label for="value1" class="col-sm-3 control-label"><g:message code="purchaseOrderAllocation.value1.label" default="Value1" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="value1" step="any" value="${purchaseOrderAllocationInstance.value1}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderAllocationInstance, field: 'value1', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderAllocationInstance, field: 'value2', 'error')} ">
				<label for="value2" class="col-sm-3 control-label"><g:message code="purchaseOrderAllocation.value2.label" default="Value2" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="value2" step="any" value="${purchaseOrderAllocationInstance.value2}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderAllocationInstance, field: 'value2', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderAllocationInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="purchaseOrderAllocation.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${purchaseOrderAllocationInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderAllocationInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderAllocationInstance, field: 'pppNumber', 'error')} ">
				<label for="pppNumber" class="col-sm-3 control-label"><g:message code="purchaseOrderAllocation.pppNumber.label" default="Ppp Number" /></label>
				<div class="col-sm-9">
					<g:textField name="pppNumber" class="form-control" value="${purchaseOrderAllocationInstance?.pppNumber}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderAllocationInstance, field: 'pppNumber', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderAllocationInstance, field: 'purchaseOrder', 'error')} required">
				<label for="purchaseOrder" class="col-sm-3 control-label"><g:message code="purchaseOrderAllocation.purchaseOrder.label" default="Purchase Order" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="purchaseOrder" name="purchaseOrder.id" from="${com.smanggin.PurchaseOrder.list()}" optionKey="id" required="" value="${purchaseOrderAllocationInstance?.purchaseOrder?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderAllocationInstance, field: 'purchaseOrder', 'error')}</span>
				</div>
			</div>



