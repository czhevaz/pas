
<%@ page import="com.smanggin.RateDetail" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rateDetail.label', default: 'RateDetail')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-rateDetail" class="first">
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
								<td valign="top" class="name"><g:message code="rateDetail.currency1.label" default="Currency1" /></td>
								
								<td valign="top" class="value"><g:link controller="currency" action="show" id="${rateDetailInstance?.currency1?.id}">${rateDetailInstance?.currency1?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rateDetail.currency2.label" default="Currency2" /></td>
								
								<td valign="top" class="value"><g:link controller="currency" action="show" id="${rateDetailInstance?.currency2?.id}">${rateDetailInstance?.currency2?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rateDetail.rate.label" default="Rate" /></td>
								
								<td valign="top" class="value"><g:link controller="rate" action="show" id="${rateDetailInstance?.rate?.id}">${rateDetailInstance?.rate?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="rateDetail.value.label" default="Value" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: rateDetailInstance, field: "value")}</td>
								
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
