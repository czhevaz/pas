<%@ page import="com.smanggin.PppMyanmar" %>



			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="pppMyanmar.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${pppMyanmarInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="pppMyanmar.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${pppMyanmarInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="pppMyanmar.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${pppMyanmarInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'lobHead', 'error')} ">
				<label for="lobHead" class="col-sm-3 control-label"><g:message code="pppMyanmar.lobHead.label" default="Lob Head" /></label>
				<div class="col-sm-9">
					<g:textField name="lobHead" class="form-control" value="${pppMyanmarInstance?.lobHead}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'lobHead', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="pppMyanmar.number.label" default="Number" /></label>
				<div class="col-sm-9">
					<g:textField name="number" class="form-control" value="${pppMyanmarInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'pppCost', 'error')} required">
				<label for="pppCost" class="col-sm-3 control-label"><g:message code="pppMyanmar.pppCost.label" default="Ppp Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="pppCost" step="any" required="" value="${pppMyanmarInstance.pppCost}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'pppCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'pppDate', 'error')} required">
				<label for="pppDate" class="col-sm-3 control-label"><g:message code="pppMyanmar.pppDate.label" default="Ppp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="pppDate" precision="day"  value="${pppMyanmarInstance?.pppDate}"  />
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'pppDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'pppDetails', 'error')} ">
				<label for="pppDetails" class="col-sm-3 control-label"><g:message code="pppMyanmar.pppDetails.label" default="Ppp Details" /></label>
				<div class="col-sm-9">
					<g:select name="pppDetails" from="${com.smanggin.PppDetail.list()}" multiple="multiple" optionKey="id" size="5" value="${pppMyanmarInstance?.pppDetails*.id}" class="many-to-many form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'pppDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'pppProgram', 'error')} ">
				<label for="pppProgram" class="col-sm-3 control-label"><g:message code="pppMyanmar.pppProgram.label" default="Ppp Program" /></label>
				<div class="col-sm-9">
					<g:textField name="pppProgram" class="form-control" value="${pppMyanmarInstance?.pppProgram}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'pppProgram', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'requestor', 'error')} ">
				<label for="requestor" class="col-sm-3 control-label"><g:message code="pppMyanmar.requestor.label" default="Requestor" /></label>
				<div class="col-sm-9">
					<g:textField name="requestor" class="form-control" value="${pppMyanmarInstance?.requestor}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'requestor', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppMyanmarInstance, field: 'state', 'error')} ">
				<label for="state" class="col-sm-3 control-label"><g:message code="pppMyanmar.state.label" default="State" /></label>
				<div class="col-sm-9">
					<g:textField name="state" class="form-control" value="${pppMyanmarInstance?.state}"/>
					<span class="help-inline">${hasErrors(bean: pppMyanmarInstance, field: 'state', 'error')}</span>
				</div>
			</div>



