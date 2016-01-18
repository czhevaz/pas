<%@ page import="com.smanggin.Rate" %>



			<div class="form-group fieldcontain ${hasErrors(bean: rateInstance, field: 'endDate', 'error')} required">
				<label for="endDate" class="col-sm-3 control-label"><g:message code="rate.endDate.label" default="End Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="endDate" precision="day"  value="${rateInstance?.endDate}"  />
					<span class="help-inline">${hasErrors(bean: rateInstance, field: 'endDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rateInstance, field: 'rateDetails', 'error')} ">
				<label for="rateDetails" class="col-sm-3 control-label"><g:message code="rate.rateDetails.label" default="Rate Details" /></label>
				<div class="col-sm-9">
					
<ul class="one-to-many">
<g:each in="${rateInstance?.rateDetails?}" var="r">
    <li><g:link controller="rateDetail" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rateDetail" action="create" params="['rate.id': rateInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rateDetail.label', default: 'RateDetail')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: rateInstance, field: 'rateDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rateInstance, field: 'starDate', 'error')} required">
				<label for="starDate" class="col-sm-3 control-label"><g:message code="rate.starDate.label" default="Star Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="starDate" precision="day"  value="${rateInstance?.starDate}"  />
					<span class="help-inline">${hasErrors(bean: rateInstance, field: 'starDate', 'error')}</span>
				</div>
			</div>



