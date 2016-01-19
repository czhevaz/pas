
<%@ page import="com.smanggin.ApprovalDetail" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'approvalDetail.label', default: 'ApprovalDetail')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-approvalDetail" class="first">
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
							
								<g:sortableColumn property="isSequential" title="${message(code: 'approvalDetail.isSequential.label', default: 'Is Sequential')}" />
							
								<th><g:message code="approvalDetail.approval.label" default="Approval" /></th>
							
								<g:sortableColumn property="brand" title="${message(code: 'approvalDetail.brand.label', default: 'Brand')}" />
							
								<th><g:message code="approvalDetail.country.label" default="Country" /></th>
							
								<g:sortableColumn property="lob" title="${message(code: 'approvalDetail.lob.label', default: 'Lob')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${approvalDetailInstanceList}" status="i" var="approvalDetailInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${approvalDetailInstance.id}">${fieldValue(bean: approvalDetailInstance, field: "isSequential")}</g:link></td>
							
								<td>${fieldValue(bean: approvalDetailInstance, field: "approval")}</td>
							
								<td>${fieldValue(bean: approvalDetailInstance, field: "brand")}</td>
							
								<td>${fieldValue(bean: approvalDetailInstance, field: "country")}</td>
							
								<td>${fieldValue(bean: approvalDetailInstance, field: "lob")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${approvalDetailInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
