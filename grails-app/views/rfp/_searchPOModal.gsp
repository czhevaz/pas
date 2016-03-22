<div id="searchPO" class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">Finding Purchase Order</h4>
            </div>

            <div class="modal-body">
        		<div class="row">
		        	<div class="col-lg-12">
					<div class="box box-primary">
		        
					<div id="table-content" class=" box-body table-responsive">
		          	<table id="poContent" class="table table-bordered  table-striped  table-hover margin-top-medium " style="width:100%;">
						<thead>
							<tr>
							
								<th><g:message code="purchaseOrder.number.label" default="Number" /></th>

								<th style="width:30px;"><g:message code="purchaseOrder.reasonforInvestment.label" default="Purpose " /></th>

								<th><g:message code="purchaseOrder.brand.label" default="Brand" /></th>

								<th><g:message code="purchaseOrder.country.label" default="Country" /></th>

								<th><g:message code="purchaseOrder.supplier.label" default="Supplier" /></th>

								<th><g:message code="purchaseOrder.createdBy.label" default="createdBy" /></th>

								<th><g:message code="purchaseOrder.currency.label" default="currency" /></th>

								<th><g:message code="purchaseOrder.total.label" default="Total" /></th>

								<th><g:message code="purchaseOrder.outstanding.label" default="Outstanding" /></th>

								<th><g:message code="purchaseOrder.purchaseOrderDate.label" default="PO Date" /></th>
														
								
															
							
							</tr>
						</thead>
						<tbody></tbody>
					</table>
					</div><!-- /. -->
					</div><!--/.box box-primary -->	
					</div><!--/.col-lg-12 -->	
		        </div>
			        
            </div><!-- /.modal-body -->
        </div>    
	</div>	
</div>

<style  type="text/css" >
 

.modal-content {
    width: 1100px;
    margin-left: -250px;
}

</style>

<r:script>

	var table = $('#poContent').DataTable();
	$('#poContent tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
        console.log(data);
        var r = confirm(" Are you sure to Add this PO !");
		if (r == true) {
			addToRfp(data);	
		} else {
		    
		}
        
       
    });

	function addToRfp(data){
		$('#searchPO').modal('hide');
		//console.log(data);
	   
		if (rfpDetailsEndEditing()){
        
            $('#dg-rfpDetails').datagrid('appendRow',
            {rfpId: ${rfpInstance.id? rfpInstance.id : 0},createdBy:"${session.user}",purchaseOrderId:data.purchaseOrderId,pppNumber:data.pppNumber,purchaseOrderNumber:data.number,poBalance1:data.poRemain1});
            editIndex = $('#dg-rfpDetails').datagrid('getRows').length-1;
            $('#dg-rfpDetails').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
           // console.log(data)
            getCOA(data);
            $('#dg-rfpDetails').datagrid('getRows')[editIndex]['poBalance1'] = data.poRemain1;
            //$('#dg-rfpDetails').datagrid('getRows')[editIndex]['poBalance2'] = data.poRemain2;
                


        }
       

	}


</r:script>