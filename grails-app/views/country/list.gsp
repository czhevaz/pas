
<%@ page import="com.smanggin.Country" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-country" class="first">
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
							
								<g:sortableColumn property="code" title="${message(code: 'country.code.label', default: 'Code')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'country.name.label', default: 'Name')}" />
							
								<g:sortableColumn property="active" title="${message(code: 'country.active.label', default: 'Active')}" />
							
								
							</tr>
						</thead>
						<tbody>
						<g:each in="${countryInstanceList}" status="i" var="countryInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td>${fieldValue(bean: countryInstance, field: "code")}</td>

								<td><g:link action="show" params="['name':countryInstance.name]">${fieldValue(bean: countryInstance, field: "name")}</g:link></td>
							
								<td>${countryInstance.active}</td>
							
								
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${countryInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
