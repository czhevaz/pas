
<%@ page import="com.smanggin.Rfp" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rfp.label', default: 'Rfp')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
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
								<th><g:message code="rfp.number.label" default="Number" /></th>
								
								<th><g:message code="rfp.rfpDate.label" default="RfpDate" /></th>

								<th><g:message code="rfp.transactionGroup.label" default="TransactionGroup" /></th>

								<th><g:message code="rfp.supplier.label" default="Supplier" /></th>
							
								<th><g:message code="rfp.paymentOption.label" default="paymentOption" /></th>

								<th><g:message code="rfp.createdBy.label" default="createdBy" /></th>
									
								
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${rfpInstanceList}" status="i" var="rfpInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${rfpInstance.id}">${fieldValue(bean: rfpInstance, field: "number")}</g:link></td>
							
								<td><g:formatDate date="${rfpInstance.rfpDate}" format="yyyy-dd-MM"/></td>
							
							
								<td>${fieldValue(bean: rfpInstance, field: "transactionGroup")}</td>
							
								<td>${fieldValue(bean: rfpInstance, field: "supplier")}</td>
							
								<td>${fieldValue(bean: rfpInstance, field: "paymentOption")}</td>

								<td>${fieldValue(bean: rfpInstance, field: "createdBy")}</td>
							
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
