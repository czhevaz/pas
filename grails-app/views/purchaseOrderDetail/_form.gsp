<%@ page import="com.smanggin.PurchaseOrderDetail" %>



			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'updatedBy', 'error')} ">
				<label for="updatedBy" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.updatedBy.label" default="Updated By" /></label>
				<div class="col-sm-9">
					<g:textField name="updatedBy" class="form-control" value="${purchaseOrderDetailInstance?.updatedBy}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'updatedBy', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'startDate', 'error')} ">
				<label for="startDate" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.startDate.label" default="Start Date" /></label>
				<div class="col-sm-9">
					<bs:datePicker name="startDate" precision="day"  value="${purchaseOrderDetailInstance?.startDate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'startDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'finishDate', 'error')} ">
				<label for="finishDate" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.finishDate.label" default="Finish Date" /></label>
				<div class="col-sm-9">
					<bs:datePicker name="finishDate" precision="day"  value="${purchaseOrderDetailInstance?.finishDate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'finishDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'qty', 'error')} ">
				<label for="qty" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.qty.label" default="Qty" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="qty" step="any" value="${purchaseOrderDetailInstance.qty}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'qty', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'unitPrice', 'error')} ">
				<label for="unitPrice" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.unitPrice.label" default="Unit Price" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="unitPrice" step="any" value="${purchaseOrderDetailInstance.unitPrice}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'unitPrice', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'transactionDate', 'error')} ">
				<label for="transactionDate" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.transactionDate.label" default="Transaction Date" /></label>
				<div class="col-sm-9">
					<bs:datePicker name="transactionDate" precision="day"  value="${purchaseOrderDetailInstance?.transactionDate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'transactionDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'coverageArea', 'error')} ">
				<label for="coverageArea" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.coverageArea.label" default="Coverage Area" /></label>
				<div class="col-sm-9">
					<g:textField name="coverageArea" class="form-control" value="${purchaseOrderDetailInstance?.coverageArea}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'coverageArea', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'createdBy', 'error')} ">
				<label for="createdBy" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.createdBy.label" default="Created By" /></label>
				<div class="col-sm-9">
					<g:textField name="createdBy" class="form-control" value="${purchaseOrderDetailInstance?.createdBy}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'createdBy', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'description', 'error')} ">
				<label for="description" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.description.label" default="Description" /></label>
				<div class="col-sm-9">
					<g:textField name="description" class="form-control" value="${purchaseOrderDetailInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'outlet', 'error')} ">
				<label for="outlet" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.outlet.label" default="Outlet" /></label>
				<div class="col-sm-9">
					<g:textField name="outlet" class="form-control" value="${purchaseOrderDetailInstance?.outlet}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'outlet', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'pic', 'error')} ">
				<label for="pic" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.pic.label" default="Pic" /></label>
				<div class="col-sm-9">
					<g:textField name="pic" class="form-control" value="${purchaseOrderDetailInstance?.pic}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'pic', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'purchaseOrder', 'error')} required">
				<label for="purchaseOrder" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.purchaseOrder.label" default="Purchase Order" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="purchaseOrder" name="purchaseOrder.id" from="${com.smanggin.PurchaseOrder.list()}" optionKey="id" required="" value="${purchaseOrderDetailInstance?.purchaseOrder?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'purchaseOrder', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'remark', 'error')} ">
				<label for="remark" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.remark.label" default="Remark" /></label>
				<div class="col-sm-9">
					<g:textField name="remark" class="form-control" value="${purchaseOrderDetailInstance?.remark}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'remark', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'totalCost', 'error')} required">
				<label for="totalCost" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.totalCost.label" default="Total Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="totalCost" step="any" required="" value="${purchaseOrderDetailInstance.totalCost}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'totalCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderDetailInstance, field: 'totalCost2', 'error')} required">
				<label for="totalCost2" class="col-sm-3 control-label"><g:message code="purchaseOrderDetail.totalCost2.label" default="Total Cost2" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="totalCost2" step="any" required="" value="${purchaseOrderDetailInstance.totalCost2}"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderDetailInstance, field: 'totalCost2', 'error')}</span>
				</div>
			</div>



