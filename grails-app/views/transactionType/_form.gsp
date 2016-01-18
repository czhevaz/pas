<%@ page import="com.smanggin.TransactionType" %>



			<div class="form-group fieldcontain ${hasErrors(bean: transactionTypeInstance, field: 'code', 'error')} ">
				<label for="code" class="col-sm-3 control-label"><g:message code="transactionType.code.label" default="Code" /></label>
				<div class="col-sm-9">
					<g:textField name="code" class="form-control" value="${transactionTypeInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: transactionTypeInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: transactionTypeInstance, field: 'name', 'error')} ">
				<label for="name" class="col-sm-3 control-label"><g:message code="transactionType.name.label" default="Name" /></label>
				<div class="col-sm-9">
					<g:textField name="name" class="form-control" value="${transactionTypeInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: transactionTypeInstance, field: 'name', 'error')}</span>
				</div>
			</div>



