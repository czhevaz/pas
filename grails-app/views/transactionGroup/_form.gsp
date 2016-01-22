<%@ page import="com.smanggin.TransactionGroup" %>

			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupInstance, field: 'transactionType', 'error')} required">
				<label for="transactionType" class="col-sm-3 control-label"><g:message code="transactionGroup.transactionType.label" default="Transaction Type" /><span class="required-indicator">*</span></label>
				<div class="col-sm-3">
					<g:select id="transactionType" name="transactionType.id" from="${com.smanggin.TransactionType.list()}" optionKey="id" required="" value="${transactionGroupInstance?.transactionType?.id}"  noSelection="${['':'']}" class="many-to-one form-control chosen-select-width"/>
					<span class="help-inline">${hasErrors(bean: transactionGroupInstance, field: 'transactionType', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupInstance, field: 'description', 'error')} ">
				<label for="description" class="col-sm-3 control-label"><g:message code="transactionGroup.description.label" default="Description" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:textField name="description" class="form-control" value="${transactionGroupInstance?.description}" required=""/>
					<span class="help-inline">${hasErrors(bean: transactionGroupInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupInstance, field: 'format', 'error')} ">
				<label for="format" class="col-sm-3 control-label"><g:message code="transactionGroup.format.label" default="Format" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="format" name="format" from="${['YYYY','YYMM']}"  required="" value="${transactionGroupInstance?.format}" class="many-to-one form-control chosen-select-width"  noSelection="${['':'']}" />
					<span class="help-inline">${hasErrors(bean: transactionGroupInstance, field: 'format', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupInstance, field: 'prefix', 'error')} ">
				<label for="prefix" class="col-sm-3 control-label"><g:message code="transactionGroup.prefix.label" default="Prefix" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:textField name="prefix" class="form-control" value="${transactionGroupInstance?.prefix}" required=""/>
					<span class="help-inline">${hasErrors(bean: transactionGroupInstance, field: 'prefix', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupInstance, field: 'width', 'error')} required">
				<label for="width" class="col-sm-3 control-label"><g:message code="transactionGroup.width.label" default="Width" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:field type="number" class="form-control"  name="width" required="" value="${transactionGroupInstance.width}"/>
					<span class="help-inline">${hasErrors(bean: transactionGroupInstance, field: 'width', 'error')}</span>
				</div>
			</div>
			



