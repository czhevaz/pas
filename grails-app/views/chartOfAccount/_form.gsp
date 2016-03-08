<%@ page import="com.smanggin.ChartOfAccount" %>

			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'coaIdServer', 'error')} ">
				<label for="coaIdServer" class="col-sm-3 control-label"><g:message code="chartOfAccount.coaIdServer.label" default="Coa Id Server" /></label>
				<div class="col-sm-9">
					<g:textField name="coaIdServer" class="form-control" value="${chartOfAccountInstance?.coaIdServer}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'coaIdServer', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="chartOfAccount.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${chartOfAccountInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			
			<div class="form-group fieldcontain ${hasErrors(bean: chartOfAccountInstance, field: 'description', 'error')} ">
				<label for="description" class="col-sm-3 control-label"><g:message code="chartOfAccount.description.label" default="Description" /></label>
				<div class="col-sm-9">
					<g:textField name="description" class="form-control" value="${chartOfAccountInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: chartOfAccountInstance, field: 'description', 'error')}</span>
				</div>
			</div>



			


