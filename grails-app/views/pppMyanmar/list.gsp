
<%@ page import="com.smanggin.PppMyanmar" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppMyanmar.label', default: 'PppMyanmar')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-pppMyanmar" class="first">
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
							
								<g:sortableColumn property="brand" title="${message(code: 'pppMyanmar.brand.label', default: 'Brand')}" />
							
								<th><g:message code="pppMyanmar.country.label" default="Country" /></th>
							
								<g:sortableColumn property="dateCreated" title="${message(code: 'pppMyanmar.dateCreated.label', default: 'Date Created')}" />
							
								<g:sortableColumn property="lob" title="${message(code: 'pppMyanmar.lob.label', default: 'Lob')}" />
							
								<g:sortableColumn property="lobHead" title="${message(code: 'pppMyanmar.lobHead.label', default: 'Lob Head')}" />
							
								<g:sortableColumn property="number" title="${message(code: 'pppMyanmar.number.label', default: 'Number')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${pppMyanmarInstanceList}" status="i" var="pppMyanmarInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${pppMyanmarInstance.id}">${fieldValue(bean: pppMyanmarInstance, field: "brand")}</g:link></td>
							
								<td>${fieldValue(bean: pppMyanmarInstance, field: "country")}</td>
							
								<td><g:formatDate date="${pppMyanmarInstance.dateCreated}" /></td>
							
								<td>${fieldValue(bean: pppMyanmarInstance, field: "lob")}</td>
							
								<td>${fieldValue(bean: pppMyanmarInstance, field: "lobHead")}</td>
							
								<td>${fieldValue(bean: pppMyanmarInstance, field: "number")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${pppMyanmarInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
