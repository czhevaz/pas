<%@ page import="com.smanggin.ChartOfAccount" %>



			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'active', 'error')} ">
				<label for="active" class="col-sm-3 control-label"><g:message code="chartOfAccount.active.label" default="Active" /></label>
				<div class="col-sm-9">
					<g:textField name="active" class="form-control" value="${chartOfAccountInstance?.active}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'active', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="chartOfAccount.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${chartOfAccountInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'country', 'error')} ">
				<label for="country" class="col-sm-3 control-label"><g:message code="chartOfAccount.country.label" default="Country" /></label>
				<div class="col-sm-9">
					<g:textField name="country" class="form-control" value="${chartOfAccountInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'description', 'error')} ">
				<label for="description" class="col-sm-3 control-label"><g:message code="chartOfAccount.description.label" default="Description" /></label>
				<div class="col-sm-9">
					<g:textField name="description" class="form-control" value="${chartOfAccountInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="chartOfAccount.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${chartOfAccountInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'lob', 'error')}</span>
				</div>
			</div>



