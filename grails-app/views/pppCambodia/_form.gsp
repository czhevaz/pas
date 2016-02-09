<%@ page import="com.smanggin.PppCambodia" %>



			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="pppCambodia.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${pppCambodiaInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="pppCambodia.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${pppCambodiaInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="pppCambodia.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${pppCambodiaInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'lobHead', 'error')} ">
				<label for="lobHead" class="col-sm-3 control-label"><g:message code="pppCambodia.lobHead.label" default="Lob Head" /></label>
				<div class="col-sm-9">
					<g:textField name="lobHead" class="form-control" value="${pppCambodiaInstance?.lobHead}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'lobHead', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="pppCambodia.number.label" default="Number" /></label>
				<div class="col-sm-9">
					<g:textField name="number" class="form-control" value="${pppCambodiaInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'pppCost', 'error')} required">
				<label for="pppCost" class="col-sm-3 control-label"><g:message code="pppCambodia.pppCost.label" default="Ppp Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="pppCost" step="any" required="" value="${pppCambodiaInstance.pppCost}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'pppCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'pppDate', 'error')} required">
				<label for="pppDate" class="col-sm-3 control-label"><g:message code="pppCambodia.pppDate.label" default="Ppp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="pppDate" precision="day"  value="${pppCambodiaInstance?.pppDate}"  />
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'pppDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'pppDetails', 'error')} ">
				<label for="pppDetails" class="col-sm-3 control-label"><g:message code="pppCambodia.pppDetails.label" default="Ppp Details" /></label>
				<div class="col-sm-9">
					<g:select name="pppDetails" from="${com.smanggin.PppDetail.list()}" multiple="multiple" optionKey="id" size="5" value="${pppCambodiaInstance?.pppDetails*.id}" class="many-to-many form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'pppDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'pppProgram', 'error')} ">
				<label for="pppProgram" class="col-sm-3 control-label"><g:message code="pppCambodia.pppProgram.label" default="Ppp Program" /></label>
				<div class="col-sm-9">
					<g:textField name="pppProgram" class="form-control" value="${pppCambodiaInstance?.pppProgram}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'pppProgram', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'requestor', 'error')} ">
				<label for="requestor" class="col-sm-3 control-label"><g:message code="pppCambodia.requestor.label" default="Requestor" /></label>
				<div class="col-sm-9">
					<g:textField name="requestor" class="form-control" value="${pppCambodiaInstance?.requestor}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'requestor', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppCambodiaInstance, field: 'state', 'error')} ">
				<label for="state" class="col-sm-3 control-label"><g:message code="pppCambodia.state.label" default="State" /></label>
				<div class="col-sm-9">
					<g:textField name="state" class="form-control" value="${pppCambodiaInstance?.state}"/>
					<span class="help-inline">${hasErrors(bean: pppCambodiaInstance, field: 'state', 'error')}</span>
				</div>
			</div>



