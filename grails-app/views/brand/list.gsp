
<%@ page import="com.smanggin.Brand" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-brand" class="first">
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
								
								<g:sortableColumn property="code" title="${message(code: 'brand.code.label', default: 'Code')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'brand.name.label', default: 'Name')}" />
							
								<th><g:message code="brand.country.label" default="Country" /></th>
							
								<g:sortableColumn property="lob" title="${message(code: 'brand.lob.label', default: 'Lob')}" />

								<g:sortableColumn property="active" title="${message(code: 'brand.active.label', default: 'Active')}" />
								
							</tr>
						</thead>
						<tbody>
						<g:each in="${brandInstanceList}" status="i" var="brandInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
								
								<td>${fieldValue(bean: brandInstance, field: "code")}</td>

								<td><g:link action="show" id="${brandInstance.id}">${fieldValue(bean: brandInstance, field: "name")}</g:link></td>
							
								<td>${brandInstance.country}</td>
							
								<td>${fieldValue(bean: brandInstance, field: "lob")}</td>

								<td>${fieldValue(bean: brandInstance, field: "active")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${brandInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
