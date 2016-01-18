<%@ page import="com.smanggin.PurchaseOrder" %>
<div class="box box-primary">
				<div class="box-body">	
					<table class="table table-bordered margin-top-medium">
						<thead>
							<tr>
								<th><g:message code="purchaseOrderInstance.pppComment.label" default="Log feedback/Comment" /></th>
							
							</tr>
						</thead>
						<tbody>
							<g:each in="${purchaseOrderInstance?.purchaseOrderComments}" status="i" var="logChat">
							<tr>
								<td> ( <g:formatDate date="${logChat.dateCreated}"/> ) ${logChat.createdBy} : ${logChat.description} </td>
							</tr>
							</g:each>
						</tbody>		
					</table>	
				</div><!--/.box-body -->
			</div><!--/.box box-primary -->	