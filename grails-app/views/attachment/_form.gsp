<%@ page import="com.smanggin.Attachment" %>



			<div class="form-group fieldcontain ${hasErrors(bean: attachmentInstance, field: 'createdBy', 'error')} ">
				<label for="createdBy" class="col-sm-3 control-label"><g:message code="attachment.createdBy.label" default="Created By" /></label>
				<div class="col-sm-9">
					<g:textField name="createdBy" class="form-control" value="${attachmentInstance?.createdBy}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'createdBy', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: attachmentInstance, field: 'fileName', 'error')} ">
				<label for="fileName" class="col-sm-3 control-label"><g:message code="attachment.fileName.label" default="File Name" /></label>
				<div class="col-sm-9">
					<g:textField name="fileName" class="form-control" value="${attachmentInstance?.fileName}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'fileName', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: attachmentInstance, field: 'fileType', 'error')} ">
				<label for="fileType" class="col-sm-3 control-label"><g:message code="attachment.fileType.label" default="File Type" /></label>
				<div class="col-sm-9">
					<g:textField name="fileType" class="form-control" value="${attachmentInstance?.fileType}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'fileType', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: attachmentInstance, field: 'originalName', 'error')} ">
				<label for="originalName" class="col-sm-3 control-label"><g:message code="attachment.originalName.label" default="Original Name" /></label>
				<div class="col-sm-9">
					<g:textField name="originalName" class="form-control" value="${attachmentInstance?.originalName}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'originalName', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: attachmentInstance, field: 'purchaseOrder', 'error')} required">
				<label for="purchaseOrder" class="col-sm-3 control-label"><g:message code="attachment.purchaseOrder.label" default="Purchase Order" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="purchaseOrder" name="purchaseOrder.id" from="${com.smanggin.PurchaseOrder.list()}" optionKey="id" required="" value="${attachmentInstance?.purchaseOrder?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'purchaseOrder', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: attachmentInstance, field: 'updatedBy', 'error')} ">
				<label for="updatedBy" class="col-sm-3 control-label"><g:message code="attachment.updatedBy.label" default="Updated By" /></label>
				<div class="col-sm-9">
					<g:textField name="updatedBy" class="form-control" value="${attachmentInstance?.updatedBy}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'updatedBy', 'error')}</span>
				</div>
			</div>



