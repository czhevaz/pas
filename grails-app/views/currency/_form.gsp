<%@ page import="com.smanggin.Currency" %>


			<div class="form-group fieldcontain ${hasErrors(bean: currencyInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="currency.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${currencyInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: currencyInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: currencyInstance, field: 'name', 'error')} ">
				<label for="name" class="col-sm-3 control-label"><g:message code="currency.name.label" default="Name" /></label>
				<div class="col-sm-9">
					<g:textField name="name" class="form-control" value="${currencyInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: currencyInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: currencyInstance, field: 'baseCurrency', 'error')} ">
				<label for="baseCurrency" class="col-sm-3 control-label"><g:message code="currency.baseCurrency.label" default="Base Currency" /></label>
				<div class="col-sm-9">
					<bs:checkBox name="baseCurrency" value="${currencyInstance?.baseCurrency}" onLabel="Yes" offLabel="No"/>
					<span class="help-inline">${hasErrors(bean: currencyInstance, field: 'baseCurrency', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: currencyInstance, field: 'active', 'error')} ">
				<label for="active" class="col-sm-3 control-label"><g:message code="currency.active.label" default="Active" /></label>
				<div class="col-sm-9">
					<bs:checkBox name="active" value="${currencyInstance?.active=='Yes'?true:false}" onLabel="Yes" offLabel="No"/>
					
					<span class="help-inline">${hasErrors(bean: currencyInstance, field: 'active', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: currencyInstance, field: 'country', 'error')} ">
				<label for="country" class="col-sm-3 control-label"><g:message code="currency.country.label" default="Country" /></label>
				<div class="col-sm-9">
					<g:textField name="country" class="form-control" value="${currencyInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: currencyInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			


