
<%@ page import="com.smanggin.ChartOfAccount" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'chartOfAccount.label', default: 'ChartOfAccount')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-chartOfAccount" class="first">
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
															
								
								<g:sortableColumn property="code" title="${message(code: 'chartOfAccount.code.label', default: 'Code')}" />
							
								<g:sortableColumn property="description" title="${message(code: 'chartOfAccount.description.label', default: 'Description')}" />

								<g:sortableColumn property="coaIdServer" title="${message(code: 'chartOfAccount.coaIdServer.label', default: 'Coa Id Server')}" />

								<g:sortableColumn property="active" title="${message(code: 'chartOfAccount.active.label', default: 'Active')}" />
							
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${chartOfAccountInstanceList}" status="i" var="chartOfAccountInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${chartOfAccountInstance.id}">${fieldValue(bean: chartOfAccountInstance, field: "code")}</g:link></td>
							
								<td>${fieldValue(bean: chartOfAccountInstance, field: "description")}</td>

								<td>${fieldValue(bean: chartOfAccountInstance, field: "coaIdServer")}</td>
							
							
								<td>${fieldValue(bean: chartOfAccountInstance, field: "active")}</td>		
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${chartOfAccountInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
