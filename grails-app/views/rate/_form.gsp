<%@ page import="com.smanggin.Rate" %>



			<div class="form-group fieldcontain ${hasErrors(bean: rateInstance, field: 'starDate', 'error')} required">
				<label for="starDate" class="col-sm-3 control-label"><g:message code="rate.starDate.label" default="Star Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="starDate" precision="day"  value="${rateInstance?.starDate}"  />
					<span class="help-inline">${hasErrors(bean: rateInstance, field: 'starDate', 'error')}</span>
				</div>
			</div>


			<div class="form-group fieldcontain ${hasErrors(bean: rateInstance, field: 'endDate', 'error')} required">
				<label for="endDate" class="col-sm-3 control-label"><g:message code="rate.endDate.label" default="End Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="endDate" precision="day"  value="${rateInstance?.endDate}"  />
					<span class="help-inline">${hasErrors(bean: rateInstance, field: 'endDate', 'error')}</span>
				</div>
			</div>





