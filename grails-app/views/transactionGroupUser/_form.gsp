<%@ page import="com.smanggin.TransactionGroupUser" %>



			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupUserInstance, field: 'transactionGroup', 'error')} required">
				<label for="transactionGroup" class="col-sm-3 control-label"><g:message code="transactionGroupUser.transactionGroup.label" default="Transaction Group" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="transactionGroup" name="transactionGroup.id" from="${com.smanggin.TransactionGroup.list()}" optionKey="id" required="" value="${transactionGroupUserInstance?.transactionGroup?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: transactionGroupUserInstance, field: 'transactionGroup', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: transactionGroupUserInstance, field: 'user', 'error')} required">
				<label for="user" class="col-sm-3 control-label"><g:message code="transactionGroupUser.user.label" default="User" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:select id="user" name="user.id" from="${com.smanggin.User.list()}" optionKey="id" required="" value="${transactionGroupUserInstance?.user?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: transactionGroupUserInstance, field: 'user', 'error')}</span>
				</div>
			</div>



