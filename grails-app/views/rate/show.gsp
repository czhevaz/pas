
<%@ page import="com.smanggin.Rate" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'rate.label', default: 'Rate')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	<g:set var="canEdit" value="true" scope="request" />
</head>

<body>

<section id="show-rate" class="first">
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
								<td valign="top" class="name"><g:message code="rate.starDate.label" default="Star Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${rateInstance?.starDate}" format="yyyy-MM-dd"/></td>
								
							</tr>
						

							<tr class="prop">
								<td valign="top" class="name"><g:message code="rate.endDate.label" default="End Date" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${rateInstance?.endDate}" format="yyyy-MM-dd"/></td>
								
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
