<%@ page import="com.smanggin.GlobalService" %>
<%
    def globalService = grailsApplication.classLoader.loadClass('com.smanggin.GlobalService').newInstance()
%>
<div class="box-header with-border">
	<div class="row">					
      <div class="col-sm-8">
      		<h3 class="box-title"><g:message code="default.show.label" args="[entityName]" /></h3>
      </div>
      <div class="col-sm-4">
      	<table class="table table-bordered no-margin">
      		<thead>
      			<tr>
      				<td colspan="2"><b>Document State</b> : ${fieldValue(bean: purchaseOrderInstance, field: "state")}</td>	
      			</tr>	
      			<tr>
      				<td><b>Approver</b> : </td>
      				<td><b>Approval State</b></td>
      			</tr>
      			
      		</thead>
      		<tbody>
      			<g:each in="${purchaseOrderInstance.purchaseOrderApprovers}" status="i" var="approver">
          			<tr>
          				<td>${approver.noSeq} . ${approver.approver}</td>
          				<td>${globalService.approvalStatus(approver.status)}</td>	
          			</tr>
      			</g:each>	
      		</tbody>
      	</table>
      </div>
     </div> 
</div><!--/.box-header with-border -->	