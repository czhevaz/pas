
<%@ page import="com.smanggin.PppPhilippine" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppPhilippine.label', default: 'PppPhilippine')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-pppPhilippine" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->	
                <div class="box-body table-responsive">
					<table class="table table-striped">
						<tbody>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.brand.label" default="Brand" /></td>
								
								<td valign="top" class="value">${pppPhilippineInstance?.brand?.encodeAsHTML()}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.country.label" default="Country" /></td>
								
								<td valign="top" class="value">${pppPhilippineInstance?.country?.encodeAsHTML()}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${pppPhilippineInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.lob.label" default="Lob" /></td>
								
								<td valign="top" class="value">${pppPhilippineInstance?.lob?.encodeAsHTML()}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.lobHead.label" default="Lob Head" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppPhilippineInstance, field: "lobHead")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.number.label" default="Number" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppPhilippineInstance, field: "number")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.pppCost.label" default="Ppp Cost" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppPhilippineInstance, field: "pppCost")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.pppDate.label" default="Ppp Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${pppPhilippineInstance?.pppDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.pppProgram.label" default="Ppp Program" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppPhilippineInstance, field: "pppProgram")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppPhilippine.requestor.label" default="Requestor" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppPhilippineInstance, field: "requestor")}</td>
								
							</tr>
						
						</tbody>
					</table>
				</div><!--/.row -->
				<div class="box-footer clearfix">
						
				</div><!--/.box-footer clearfix -->
			</div><!--/.box-body table-responsive -->

			<g:render template="detail"/> 
		</div><!--/.box box-primary -->
	</div><!--/.row -->
</section>

</body>

</html>
