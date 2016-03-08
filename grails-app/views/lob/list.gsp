
<%@ page import="com.smanggin.Lob" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'lob.label', default: 'Lob')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-lob" class="first">
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
							
								<g:sortableColumn property="code" title="${message(code: 'lob.code.label', default: 'Id')}" />

								<g:sortableColumn property="name" title="${message(code: 'lob.name.label', default: 'Name')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'lob.name.label', default: 'codeCoa')}" />

								<g:sortableColumn property="active" title="${message(code: 'lob.active.label', default: 'Active')}" />
							
								<th><g:message code="lob.country.label" default="Country" /></th>
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${lobInstanceList}" status="i" var="lobInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td>${fieldValue(bean: lobInstance, field: "code")}</td>

								<td><g:link action="show" id="${lobInstance.id}">${fieldValue(bean: lobInstance, field: "name")}</g:link></td>
							
								<td>${fieldValue(bean: lobInstance, field: "codeCoa")}</td>

								<td>${fieldValue(bean: lobInstance, field: "active")}</td>
							
								<td>${fieldValue(bean: lobInstance, field: "country")}</td>

							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${lobInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
