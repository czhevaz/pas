<%@ page import="com.smanggin.Lob" %>



			<div class="form-group fieldcontain ${hasErrors(bean: lobInstance, field: 'name', 'error')} ">
				<label for="name" class="col-sm-3 control-label"><g:message code="lob.name.label" default="Name" /></label>
				<div class="col-sm-9">
					<g:textField name="name" class="form-control" value="${lobInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: lobInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: lobInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="lob.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${lobInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: lobInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: lobInstance, field: 'active', 'error')} ">
				<label for="active" class="col-sm-3 control-label"><g:message code="lob.active.label" default="Active" /></label>
				<div class="col-sm-9">
					<g:textField name="active" class="form-control" value="${lobInstance?.active}"/>
					<span class="help-inline">${hasErrors(bean: lobInstance, field: 'active', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: lobInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="lob.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${lobInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: lobInstance, field: 'country', 'error')}</span>
				</div>
			</div>



