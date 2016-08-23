
<%@ page import="com.smanggin.PppNigeria" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppNigeria.label', default: 'PppNigeria')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-pppNigeria" class="first">
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
								<td valign="top" class="name"><g:message code="pppNigeria.brand.label" default="Brand" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "brand")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.country.label" default="Country" /></td>
								
								<td valign="top" class="value"><g:link controller="country" action="show" id="${pppNigeriaInstance?.country?.id}">${pppNigeriaInstance?.country?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${pppNigeriaInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.lob.label" default="Lob" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "lob")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.lobHead.label" default="Lob Head" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "lobHead")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.number.label" default="Number" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "number")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.pppCost.label" default="Ppp Cost" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "pppCost")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.pppDate.label" default="Ppp Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${pppNigeriaInstance?.pppDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.pppDetails.label" default="Ppp Details" /></td>
								
								<td valign="top" style="text-align: left;" class="value">
									<ul>
									<g:each in="${pppNigeriaInstance.pppDetails}" var="p">
										<li><g:link controller="pppDetail" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
									</g:each>
									</ul>
								</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.pppProgram.label" default="Ppp Program" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "pppProgram")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.requestor.label" default="Requestor" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "requestor")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppNigeria.state.label" default="State" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppNigeriaInstance, field: "state")}</td>
								
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
