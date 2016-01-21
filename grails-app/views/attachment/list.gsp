
<%@ page import="com.smanggin.Attachment" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachment.label', default: 'Attachment')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-attachment" class="first">
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
							
								<g:sortableColumn property="createdBy" title="${message(code: 'attachment.createdBy.label', default: 'Created By')}" />
							
								<g:sortableColumn property="dateCreated" title="${message(code: 'attachment.dateCreated.label', default: 'Date Created')}" />
							
								<g:sortableColumn property="fileName" title="${message(code: 'attachment.fileName.label', default: 'File Name')}" />
							
								<g:sortableColumn property="fileType" title="${message(code: 'attachment.fileType.label', default: 'File Type')}" />
							
								<g:sortableColumn property="lastUpdated" title="${message(code: 'attachment.lastUpdated.label', default: 'Last Updated')}" />
							
								<g:sortableColumn property="originalName" title="${message(code: 'attachment.originalName.label', default: 'Original Name')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${attachmentInstanceList}" status="i" var="attachmentInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${attachmentInstance.id}">${fieldValue(bean: attachmentInstance, field: "createdBy")}</g:link></td>
							
								<td><g:formatDate date="${attachmentInstance.dateCreated}" /></td>
							
								<td>${fieldValue(bean: attachmentInstance, field: "fileName")}</td>
							
								<td>${fieldValue(bean: attachmentInstance, field: "fileType")}</td>
							
								<td><g:formatDate date="${attachmentInstance.lastUpdated}" /></td>
							
								<td>${fieldValue(bean: attachmentInstance, field: "originalName")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${attachmentInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
