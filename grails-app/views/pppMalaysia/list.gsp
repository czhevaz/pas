
<%@ page import="com.smanggin.PppMalaysia" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppMalaysia.label', default: 'PppMalaysia')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-pppMalaysia" class="first">
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
							
								<g:sortableColumn property="brand" title="${message(code: 'pppMalaysia.brand.label', default: 'Brand')}" />
							
								<th><g:message code="pppMalaysia.country.label" default="Country" /></th>
							
								<g:sortableColumn property="dateCreated" title="${message(code: 'pppMalaysia.dateCreated.label', default: 'Date Created')}" />
							
								<g:sortableColumn property="lob" title="${message(code: 'pppMalaysia.lob.label', default: 'Lob')}" />
							
								<g:sortableColumn property="lobHead" title="${message(code: 'pppMalaysia.lobHead.label', default: 'Lob Head')}" />
							
								<g:sortableColumn property="number" title="${message(code: 'pppMalaysia.number.label', default: 'Number')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${pppMalaysiaInstanceList}" status="i" var="pppMalaysiaInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${pppMalaysiaInstance.id}">${fieldValue(bean: pppMalaysiaInstance, field: "brand")}</g:link></td>
							
								<td>${fieldValue(bean: pppMalaysiaInstance, field: "country")}</td>
							
								<td><g:formatDate date="${pppMalaysiaInstance.dateCreated}" /></td>
							
								<td>${fieldValue(bean: pppMalaysiaInstance, field: "lob")}</td>
							
								<td>${fieldValue(bean: pppMalaysiaInstance, field: "lobHead")}</td>
							
								<td>${fieldValue(bean: pppMalaysiaInstance, field: "number")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${pppMalaysiaInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
