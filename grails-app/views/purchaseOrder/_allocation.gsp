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
							<g:each in="${pppDetails}" status="i" var="pppDetail">
							<tr class="prop">
								<td valign="top" class="name">${pppDetail?.brand}</td>
								
								<td valign="top" class="value">
								
									<g:field class="form-control" type="number" name="value1" required="" value=""/>
									<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
								</td>
								<td valign="top" class="value">
								
									<g:field class="form-control" type="number" name="value2" required="" value=""/>
									<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
								</td>
								
							</tr>
							</g:each>
							
						</tbody>
					</table>
			</div><!-- /.modal-body -->
        </div><!-- /.modal-content -->    
	</div><!-- /.modal-dialog -->	
</div>

<style  type="text/css" >
 

.modal-content {
    width: 1100px;
    margin-left: -250px;
}

</style>
