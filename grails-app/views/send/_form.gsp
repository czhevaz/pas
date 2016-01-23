<%@ page import="com.smanggin.Send" %>



			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'subject', 'error')} ">
				<label for="subject" class="col-sm-3 control-label"><g:message code="send.subject.label" default="Subject" /></label>
				<div class="col-sm-9">
					<g:textField name="subject" class="form-control" value="${sendInstance?.subject}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'subject', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'receiver', 'error')} ">
				<label for="receiver" class="col-sm-3 control-label"><g:message code="send.receiver.label" default="Receiver" /></label>
				<div class="col-sm-9">
					<g:textField name="receiver" class="form-control" value="${sendInstance?.receiver}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'receiver', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'sender', 'error')} ">
				<label for="sender" class="col-sm-3 control-label"><g:message code="send.sender.label" default="Sender" /></label>
				<div class="col-sm-9">
					<g:textField name="sender" class="form-control" value="${sendInstance?.sender}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'sender', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'message', 'error')} ">
				<label for="message" class="col-sm-3 control-label"><g:message code="send.message.label" default="Message" /></label>
				<div class="col-sm-9">
					<g:textArea name="message" cols="40" rows="5" maxlength="1024" value="${sendInstance?.message}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'message', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'channel', 'error')} ">
				<label for="channel" class="col-sm-3 control-label"><g:message code="send.channel.label" default="Channel" /></label>
				<div class="col-sm-9">
					<g:select name="channel" from="${sendInstance.constraints.channel.inList}" value="${sendInstance?.channel}" valueMessagePrefix="send.channel" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'channel', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'sentDate', 'error')} ">
				<label for="sentDate" class="col-sm-3 control-label"><g:message code="send.sentDate.label" default="Sent Date" /></label>
				<div class="col-sm-9">
					<bs:datePicker name="sentDate" precision="day"  value="${sendInstance?.sentDate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'sentDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'cc', 'error')} ">
				<label for="cc" class="col-sm-3 control-label"><g:message code="send.cc.label" default="Cc" /></label>
				<div class="col-sm-9">
					<g:textField name="cc" class="form-control" value="${sendInstance?.cc}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'cc', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'bcc', 'error')} ">
				<label for="bcc" class="col-sm-3 control-label"><g:message code="send.bcc.label" default="Bcc" /></label>
				<div class="col-sm-9">
					<g:textField name="bcc" class="form-control" value="${sendInstance?.bcc}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'bcc', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'triggerDocClass', 'error')} ">
				<label for="triggerDocClass" class="col-sm-3 control-label"><g:message code="send.triggerDocClass.label" default="Trigger Doc Class" /></label>
				<div class="col-sm-9">
					<g:textField name="triggerDocClass" class="form-control" value="${sendInstance?.triggerDocClass}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'triggerDocClass', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'triggerDocId', 'error')} ">
				<label for="triggerDocId" class="col-sm-3 control-label"><g:message code="send.triggerDocId.label" default="Trigger Doc Id" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="triggerDocId" value="${sendInstance.triggerDocId}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'triggerDocId', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: sendInstance, field: 'retry', 'error')} ">
				<label for="retry" class="col-sm-3 control-label"><g:message code="send.retry.label" default="Retry" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="retry" value="${sendInstance.retry}"/>
					<span class="help-inline">${hasErrors(bean: sendInstance, field: 'retry', 'error')}</span>
				</div>
			</div>



