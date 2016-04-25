<img src="http://dkclasses.com/images/loading.gif" id="loading-indicator" style="display:none" />
<div id="searchPpp" class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">Finding Budget Resources from Approved PPP</h4>
            </div>

            <div class="modal-body">
        		<div class="row">
		        	<div class="col-lg-12">
					<div class="box box-primary">
		        
					<div id="table-content" class=" box-body table-responsive">
		          	<table id="pppContent" class="table table-bordered  table-striped  table-hover margin-top-medium " style="width:100%;">
						<thead>
							<tr>
							
								<th><g:message code="ppp.pppNumber.label" default="Number" /></th>

								<th style="width:30px;"><g:message code="ppp.pppDescription.label" default="Description" /></th>
								
								<th ><g:message code="ppp.lob.label" default="Lob" /></th>

								<th><g:message code="ppp.brand.label" default="Brand" /></th>

								<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

								<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

								<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>

								<th><g:message code="ppp.amountTotal.label" default="PPP LIMIT(USD)" /></th>

								<th><g:message code="ppp.remainTotal.label" default="PPP LIMIT REMAINING (USD)" /></th>
								
								<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'PPP Date')}" />
															
							
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
	/*$(document).bind("ajaxSend", function(){
	   $("#loading-indicator").show();
	 }).bind("ajaxComplete", function(){
	   $("#loading-indicator").hide();
	 });*/
	var table = $('#pppContent').DataTable();

	$("#search2").click(function(){
		$('#pppContent').DataTable().destroy();
		

		var countryTes = $("#country").val();
		var lobId = $("#lob").val();
		var brandId =$("#brand").val(); 
		var requestorId =$("#requestor").val(); 
		var year = $("#year").val();	
		var month =	$("#month").val();	
		
		var postData = {
			"search":"true",	
			"countryId":countryTes,
			"lobId":lobId,
			"brandId":brandId,
			"requestorId":requestorId,
			"year":year,
			"month":month,
		}

		table = $('#pppContent').DataTable( {
			
			
	        "bProcessing": true,
		    "sAjaxSource": "/${meta(name:'app.name')}/purchaseOrder/jlist",
		    "fnServerData": function ( sSource, aoData, fnCallback, oSettings ) {
		      
		      aoData.push( { "name": "search", "value": "true" } );
		      aoData.push( { "name": "countryId", "value": countryTes } );
		      aoData.push( { "name": "lobId", "value": lobId } );
		      aoData.push( { "name": "brandId", "value": brandId } );
		      aoData.push( { "name": "requestorId", "value":requestorId } );
		      aoData.push( { "name": "year", "value": year } );
		      aoData.push( { "name": "month", "value": month } );

		      oSettings.jqXHR = $.ajax( {
		        "dataType": 'json',
		        "type": "POST",
		        "url": sSource,
		        "data": aoData,
		        "success": fnCallback
		      } );
		    },

		    "aoColumns": [
			  { "mData": "pppNumber",
		      	"fnRender": function(obj) {
					var str = obj.aData.pppNumber;
					return str;
				},
				sDefaultContent: "n/a" ,
				
			  },
			   { "mData": "pppDescription",
		      	"fnRender": function(obj) {
					var str = obj.aData.pppNumber;
					return str;
				},
				sDefaultContent: "n/a" ,
				
			  },
			  { "mData": "lobName",
		      	"fnRender": function(obj) {
					var str = obj.aData.lobName;
					return str;
				},
		      	sDefaultContent: "n/a" ,
		      	sClass: "dt-right",
		      },
		      { "mData": "brandName",
		      	"fnRender": function(obj) {
					var str = obj.aData.brandName;
					return str;
				},
		      	sDefaultContent: "n/a" ,
		      	sClass: "dt-right",
		      },
		      { "mData": "requestorName",
		      	"fnRender": function(obj) {
					var str = obj.aData.requestorName;
					return str;
				},
				sDefaultContent: "n/a",
				sClass: "dt-right",
				  },
		      { "mData": "amount",
		      	"fnRender": function(obj) {
					var str = obj.aData.amount;
					return str;
				},
				sDefaultContent: "n/a",
				sClass: "dt-right",
				  },

				{ "mData": "remainCreditLimit",
		      	"fnRender": function(obj) {
					var str = obj.aData.remainCreditLimit;
					return str;
				},
				sDefaultContent: "n/a",
				sClass: "dt-right",
				  },
				 { "mData": "ammountTotalPPP",
		      	"fnRender": function(obj) {
					var str = obj.aData.ammountTotalPPP;
					return str;
				},
				sDefaultContent: "n/a",
				sClass: "dt-right",
				  },   
				  { "mData": "remainCreditLimitTotalPPP",
		      	"fnRender": function(obj) {
					var str = obj.aData.remainCreditLimitTotalPPP;
					return str;
				},
				sDefaultContent: "n/a",
				sClass: "dt-right",
				  },  
				  { "mData": "pppDate",
		      	"fnRender": function(obj) {
					var str = obj.aData.pppDate;
					return str;
				},
				sDefaultContent: "n/a",
				sClass: "dt-right",
				  },   

			],
			 

	    } );
		
		/*$.ajax({
			url: "/${meta(name:'app.name')}/purchaseOrder/jlist",
			data: postData,
			success: function(d){
				console.log('text');
				$('#pppContent').DataTable().destroy();
				$("#table-content tbody").html("");	
				$.each(d, function(i, item) {
					
					var tr ="<tr onclick = addToPO(\'"+item.pppNumber+"\',\'"+item.brandName+"\',\'"+item.lobName+"\')>";
					tr += "<td > "+  item.pppNumber +" </td>";
					tr += "<td > "+  item.lobName +" </td>";
					tr += "<td > "+  item.brandName +" </td>";
					tr += "<td > "+  item.requestorName +" </td>";
					tr += "<td > "+  formatNumber(item.amount) +" </td>";
					tr += "<td > "+  formatNumber(item.remainCreditLimit) +" </td>";
					tr += "<td > "+  formatNumber(item.ammountTotalPPP) +" </td>";
					tr += "<td > "+  formatNumber(item.remainCreditLimitTotalPPP) +" </td>";
					tr += "<td > "+  item.pppDate +" </td>";
					tr += "</tr>";
					$("#table-content tbody").append(tr);	
									    
				});

				$('#pppContent').DataTable({
        "oLanguage": {
            "sProcessing": "DataTables is currently busy"
        }*/
    });
				
	$('#pppContent tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
        console.log(data);
        var r = confirm(" Are you sure to Add this PPP !");
		if (r == true) {
			addToPO(data)
			<g:if test="${actionName == 'edit'}">
				deleteDetailPo()					
			</g:if> 
		} else {
		    
		}
        
       
    } );

	function addToPO(data){
		
		var countryTes = $("#country").val();
		
		$("#table-ppp tbody").html("");	
		
		var tr ="<tr>";
			tr += "<td > "+  data.pppNumber +" </td>";
			tr += "<td > "+  data.pppDescription +" </td>";
			tr += "<td > "+  data.lobName +" </td>";
			tr += "<td > "+  data.brandName +" </td>";
			tr += "<td > "+  data.requestorName +" </td>";
			tr += "<td > "+  formatNumber(data.amount) +" </td>";
			tr += "<td > "+  formatNumber(data.remainCreditLimit) +" </td>";
			tr += "<td > "+  formatNumber(data.ammountTotalPPP) +" </td>";
			tr += "<td > "+  formatNumber(data.remainCreditLimitTotalPPP) +" </td>";
			tr += "<td > "+  data.pppDate +" </td>";
			tr += "</tr>";
		$("#table-ppp tbody").append(tr);										    
		
		$('#searchPpp').modal('hide');
		$("#brand").val(data.brandName).trigger('chosen:updated');
		$("#lob").val(data.lobName).trigger('chosen:updated');
		$('#requestor').val(data.requestorName).trigger('chosen:updated');
		$("#pppNumber").val(data.pppNumber);

		<g:if test="${actionName == 'edit'}">
			updatePPP(data);
		</g:if>
	
	}

	function deleteDetailPo(){
		$.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrderDetail/deleteAllDetail?id=${purchaseOrderInstance?.id}",
            type: "POST",
            success: function (data) {
                if(data.success){
                	$('#dg-purchaseOrderDetails').datagrid('reload');
                }
                
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
	}

	function updatePPP(data){
		$.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/jsave?id=${purchaseOrderInstance?.id}",
            type: "POST",
            data: data,
            success: function (data) {
				if(data.success){
					/* update version */
					$('#version').val(data.purchaseOrderInstance.version);
					$("#table-approver tbody").html("");	
					console.log(data);
					$.each(data.poApprover , function(i,item) {
						var tr ="<tr>";
							tr += "<td > "+  item.approverLogin +" </td>";
							tr += "<td > "+  item.status +" </td>";
							tr += "</tr>";

						$("#table-approver tbody").append(tr);		
					});


									
				}else{
					alert ( 'Please Set Approvals');
				}                
                
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });	
	}
</r:script>
