
<%@ page import="com.smanggin.Outbox" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'outbox.label', default: 'Outbox')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-outbox" class="first">
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
							
								<g:sortableColumn params="${filterParams}" property="subject" title="${message(code: 'outbox.subject.label', default: 'Subject')}" />
            
				                <g:sortableColumn params="${filterParams}" property="receiver" title="${message(code: 'outbox.receiver.label', default: 'Receiver')}" />
				            
				                <g:sortableColumn params="${filterParams}" property="sender" title="${message(code: 'outbox.sender.label', default: 'Sender')}" />
				            
				                <g:sortableColumn params="${filterParams}" property="message" title="${message(code: 'outbox.message.label', default: 'Message')}" />
				            
				                <g:sortableColumn params="${filterParams}" property="channel" title="${message(code: 'outbox.channel.label', default: 'Channel')}" />
				            
				                <g:sortableColumn params="${filterParams}" property="dateCreated" title="${message(code: 'outbox.dateCreated.label', default: 'Date Created')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${outboxInstanceList}" status="i" var="outboxInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${outboxInstance.id}">${fieldValue(bean: outboxInstance, field: "subject")}</g:link></td>
            
				                <td>${fieldValue(bean: outboxInstance, field: "receiver")}</td>
				            
				                <td>${fieldValue(bean: outboxInstance, field: "sender")}</td>
				            
				                <td>${fieldValue(bean: outboxInstance, field: "message")}</td>
				            
				                <td>${fieldValue(bean: outboxInstance, field: "channel")}</td>
				            
				                <td><g:formatDate date="${outboxInstance.dateCreated}" /></td>
				            
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${outboxInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
