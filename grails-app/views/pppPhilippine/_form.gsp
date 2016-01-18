<%@ page import="com.smanggin.PppPhilippine" %>



			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'brand', 'error')} required">
				<label for="brand" class="col-sm-3 control-label"><g:message code="pppPhilippine.brand.label" default="Brand" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="brand" name="brand.id" from="${com.smanggin.Brand.list()}" optionKey="id" required="" value="${pppPhilippineInstance?.brand?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="pppPhilippine.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${pppPhilippineInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'lob', 'error')} required">
				<label for="lob" class="col-sm-3 control-label"><g:message code="pppPhilippine.lob.label" default="Lob" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="lob" name="lob.id" from="${com.smanggin.Lob.list()}" optionKey="id" required="" value="${pppPhilippineInstance?.lob?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'lobHead', 'error')} ">
				<label for="lobHead" class="col-sm-3 control-label"><g:message code="pppPhilippine.lobHead.label" default="Lob Head" /></label>
				<div class="col-sm-9">
					<g:textField name="lobHead" class="form-control" value="${pppPhilippineInstance?.lobHead}"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'lobHead', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="pppPhilippine.number.label" default="Number" /></label>
				<div class="col-sm-9">
					<g:textField name="number" class="form-control" value="${pppPhilippineInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'pppCost', 'error')} required">
				<label for="pppCost" class="col-sm-3 control-label"><g:message code="pppPhilippine.pppCost.label" default="Ppp Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="pppCost" step="any" required="" value="${pppPhilippineInstance.pppCost}"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'pppCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'pppDate', 'error')} required">
				<label for="pppDate" class="col-sm-3 control-label"><g:message code="pppPhilippine.pppDate.label" default="Ppp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="pppDate" precision="day"  value="${pppPhilippineInstance?.pppDate}"  />
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'pppDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'pppProgram', 'error')} ">
				<label for="pppProgram" class="col-sm-3 control-label"><g:message code="pppPhilippine.pppProgram.label" default="Ppp Program" /></label>
				<div class="col-sm-9">
					<g:textField name="pppProgram" class="form-control" value="${pppPhilippineInstance?.pppProgram}"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'pppProgram', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppPhilippineInstance, field: 'requestor', 'error')} ">
				<label for="requestor" class="col-sm-3 control-label"><g:message code="pppPhilippine.requestor.label" default="Requestor" /></label>
				<div class="col-sm-9">
					<g:textField name="requestor" class="form-control" value="${pppPhilippineInstance?.requestor}"/>
					<span class="help-inline">${hasErrors(bean: pppPhilippineInstance, field: 'requestor', 'error')}</span>
				</div>
			</div>



