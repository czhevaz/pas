<%@ page import="com.smanggin.Outbox" %>



			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'subject', 'error')} ">
				<label for="subject" class="col-sm-3 control-label"><g:message code="outbox.subject.label" default="Subject" /></label>
				<div class="col-sm-9">
					<g:textField name="subject" class="form-control" value="${outboxInstance?.subject}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'subject', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'receiver', 'error')} ">
				<label for="receiver" class="col-sm-3 control-label"><g:message code="outbox.receiver.label" default="Receiver" /></label>
				<div class="col-sm-9">
					<g:textField name="receiver" class="form-control" value="${outboxInstance?.receiver}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'receiver', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'sender', 'error')} ">
				<label for="sender" class="col-sm-3 control-label"><g:message code="outbox.sender.label" default="Sender" /></label>
				<div class="col-sm-9">
					<g:textField name="sender" class="form-control" value="${outboxInstance?.sender}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'sender', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'message', 'error')} ">
				<label for="message" class="col-sm-3 control-label"><g:message code="outbox.message.label" default="Message" /></label>
				<div class="col-sm-9">
					<g:textField name="message" class="form-control" value="${outboxInstance?.message}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'message', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'channel', 'error')} ">
				<label for="channel" class="col-sm-3 control-label"><g:message code="outbox.channel.label" default="Channel" /></label>
				<div class="col-sm-9">
					<g:select name="channel" from="${outboxInstance.constraints.channel.inList}" value="${outboxInstance?.channel}" valueMessagePrefix="outbox.channel" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'channel', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'sentDate', 'error')} ">
				<label for="sentDate" class="col-sm-3 control-label"><g:message code="outbox.sentDate.label" default="Sent Date" /></label>
				<div class="col-sm-9">
					<bs:datePicker name="sentDate" precision="day"  value="${outboxInstance?.sentDate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'sentDate', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'cc', 'error')} ">
				<label for="cc" class="col-sm-3 control-label"><g:message code="outbox.cc.label" default="Cc" /></label>
				<div class="col-sm-9">
					<g:textField name="cc" class="form-control" value="${outboxInstance?.cc}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'cc', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'bcc', 'error')} ">
				<label for="bcc" class="col-sm-3 control-label"><g:message code="outbox.bcc.label" default="Bcc" /></label>
				<div class="col-sm-9">
					<g:textField name="bcc" class="form-control" value="${outboxInstance?.bcc}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'bcc', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'triggerDocClass', 'error')} ">
				<label for="triggerDocClass" class="col-sm-3 control-label"><g:message code="outbox.triggerDocClass.label" default="Trigger Doc Class" /></label>
				<div class="col-sm-9">
					<g:textField name="triggerDocClass" class="form-control" value="${outboxInstance?.triggerDocClass}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'triggerDocClass', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'triggerDocId', 'error')} ">
				<label for="triggerDocId" class="col-sm-3 control-label"><g:message code="outbox.triggerDocId.label" default="Trigger Doc Id" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="triggerDocId" value="${outboxInstance.triggerDocId}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'triggerDocId', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: outboxInstance, field: 'retry', 'error')} ">
				<label for="retry" class="col-sm-3 control-label"><g:message code="outbox.retry.label" default="Retry" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="retry" value="${outboxInstance.retry}"/>
					<span class="help-inline">${hasErrors(bean: outboxInstance, field: 'retry', 'error')}</span>
				</div>
			</div>



