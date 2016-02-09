
<%@ page import="com.smanggin.PppSingapore" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppSingapore.label', default: 'PppSingapore')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-pppSingapore" class="first">
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
							
								<g:sortableColumn property="brand" title="${message(code: 'pppSingapore.brand.label', default: 'Brand')}" />
							
								<th><g:message code="pppSingapore.country.label" default="Country" /></th>
							
								<g:sortableColumn property="dateCreated" title="${message(code: 'pppSingapore.dateCreated.label', default: 'Date Created')}" />
							
								<g:sortableColumn property="lob" title="${message(code: 'pppSingapore.lob.label', default: 'Lob')}" />
							
								<g:sortableColumn property="lobHead" title="${message(code: 'pppSingapore.lobHead.label', default: 'Lob Head')}" />
							
								<g:sortableColumn property="number" title="${message(code: 'pppSingapore.number.label', default: 'Number')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${pppSingaporeInstanceList}" status="i" var="pppSingaporeInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${pppSingaporeInstance.id}">${fieldValue(bean: pppSingaporeInstance, field: "brand")}</g:link></td>
							
								<td>${fieldValue(bean: pppSingaporeInstance, field: "country")}</td>
							
								<td><g:formatDate date="${pppSingaporeInstance.dateCreated}" /></td>
							
								<td>${fieldValue(bean: pppSingaporeInstance, field: "lob")}</td>
							
								<td>${fieldValue(bean: pppSingaporeInstance, field: "lobHead")}</td>
							
								<td>${fieldValue(bean: pppSingaporeInstance, field: "number")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${pppSingaporeInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
