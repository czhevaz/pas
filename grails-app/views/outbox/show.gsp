
<%@ page import="com.smanggin.Outbox" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'outbox.label', default: 'Outbox')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-outbox" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->	
                <div class="box-body table-responsive">
					<table class="table table-striped">
						<tbody>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.subject.label" default="Subject" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "subject")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.receiver.label" default="Receiver" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "receiver")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.sender.label" default="Sender" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "sender")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.message.label" default="Message" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "message")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.channel.label" default="Channel" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "channel")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.sentDate.label" default="Sent Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${outboxInstance?.sentDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.cc.label" default="Cc" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "cc")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.bcc.label" default="Bcc" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "bcc")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.triggerDocClass.label" default="Trigger Doc Class" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "triggerDocClass")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.triggerDocId.label" default="Trigger Doc Id" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "triggerDocId")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.retry.label" default="Retry" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: outboxInstance, field: "retry")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${outboxInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="outbox.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${outboxInstance?.lastUpdated}" /></td>
								
							</tr>
						
						</tbody>
					</table>
				</div><!--/.row -->
				<div class="box-footer clearfix">
						
				</div><!--/.box-footer clearfix -->
			</div><!--/.box-body table-responsive -->

			<g:render template="detail"/> 
		</div><!--/.box box-primary -->
	</div><!--/.row -->
</section>

</body>

</html>
