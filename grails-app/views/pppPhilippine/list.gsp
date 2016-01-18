
<%@ page import="com.smanggin.PppPhilippine" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppPhilippine.label', default: 'PppPhilippine')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-pppPhilippine" class="first">
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
							
								<th><g:message code="pppPhilippine.brand.label" default="Brand" /></th>
							
								<th><g:message code="pppPhilippine.country.label" default="Country" /></th>
							
								<g:sortableColumn property="dateCreated" title="${message(code: 'pppPhilippine.dateCreated.label', default: 'Date Created')}" />
							
								<th><g:message code="pppPhilippine.lob.label" default="Lob" /></th>
							
								<g:sortableColumn property="lobHead" title="${message(code: 'pppPhilippine.lobHead.label', default: 'Lob Head')}" />
							
								<g:sortableColumn property="number" title="${message(code: 'pppPhilippine.number.label', default: 'Number')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${pppPhilippineInstanceList}" status="i" var="pppPhilippineInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${pppPhilippineInstance.id}">${fieldValue(bean: pppPhilippineInstance, field: "brand")}</g:link></td>
							
								<td>${fieldValue(bean: pppPhilippineInstance, field: "country")}</td>
							
								<td><g:formatDate date="${pppPhilippineInstance.dateCreated}" /></td>
							
								<td>${fieldValue(bean: pppPhilippineInstance, field: "lob")}</td>
							
								<td>${fieldValue(bean: pppPhilippineInstance, field: "lobHead")}</td>
							
								<td>${fieldValue(bean: pppPhilippineInstance, field: "number")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${pppPhilippineInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
