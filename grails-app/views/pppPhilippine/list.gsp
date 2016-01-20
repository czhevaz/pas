
<%@ page import="com.smanggin.PppPhilippine" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppPhilippine.label', default: 'Ppp')}" />
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
								
								<th> No. </th>

								<th><g:message code="ppp.number.label" default="Number" /></th>
								
								<th><g:message code="ppp.pppDescription.label" default="PPP Description" /></th>

								<th><g:message code="ppp.country.label" default="Country" /></th>

								<th><g:message code="ppp.lob.label" default="Lob" /></th>

								<th><g:message code="ppp.brand.label" default="Brand" /></th>

								<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

								<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

								<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>
								
								<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'ppp Date')}" />

								<th><g:message code="ppp.writeoff.label" default="write Off" /></th>		
								
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${pppPhilippineInstanceList}" status="i" var="pppInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
								
								<td> ${i+1} </td>

								<td><g:link action="show" id="${pppInstance.id}">${fieldValue(bean: pppInstance, field: "number")}</g:link></td>

								<td>${fieldValue(bean: pppInstance, field: "pppProgram")}</td>	

								<td>${fieldValue(bean: pppInstance, field: "country")}</td>

								<td>${fieldValue(bean: pppInstance, field: "lob")}</td>

								<td>${fieldValue(bean: pppInstance, field: "brand")}</td>

								<td>${fieldValue(bean: pppInstance, field: "requestor")}</td>

								<td>${fieldValue(bean: pppInstance, field: "pppCost")}</td>
							
								<td>${fieldValue(bean: pppInstance, field: "remainCreditLimit")}</td>
							
								<td><g:formatDate date="${pppInstance.pppDate}" /></td>
								
								<td>
								<g:if test="${pppInstance.state != 'Write Off'}">
									<a href="${createLink(action:'writeOff',id:pppInstance?.id)}" class="btn btn-sm btn-danger col-xs-12"><span class="glyphicon glyphicon-pencil pull-left"></span> Write Off</a>
								</g:if>	
								</td>
								
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
