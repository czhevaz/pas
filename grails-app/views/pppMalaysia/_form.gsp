<%@ page import="com.smanggin.PppMalaysia" %>



			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="pppMalaysia.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${pppMalaysiaInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="pppMalaysia.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${pppMalaysiaInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="pppMalaysia.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${pppMalaysiaInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'lobHead', 'error')} ">
				<label for="lobHead" class="col-sm-3 control-label"><g:message code="pppMalaysia.lobHead.label" default="Lob Head" /></label>
				<div class="col-sm-9">
					<g:textField name="lobHead" class="form-control" value="${pppMalaysiaInstance?.lobHead}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'lobHead', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="pppMalaysia.number.label" default="Number" /></label>
				<div class="col-sm-9">
					<g:textField name="number" class="form-control" value="${pppMalaysiaInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'pppCost', 'error')} required">
				<label for="pppCost" class="col-sm-3 control-label"><g:message code="pppMalaysia.pppCost.label" default="Ppp Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="pppCost" step="any" required="" value="${pppMalaysiaInstance.pppCost}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'pppCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'pppDate', 'error')} required">
				<label for="pppDate" class="col-sm-3 control-label"><g:message code="pppMalaysia.pppDate.label" default="Ppp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="pppDate" precision="day"  value="${pppMalaysiaInstance?.pppDate}"  />
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'pppDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'pppDetails', 'error')} ">
				<label for="pppDetails" class="col-sm-3 control-label"><g:message code="pppMalaysia.pppDetails.label" default="Ppp Details" /></label>
				<div class="col-sm-9">
					<g:select name="pppDetails" from="${com.smanggin.PppDetail.list()}" multiple="multiple" optionKey="id" size="5" value="${pppMalaysiaInstance?.pppDetails*.id}" class="many-to-many form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'pppDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'pppProgram', 'error')} ">
				<label for="pppProgram" class="col-sm-3 control-label"><g:message code="pppMalaysia.pppProgram.label" default="Ppp Program" /></label>
				<div class="col-sm-9">
					<g:textField name="pppProgram" class="form-control" value="${pppMalaysiaInstance?.pppProgram}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'pppProgram', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'requestor', 'error')} ">
				<label for="requestor" class="col-sm-3 control-label"><g:message code="pppMalaysia.requestor.label" default="Requestor" /></label>
				<div class="col-sm-9">
					<g:textField name="requestor" class="form-control" value="${pppMalaysiaInstance?.requestor}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'requestor', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMalaysiaInstance, field: 'state', 'error')} ">
				<label for="state" class="col-sm-3 control-label"><g:message code="pppMalaysia.state.label" default="State" /></label>
				<div class="col-sm-9">
					<g:textField name="state" class="form-control" value="${pppMalaysiaInstance?.state}"/>
					<span class="help-inline">${hasErrors(bean: pppMalaysiaInstance, field: 'state', 'error')}</span>
				</div>
			</div>



