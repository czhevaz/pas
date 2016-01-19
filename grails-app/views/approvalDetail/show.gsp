
<%@ page import="com.smanggin.ApprovalDetail" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'approvalDetail.label', default: 'ApprovalDetail')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-approvalDetail" class="first">
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
								<td valign="top" class="name"><g:message code="approvalDetail.isSequential.label" default="Is Sequential" /></td>
								
								<td valign="top" class="value"><g:formatBoolean boolean="${approvalDetailInstance?.isSequential}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="approvalDetail.approval.label" default="Approval" /></td>
								
								<td valign="top" class="value"><g:link controller="approval" action="show" id="${approvalDetailInstance?.approval?.id}">${approvalDetailInstance?.approval?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="approvalDetail.brand.label" default="Brand" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: approvalDetailInstance, field: "brand")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="approvalDetail.country.label" default="Country" /></td>
								
								<td valign="top" class="value"><g:link controller="country" action="show" id="${approvalDetailInstance?.country?.id}">${approvalDetailInstance?.country?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="approvalDetail.lob.label" default="Lob" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: approvalDetailInstance, field: "lob")}</td>
								
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
