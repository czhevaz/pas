
<%@ page import="com.smanggin.Rate" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rate.label', default: 'Rate')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	
</head>

<body>
	
<section id="list-rate" class="first">
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
							
								<g:sortableColumn property="starDate" title="${message(code: 'rate.starDate.label', default: 'Star Date')}" />
	
								<g:sortableColumn property="endDate" title="${message(code: 'rate.endDate.label', default: 'End Date')}" />
							
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${rateInstanceList}" status="i" var="rateInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" id="${rateInstance.id}"><g:formatDate date="${rateInstance.starDate}" format="dd MMMM yyyy" /></g:link></td>

								<td><g:formatDate date="${rateInstance.endDate}" format="dd MMMM yyyy" /></td>
							
								
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${rateInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
