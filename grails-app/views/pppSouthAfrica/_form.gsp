<%@ page import="com.smanggin.PppSouthAfrica" %>



			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${pppSouthAfricaInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${pppSouthAfricaInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${pppSouthAfricaInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'lobHead', 'error')} ">
				<label for="lobHead" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.lobHead.label" default="Lob Head" /></label>
				<div class="col-sm-9">
					<g:textField name="lobHead" class="form-control" value="${pppSouthAfricaInstance?.lobHead}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'lobHead', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.number.label" default="Number" /></label>
				<div class="col-sm-9">
					<g:textField name="number" class="form-control" value="${pppSouthAfricaInstance?.number}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'pppCost', 'error')} required">
				<label for="pppCost" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.pppCost.label" default="Ppp Cost" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:field type="number" name="pppCost" step="any" required="" value="${pppSouthAfricaInstance.pppCost}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'pppCost', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'pppDate', 'error')} required">
				<label for="pppDate" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.pppDate.label" default="Ppp Date" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<bs:datePicker name="pppDate" precision="day"  value="${pppSouthAfricaInstance?.pppDate}"  />
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'pppDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'pppDetails', 'error')} ">
				<label for="pppDetails" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.pppDetails.label" default="Ppp Details" /></label>
				<div class="col-sm-9">
					<g:select name="pppDetails" from="${com.smanggin.PppDetail.list()}" multiple="multiple" optionKey="id" size="5" value="${pppSouthAfricaInstance?.pppDetails*.id}" class="many-to-many form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'pppDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'pppProgram', 'error')} ">
				<label for="pppProgram" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.pppProgram.label" default="Ppp Program" /></label>
				<div class="col-sm-9">
					<g:textField name="pppProgram" class="form-control" value="${pppSouthAfricaInstance?.pppProgram}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'pppProgram', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'requestor', 'error')} ">
				<label for="requestor" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.requestor.label" default="Requestor" /></label>
				<div class="col-sm-9">
					<g:textField name="requestor" class="form-control" value="${pppSouthAfricaInstance?.requestor}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'requestor', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: pppSouthAfricaInstance, field: 'state', 'error')} ">
				<label for="state" class="col-sm-3 control-label"><g:message code="pppSouthAfrica.state.label" default="State" /></label>
				<div class="col-sm-9">
					<g:textField name="state" class="form-control" value="${pppSouthAfricaInstance?.state}"/>
					<span class="help-inline">${hasErrors(bean: pppSouthAfricaInstance, field: 'state', 'error')}</span>
				</div>
			</div>



