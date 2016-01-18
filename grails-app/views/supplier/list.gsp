
<%@ page import="com.smanggin.Supplier" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-supplier" class="first">
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
							
								<g:sortableColumn property="code" title="${message(code: 'supplier.code.label', default: 'Code')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'supplier.name.label', default: 'Name')}" />
							
								<th><g:message code="supplier.countryOwnerID.label" default="Country Owner ID" /></th>

								<g:sortableColumn property="address" title="${message(code: 'supplier.address.label', default: 'Address')}" />
							
							
								<g:sortableColumn property="email" title="${message(code: 'supplier.email.label', default: 'Email')}" />
							
								
							
								
							</tr>
						</thead>
						<tbody>
						<g:each in="${supplierInstanceList}" status="i" var="supplierInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								

								<td><g:link action="show" id="${supplierInstance.id}">${fieldValue(bean: supplierInstance, field: "code")}</g:link></td>

								<td>${fieldValue(bean: supplierInstance, field: "name")}</td>
								
								<td>${fieldValue(bean: supplierInstance, field: "countryOwnerID")}</td>

								<td>${fieldValue(bean: supplierInstance, field: "address")}</td>

								<td>${fieldValue(bean: supplierInstance, field: "email")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${supplierInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
