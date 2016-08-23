
<%@ page import="com.smanggin.Send" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'send.label', default: 'Send')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-send" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->

				<div class="box-body table-responsive">	
					<table class="table table-bordered margin-top-medium">
						<thead>
							<tr>
							
								<g:sortableColumn property="subject" title="${message(code: 'send.subject.label', default: 'Subject')}" />
							
								<g:sortableColumn property="receiver" title="${message(code: 'send.receiver.label', default: 'Receiver')}" />
							
								<g:sortableColumn property="sender" title="${message(code: 'send.sender.label', default: 'Sender')}" />
							
								<g:sortableColumn property="message" title="${message(code: 'send.message.label', default: 'Message')}" />
							
								<g:sortableColumn property="channel" title="${message(code: 'send.channel.label', default: 'Channel')}" />
							
								<g:sortableColumn property="sentDate" title="${message(code: 'send.sentDate.label', default: 'Sent Date')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${sendInstanceList}" status="i" var="sendInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${sendInstance.id}">${fieldValue(bean: sendInstance, field: "subject")}</g:link></td>
							
								<td>${fieldValue(bean: sendInstance, field: "receiver")}</td>
							
								<td>${fieldValue(bean: sendInstance, field: "sender")}</td>
							
								<td>${fieldValue(bean: sendInstance, field: "message")}</td>
							
								<td>${fieldValue(bean: sendInstance, field: "channel")}</td>
							
								<td><g:formatDate date="${sendInstance.sentDate}" /></td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${sendInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
