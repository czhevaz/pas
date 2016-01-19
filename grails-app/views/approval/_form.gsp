<%@ page import="com.smanggin.Approval" %>



			<div class="form-group fieldcontain ${hasErrors(bean: approvalInstance, field: 'approvalDetails', 'error')} ">
				<label for="approvalDetails" class="col-sm-3 control-label"><g:message code="approval.approvalDetails.label" default="Approval Details" /></label>
				<div class="col-sm-9">
					
<ul class="one-to-many">
<g:each in="${approvalInstance?.approvalDetails?}" var="a">
    <li><g:link controller="approvalDetail" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="approvalDetail" action="create" params="['approval.id': approvalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'approvalDetail.label', default: 'ApprovalDetail')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: approvalInstance, field: 'approvalDetails', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: approvalInstance, field: 'description', 'error')} ">
				<label for="description" class="col-sm-3 control-label"><g:message code="approval.description.label" default="Description" /></label>
				<div class="col-sm-9">
					<g:textField name="description" class="form-control" value="${approvalInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: approvalInstance, field: 'description', 'error')}</span>
				</div>
			</div>



