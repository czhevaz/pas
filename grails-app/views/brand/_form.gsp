<%@ page import="com.smanggin.Brand" %>



			<div class="form-group fieldcontain ${hasErrors(bean: brandInstance, field: 'active', 'error')} ">
				<label for="active" class="col-sm-3 control-label"><g:message code="brand.active.label" default="Active" /></label>
				<div class="col-sm-9">
					<g:textField name="active" class="form-control" value="${brandInstance?.active}"/>
					<span class="help-inline">${hasErrors(bean: brandInstance, field: 'active', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: brandInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="brand.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${brandInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: brandInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: brandInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="brand.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${brandInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: brandInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: brandInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="brand.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${brandInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: brandInstance, field: 'lob', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: brandInstance, field: 'name', 'error')} ">
				<label for="name" class="col-sm-3 control-label"><g:message code="brand.name.label" default="Name" /></label>
				<div class="col-sm-9">
					<g:textField name="name" class="form-control" value="${brandInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: brandInstance, field: 'name', 'error')}</span>
				</div>
			</div>



