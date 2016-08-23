
<%@ page import="com.smanggin.Send" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'send.label', default: 'Send')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-send" class="first">
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
								<td valign="top" class="name"><g:message code="send.subject.label" default="Subject" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "subject")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.receiver.label" default="Receiver" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "receiver")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.sender.label" default="Sender" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "sender")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.message.label" default="Message" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "message")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.channel.label" default="Channel" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "channel")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.sentDate.label" default="Sent Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${sendInstance?.sentDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.cc.label" default="Cc" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "cc")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.bcc.label" default="Bcc" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "bcc")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.triggerDocClass.label" default="Trigger Doc Class" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "triggerDocClass")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.triggerDocId.label" default="Trigger Doc Id" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "triggerDocId")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.retry.label" default="Retry" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: sendInstance, field: "retry")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${sendInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="send.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${sendInstance?.lastUpdated}" /></td>
								
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
