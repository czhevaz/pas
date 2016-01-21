<div id="searchPpp" class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">Finding Budget Resources from Approved PPP</h4>
            </div>

            <div class="modal-body">
        		<div class="row">
		        
		        
					<div id="table-content">
		          	<table class="table table-bordered  table-striped  table-hover margin-top-medium">
						<thead>
							<tr>
							
								<th><g:message code="ppp.pppNumber.label" default="Number" /></th>
								
								<th ><g:message code="ppp.lob.label" default="Lob" /></th>

								<th><g:message code="ppp.brand.label" default="Brand" /></th>

								<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

								<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

								<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>
								
								<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'PPP Date')}" />
															
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${pppInstanceList}" status="i" var="pppInstance">
							<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							
								<td><g:link controller="purchaseOrder" action="save" id="${pppInstance.id}">${fieldValue(bean: pppInstance, field: "pppNumber")}</g:link></td>

								<td>${fieldValue(bean: pppInstance, field: "lob")}</td>

								<td>${fieldValue(bean: pppInstance, field: "brand")}</td>

								<td>${fieldValue(bean: pppInstance, field: "requestor")}</td>

								<td>${fieldValue(bean: pppInstance, field: "amount")}</td>
							
								<td>${fieldValue(bean: pppInstance, field: "remain")}</td>
							
								<td><g:formatDate date="${pppInstance.pppDate}" /></td>

								
							</tr>
						</g:each>
						</tbody>
					</table>
					</div>
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
	var country = $("#country").val()
	$("#search2").click(function(){
		
		var lobId = $("#lob").val();
		var brandId =$("#brand").val(); 
		var requestorId =$("#requestor").val(); 
		var year = $("#year").val();	
		var month =	$("#month").val();	
		
		var postData = {
			search:"true",	
			countryId:country,
			lobId:lobId,
			brandId:brandId,
			requestorId:requestorId,
			year:year,
			month:month,		
			
		}

		$.ajax({
			url: "/${meta(name:'app.name')}/purchaseOrder/jlist",
			data: postData,
			success: function(d){
			
				$("#table-content tbody").html("");	
				$.each(d, function(i, item) {
					
					var tr ="<tr onclick = addToPO(\'"+item.pppNumber+"\');>";
					tr += "<td > "+  item.pppNumber +" </td>";
					tr += "<td > "+  item.lobName +" </td>";
					tr += "<td > "+  item.brandName +" </td>";
					tr += "<td > "+  item.requestorName +" </td>";
					tr += "<td > "+  formatNumber(item.amount) +" </td>";
					tr += "<td > "+  formatNumber(item.remainCreditLimit) +" </td>";
					tr += "<td > "+  item.pppDate +" </td>";
					tr += "</tr>";
					$("#table-content tbody").append(tr);	
									    
				});
				
			},
		});
	});

	function addToPO(pppNumber){
		$("#pppNumber").val(pppNumber);	
		$.ajax({
			url: "/${meta(name:'app.name')}/purchaseOrder/jlist",
			data: {pppNumber:pppNumber,countryId:country},
			success: function(d){
				$("#table-ppp tbody").html("");	
				var tr ="<tr onclick = addToPO(\'"+d.pppNumber+"\');>";
					tr += "<td > "+  d.pppNumber +" </td>";
					tr += "<td > "+  d.lobName +" </td>";
					tr += "<td > "+  d.brandName +" </td>";
					tr += "<td > "+  d.requestorName +" </td>";
					tr += "<td > "+  formatNumber(d.amount) +" </td>";
					tr += "<td > "+  formatNumber(d.remainCreditLimit2) +" </td>";
					tr += "<td > "+  d.pppDate +" </td>";
					tr += "</tr>";
				$("#table-ppp tbody").append(tr);										    
				
				$('#searchPpp').modal('hide');
				$('#requestor').val(d.requestorName);
			},
		});	
	}
</r:script>
