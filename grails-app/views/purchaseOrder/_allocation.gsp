<div id="allocation" class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">Allocation PO for Brand </h4>
            </div>

            <div class="modal-body">
            	<table class="table table-striped">
						<tbody>
							<g:each in="${purchaseOrderInstance?.purchaseOrderAllocations}" status="i" var="pppDetail">
							<tr class="prop">
								<td valign="top" class="name">${pppDetail?.brand}</td>
								
								<td valign="top" class="value">
								
									<g:field class="form-control" type="number" name="value1" required="" value="${pppDetail?.value1}"/>
									<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
								</td>
								<td valign="top" class="value">
								
									<g:field class="form-control" type="number" name="value2" required="" value="${pppDetail?.value2}"/>
									<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
								</td>
								
							</tr>
							</g:each>
							
						</tbody>
					</table>
			</div><!-- /.modal-body -->
			<div class="modal-footer">
				
					<button class="btn" data-dismiss="modal" aria-hidden="true"><g:message code="default.button.cancel.label" default="Cancel"/></button>
					<a class="btn btn-primary" id="addLocation" href="#" role="button" >${message(code: 'default.button.allocation.label', default: 'save')}</a>
				
			</div>
        </div><!-- /.modal-content -->    
	</div><!-- /.modal-dialog -->	
</div>

<style  type="text/css" >
 

.modal-content {
    width: 1100px;
    margin-left: -250px;
}

</style>
