<%@ page import="com.smanggin.Approval" %>



			<div class="form-group fieldcontain ${hasErrors(bean: approvalInstance, field: 'description', 'error')} ">
				<label for="description" class="col-sm-3 control-label"><g:message code="approval.description.label" default="Description" /></label>
				<div class="col-sm-9">
					<g:textField name="description" class="form-control" value="${approvalInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: approvalInstance, field: 'description', 'error')}</span>
				</div>
			</div>



