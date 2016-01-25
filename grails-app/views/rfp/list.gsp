
<%@ page import="com.smanggin.Rfp" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rfp.label', default: 'Rfp')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-rfp" class="first">
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
							
								<g:sortableColumn property="dateVoid" title="${message(code: 'rfp.dateVoid.label', default: 'Date Void')}" />
							
								<g:sortableColumn property="voidBy" title="${message(code: 'rfp.voidBy.label', default: 'Void By')}" />
							
								<g:sortableColumn property="updatedBy" title="${message(code: 'rfp.updatedBy.label', default: 'Updated By')}" />
							
								<th><g:message code="rfp.country.label" default="Country" /></th>
							
								<g:sortableColumn property="createdBy" title="${message(code: 'rfp.createdBy.label', default: 'Created By')}" />
							
								<th><g:message code="rfp.currency1.label" default="Currency1" /></th>
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${rfpInstanceList}" status="i" var="rfpInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${rfpInstance.id}">${fieldValue(bean: rfpInstance, field: "dateVoid")}</g:link></td>
							
								<td>${fieldValue(bean: rfpInstance, field: "voidBy")}</td>
							
								<td>${fieldValue(bean: rfpInstance, field: "updatedBy")}</td>
							
								<td>${fieldValue(bean: rfpInstance, field: "country")}</td>
							
								<td>${fieldValue(bean: rfpInstance, field: "createdBy")}</td>
							
								<td>${fieldValue(bean: rfpInstance, field: "currency1")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${rfpInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
