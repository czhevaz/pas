<%@ page import="com.smanggin.Country" %>


			<div class="form-group fieldcontain ${hasErrors(bean: countryInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="country.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${countryInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: countryInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: countryInstance, field: 'name', 'error')} ">
				<label for="name" class="col-sm-3 control-label"><g:message code="country.name.label" default="Name" /></label>
				<div class="col-sm-9">
					<g:textField name="name" class="form-control" value="${countryInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: countryInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: countryInstance, field: 'active', 'error')} ">
				<label for="active" class="col-sm-3 control-label"><g:message code="country.active.label" default="Active" /></label>
				<div class="col-sm-9">
					<bs:checkBox name="active" value="${countryInstance?.active=='Yes'?true:false}" onLabel="Yes" offLabel="No" />
					<span class="help-inline">${hasErrors(bean: countryInstance, field: 'active', 'error')}</span>
				</div>
			</div>

			


