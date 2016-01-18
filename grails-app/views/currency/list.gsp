
<%@ page import="com.smanggin.Currency" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'currency.label', default: 'Currency')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-currency" class="first">
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
							
								
								<g:sortableColumn property="code" title="${message(code: 'currency.code.label', default: 'Code')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'currency.name.label', default: 'Name')}" />
							
								<g:sortableColumn property="country" title="${message(code: 'currency.country.label', default: 'Country')}" />

								<g:sortableColumn property="baseCurrency" title="${message(code: 'currency.baseCurrency.label', default: 'Base Currency')}" />
							
								<g:sortableColumn property="active" title="${message(code: 'currency.active.label', default: 'Active')}" />
							
							
								
							</tr>
						</thead>
						<tbody>
						<g:each in="${currencyInstanceList}" status="i" var="currencyInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link action="show" params="['code':currencyInstance.code]">${fieldValue(bean: currencyInstance, field: "code")}</g:link></td>
							
								<td>${fieldValue(bean: currencyInstance, field: "name")}</td>

								<td>${fieldValue(bean: currencyInstance, field: "country")}</td>

								<td>${currencyInstance.baseCurrency?'Yes':'No'}</td>
							
								<td>${fieldValue(bean: currencyInstance, field: "active")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div><!--/.box-body table-responsive -->

				<div class="box-footer clearfix">
					<bs:paginate total="${currencyInstanceTotal}" />
				</div><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			

</section>

</body>

</html>
