
<%@ page import="com.smanggin.PurchaseOrder" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'Purchase Order')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
</head>

<body>
	
<section id="list-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->

				<div class="box-body table-responsive">	
					<table  class="table table-bordered margin-top-medium " id ="list-table">
						<thead>
							<tr>

								<th> No. </th>

								<g:sortableColumn property="number" title="${message(code: 'purchaseOrder.number.label', default: 'Number')}" />
								
								
								<g:sortableColumn property="createdBy" title="${message(code: 'purchaseOrder.createdBy.label', default: 'Created By')}" />

								<g:sortableColumn property="purchaseOrderDate" title="${message(code: 'purchaseOrder.purchaseOrderDate.label', default: 'Purchase Order Date')}" />
							
								<th><g:message code="purchaseOrder.TransactionGroup.label" default="TransactionGroup" /></th>	

								<th><g:message code="ppp.state.label" default="Status" /></th>

								<th><g:message code="purchaseOrder.ppp.label" default="PPP Number" /></th>

								<th><g:message code="ppp.amount.label" default="PPP Limit (USD)" /></th>

								<th><g:message code="ppp.remain.label" default="PPP Limit Remaining (USD)" /></th>

								<th><g:message code="ppp.country.label" default="Country" /></th>

								<th><g:message code="ppp.lob.label" default="Lob" /></th>

								<th><g:message code="ppp.brand.label" default="Brand" /></th>

								<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

								<th><g:message code="purchaseOrder.writeoff.label" default="write Off" /></th>	
								
									
							</tr>
						</thead>
						<tfoot>
				            <tr>
				            	<th id="no"></th>

				                <g:sortableColumn property="number" title="${message(code: 'purchaseOrder.number.label', default: 'Number')}" />
							
							
									
								<g:sortableColumn property="createdBy" title="${message(code: 'purchaseOrder.createdBy.label', default: 'Created By')}" />

								<g:sortableColumn property="purchaseOrderDate" title="${message(code: 'purchaseOrder.purchaseOrderDate.label', default: 'Purchase Order Date')}" />
							
								<th><g:message code="purchaseOrder.TransactionGroup.label" default="TransactionGroup" /></th>	

								<th><g:message code="ppp.state.label" default="Status" /></th>

								<th><g:message code="purchaseOrder.ppp.label" default="PPP Number" /></th>

								<th><g:message code="ppp.amount.label" default="PPP Limit (USD)" /> (USD)</th>

								<th><g:message code="ppp.remain.label" default="PPP Limit Remaining (USD)" /> (USD) </th>

								<th><g:message code="ppp.country.label" default="Country" /></th>

								<th><g:message code="ppp.lob.label" default="Lob" /></th>

								<th><g:message code="ppp.brand.label" default="Brand" /></th>

								<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

								<th><g:message code="purchaseOrder.writeoff.label" default="write Off" /></th>	
								
				            </tr>
				        </tfoot>
						<tbody>
						<g:each in="${purchaseOrderInstanceList}" status="i" var="purchaseOrderInstance">
							<tr >
								
								<td> ${i+1} </td>

								<td><g:link action="show" id="${purchaseOrderInstance.id}">${fieldValue(bean: purchaseOrderInstance, field: "number")}</g:link></td>

								<td>${purchaseOrderInstance.createdBy}</td>	
									
								<td><g:formatDate date="${purchaseOrderInstance.purchaseOrderDate}" format="yyyy-MM-dd"/></td>
								<td>${fieldValue(bean: purchaseOrderInstance, field: "transactionGroup")}</td>	

								<td>${fieldValue(bean: purchaseOrderInstance, field: "state")}</td>	

								<td>${fieldValue(bean: purchaseOrderInstance, field: "pppNumber")}</td>	
								
								<td>${fieldValue(bean: purchaseOrderInstance, field: "pppCost")}</td>	

								<td>${fieldValue(bean: purchaseOrderInstance, field: "pppRemainBrand")}</td>	

								<td>${purchaseOrderInstance.country}</td>	
								<td>${purchaseOrderInstance.lob}</td>	
								<td>${purchaseOrderInstance.brand}</td>	
								<td>${purchaseOrderInstance.requestor}</td>	

								<td>
									<g:if test="${purchaseOrderInstance.PORemain1 > 0 && purchaseOrderInstance?.state == 'Approved'}">
										<a href="${createLink(action:'show',id:purchaseOrderInstance?.id)}" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-pencil pull-left"></i></a>
									</g:if>	
								</td>	
										
							</tr>
						</g:each>
						</tbody>

					</table>
				</div><!--/.box-body table-responsive -->

			<!--	<div class="box-footer clearfix">
					<bs:paginate total="${purchaseOrderInstanceTotal}" />
				</div>--><!--/.box-footer clearfix -->
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->			
<r:script>

	/* dataTablesList */
	$('#list-table tfoot th').each( function () {
        var title = $('#list-table thead th').eq( $(this).index() ).text();
        console.log($(this).index())
        if($(this).index() !=0 ){
        	$(this).html( '<input type="text" placeholder="Search '+title+'" />' );	
        }
        
    });
 
    // DataTable
    var table2 = $('#list-table').DataTable({
    	"paging": true,
	     "lengthChange": false,
	     "searching": true,
	     "ordering": true,
	     "info": true,
	     "autoWidth": true,
	     "scrollX": true,
	     "createdRow": function( row, data, dataIndex ) {

	     	if ( data[5] == "Draft" ) {
		      $(row).css({"background-color":"#D7CCC8"});
		    }else{
		      $(row).css({"background-color":"#F5F5F5"});	
		    }
	    	
	  	}
    });
 
    // Apply the search
    //table = table.columns().eq( 0 );
    console.log("table >>>> " + table2);
    if(table2){
    table2.columns().eq( 0 ).each( function ( colIdx ) {
    	
    	if(colIdx > 0 ){

    	console.log("colIdx tesda"+colIdx);
    		$( 'input', table2.column( colIdx ).footer() ).on( 'keyup change', function () {
            	table2.column( colIdx )
                .search( this.value )
                .draw();
        	} );
    	
    	}
    });
    }

  	
</r:script>
</section>

</body>

</html>
