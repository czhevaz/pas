<%@ page import="com.smanggin.PppSrilanka" %>



			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="pppSrilanka.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${pppSrilankaInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="pppSrilanka.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${pppSrilankaInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="pppSrilanka.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${pppSrilankaInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'lobHead', 'error')} ">
				<label for="lobHead" class="col-sm-3 control-label"><g:message code="pppSrilanka.lobHead.label" default="Lob Head" /></label>
				<div class="col-sm-9">
					<g:textField name="lobHead" class="form-control" value="${pppSrilankaInstance?.lobHead}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'lobHead', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="pppSrilanka.number.label" default="Number" /></label>
				<div class="col-sm-9">
					<g:textField name="number" class="form-control" value="${pppSrilankaInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'pppCost', 'error')} required">
				<label for="pppCost" class="col-sm-3 control-label"><g:message code="pppSrilanka.pppCost.label" default="Ppp Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="pppCost" step="any" required="" value="${pppSrilankaInstance.pppCost}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'pppCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'pppDate', 'error')} required">
				<label for="pppDate" class="col-sm-3 control-label"><g:message code="pppSrilanka.pppDate.label" default="Ppp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="pppDate" precision="day"  value="${pppSrilankaInstance?.pppDate}"  />
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'pppDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'pppDetails', 'error')} ">
				<label for="pppDetails" class="col-sm-3 control-label"><g:message code="pppSrilanka.pppDetails.label" default="Ppp Details" /></label>
				<div class="col-sm-9">
					<g:select name="pppDetails" from="${com.smanggin.PppDetail.list()}" multiple="multiple" optionKey="id" size="5" value="${pppSrilankaInstance?.pppDetails*.id}" class="many-to-many form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'pppDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'pppProgram', 'error')} ">
				<label for="pppProgram" class="col-sm-3 control-label"><g:message code="pppSrilanka.pppProgram.label" default="Ppp Program" /></label>
				<div class="col-sm-9">
					<g:textField name="pppProgram" class="form-control" value="${pppSrilankaInstance?.pppProgram}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'pppProgram', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'requestor', 'error')} ">
				<label for="requestor" class="col-sm-3 control-label"><g:message code="pppSrilanka.requestor.label" default="Requestor" /></label>
				<div class="col-sm-9">
					<g:textField name="requestor" class="form-control" value="${pppSrilankaInstance?.requestor}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'requestor', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSrilankaInstance, field: 'state', 'error')} ">
				<label for="state" class="col-sm-3 control-label"><g:message code="pppSrilanka.state.label" default="State" /></label>
				<div class="col-sm-9">
					<g:textField name="state" class="form-control" value="${pppSrilankaInstance?.state}"/>
					<span class="help-inline">${hasErrors(bean: pppSrilankaInstance, field: 'state', 'error')}</span>
				</div>
			</div>



