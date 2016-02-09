
<%@ page import="com.smanggin.PppSouthAfrica" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pppSouthAfrica.label', default: 'PppSouthAfrica')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-pppSouthAfrica" class="first">
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
								<td valign="top" class="name"><g:message code="pppSouthAfrica.brand.label" default="Brand" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "brand")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.country.label" default="Country" /></td>
								
								<td valign="top" class="value"><g:link controller="country" action="show" id="${pppSouthAfricaInstance?.country?.id}">${pppSouthAfricaInstance?.country?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${pppSouthAfricaInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.lob.label" default="Lob" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "lob")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.lobHead.label" default="Lob Head" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "lobHead")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.number.label" default="Number" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "number")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.pppCost.label" default="Ppp Cost" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "pppCost")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.pppDate.label" default="Ppp Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${pppSouthAfricaInstance?.pppDate}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.pppDetails.label" default="Ppp Details" /></td>
								
								<td valign="top" style="text-align: left;" class="value">
									<ul>
									<g:each in="${pppSouthAfricaInstance.pppDetails}" var="p">
										<li><g:link controller="pppDetail" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
									</g:each>
									</ul>
								</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.pppProgram.label" default="Ppp Program" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "pppProgram")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.requestor.label" default="Requestor" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "requestor")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pppSouthAfrica.state.label" default="State" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: pppSouthAfricaInstance, field: "state")}</td>
								
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
