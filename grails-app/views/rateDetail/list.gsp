
<%@ page import="com.smanggin.RateDetail" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rateDetail.label', default: 'RateDetail')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-rateDetail" class="first">
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
							
								<th><g:message code="rateDetail.currency1.label" default="Currency1" /></th>
							
								<th><g:message code="rateDetail.currency2.label" default="Currency2" /></th>
							
								<th><g:message code="rateDetail.rate.label" default="Rate" /></th>
							
								<g:sortableColumn property="value" title="${message(code: 'rateDetail.value.label', default: 'Value')}" />
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${rateDetailInstanceList}" status="i" var="rateDetailInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${rateDetailInstance.id}">${fieldValue(bean: rateDetailInstance, field: "currency1")}</g:link></td>
							
								<td>${fieldValue(bean: rateDetailInstance, field: "currency2")}</td>
							
								<td>${fieldValue(bean: rateDetailInstance, field: "rate")}</td>
							
								<td>${fieldValue(bean: rateDetailInstance, field: "value")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${rateDetailInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
