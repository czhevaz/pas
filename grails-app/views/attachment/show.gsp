
<%@ page import="com.smanggin.Attachment" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachment.label', default: 'Attachment')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-attachment" class="first">
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
								<td valign="top" class="name"><g:message code="attachment.createdBy.label" default="Created By" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "createdBy")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${attachmentInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.fileName.label" default="File Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "fileName")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.fileType.label" default="File Type" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "fileType")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${attachmentInstance?.lastUpdated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.originalName.label" default="Original Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "originalName")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.purchaseOrder.label" default="Purchase Order" /></td>
								
								<td valign="top" class="value"><g:link controller="purchaseOrder" action="show" id="${attachmentInstance?.purchaseOrder?.id}">${attachmentInstance?.purchaseOrder?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="attachment.updatedBy.label" default="Updated By" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "updatedBy")}</td>
								
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
