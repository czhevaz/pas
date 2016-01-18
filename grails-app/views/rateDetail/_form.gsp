<%@ page import="com.smanggin.RateDetail" %>



			<div class="form-group fieldcontain ${hasErrors(bean: rateDetailInstance, field: 'currency1', 'error')} required">
				<label for="currency1" class="col-sm-3 control-label"><g:message code="rateDetail.currency1.label" default="Currency1" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="currency1" name="currency1.id" from="${com.smanggin.Currency.list()}" optionKey="id" required="" value="${rateDetailInstance?.currency1?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rateDetailInstance, field: 'currency1', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rateDetailInstance, field: 'currency2', 'error')} required">
				<label for="currency2" class="col-sm-3 control-label"><g:message code="rateDetail.currency2.label" default="Currency2" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="currency2" name="currency2.id" from="${com.smanggin.Currency.list()}" optionKey="id" required="" value="${rateDetailInstance?.currency2?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rateDetailInstance, field: 'currency2', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rateDetailInstance, field: 'rate', 'error')} required">
				<label for="rate" class="col-sm-3 control-label"><g:message code="rateDetail.rate.label" default="Rate" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="rate" name="rate.id" from="${com.smanggin.Rate.list()}" optionKey="id" required="" value="${rateDetailInstance?.rate?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rateDetailInstance, field: 'rate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rateDetailInstance, field: 'value', 'error')} required">
				<label for="value" class="col-sm-3 control-label"><g:message code="rateDetail.value.label" default="Value" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="value" step="any" required="" value="${rateDetailInstance.value}"/>
					<span class="help-inline">${hasErrors(bean: rateDetailInstance, field: 'value', 'error')}</span>
				</div>
			</div>



