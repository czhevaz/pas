<%@ page import="com.smanggin.ApprovalDetail" %>



			<div class="form-group fieldcontain ${hasErrors(bean: approvalDetailInstance, field: 'isSequential', 'error')} ">
				<label for="isSequential" class="col-sm-3 control-label"><g:message code="approvalDetail.isSequential.label" default="Is Sequential" /></label>
				<div class="col-sm-9">
					<bs:checkBox name="isSequential" value="${approvalDetailInstance?.isSequential}" />
					<span class="help-inline">${hasErrors(bean: approvalDetailInstance, field: 'isSequential', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: approvalDetailInstance, field: 'approval', 'error')} required">
				<label for="approval" class="col-sm-3 control-label"><g:message code="approvalDetail.approval.label" default="Approval" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="approval" name="approval.id" from="${com.smanggin.Approval.list()}" optionKey="id" required="" value="${approvalDetailInstance?.approval?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: approvalDetailInstance, field: 'approval', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: approvalDetailInstance, field: 'brand', 'error')} ">
				<label for="brand" class="col-sm-3 control-label"><g:message code="approvalDetail.brand.label" default="Brand" /></label>
				<div class="col-sm-9">
					<g:textField name="brand" class="form-control" value="${approvalDetailInstance?.brand}"/>
					<span class="help-inline">${hasErrors(bean: approvalDetailInstance, field: 'brand', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: approvalDetailInstance, field: 'country', 'error')} required">
				<label for="country" class="col-sm-3 control-label"><g:message code="approvalDetail.country.label" default="Country" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="country" name="country.id" from="${com.smanggin.Country.list()}" optionKey="id" required="" value="${approvalDetailInstance?.country?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: approvalDetailInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: approvalDetailInstance, field: 'lob', 'error')} ">
				<label for="lob" class="col-sm-3 control-label"><g:message code="approvalDetail.lob.label" default="Lob" /></label>
				<div class="col-sm-9">
					<g:textField name="lob" class="form-control" value="${approvalDetailInstance?.lob}"/>
					<span class="help-inline">${hasErrors(bean: approvalDetailInstance, field: 'lob', 'error')}</span>
				</div>
			</div>



