<div class="box box-primary">
	<div class="box-body">	
		<table class="table table-bordered table-view margin-top-medium">
			<thead>
				<tr>
					<th><g:message code="purchaseOrderInstance.edit.label" default="Created" /></th>
					<th><g:message code="purchaseOrderInstance.edit.label" default="Last Edited" /></th>
					<th><g:message code="purchaseOrderInstance.edit.label" default="Deleted" /></th>
					
					<th><g:message code="purchaseOrderInstance.edit.label" default="Canceled" /></th>
					<th><g:message code="purchaseOrderInstance.edit.label" default="Reviewer Approved" /></th>
					<th><g:message code="purchaseOrderInstance.edit.label" default="Print" /></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${purchaseOrderInstance.createdBy}</td>
					<td>${purchaseOrderInstance.updatedBy}</td>
					<td></td>
					<td></td>
					<td></td>	
					<td></td>
				</tr>
				<tr>
					<td><g:formatDate date="${purchaseOrderInstance.dateCreated}" /></td>
					<td><g:formatDate date="${purchaseOrderInstance.lastUpdated}" /></td>
					<td></td>
					<td></td>
					<td></td>	
					<td></td>
				</tr>	
			</tbody>		
		</table>	
	</div><!--/.box-body -->
</div><!--/.box box-primary -->	