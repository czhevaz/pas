<%@ page import="com.smanggin.PurchaseOrder" %>

<!doctype html>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="PO Online Progress Tracking Summary " />
	<title><g:message code="default.pppBalanceReport.label" args="[entityName]" /></title>
	<g:set var="canCreate" value="true" scope="request" />
	<g:set var="months" value="${new java.text.DateFormatSymbols().months}"/>
	<g:set var="today" value="${new Date()}"/>
</head>

<body>

<section id="create-purchaseOrder" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
    				<h3 class="box-title"><g:message code="default.pppBalanceReport.label" args="[entityName]" /></h3>
    			</div><!--/.box-header with-border -->	
					
						
					<div class="box-body">
						<div class="row">
							<div class="col-sm-6">

								<div class="form-group ${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}  required">
									<label for="country" class="col-sm-3 control-label"><g:message code="register.country.label" default="Country" /></label>
									<div class="col-sm-9">
									<!--	<p class="form-control-static">${session.country}</p>	
										<g:hiddenField name="country" value="${session.country}"/> -->
										<g:select id="country" name="country" from="${com.smanggin.Country.list()}" optionKey="name" required="" value="${purchaseOrderInstance?.country}" class="many-to-one form-control chosen-select" />
										<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}</span>
									</div>
								</div>
							</div>	
							<div class="col-sm-6">		
								<div class="form-group  required">
									<label for="lob" class="col-sm-3 control-label"><g:message code="register.lob.label" default="Lob" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:select id="lob" name="lob.code" from="${com.smanggin.Lob.list()}" optionKey="code"  value="${purchaseOrderInstance?.lob}" class="many-to-one form-control " noSelection="['':'']"/>
										
									</div>
								</div>
							</div>
						</div>
						</br>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group  required">
									<label for="brand" class="col-sm-3 control-label"><g:message code="register.brand.label" default="Brand" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:select id="brand" name="brand" from="${com.smanggin.Brand.list()}" optionKey="code" optionValue ="code"  value="${purchaseOrderInstance?.brand}" class="many-to-one form-control " noSelection="['':'']"/>
									</div>
								</div>
							</div>	
							<div class="col-sm-6">
								<div class="form-group required">
									<label for="status" class="col-sm-3 control-label"><g:message code="register.status.label" default="Status" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:select id="status" name="status" from="${['All','Draft','Waiting Approval','Approved','Closed']}"   value="${params?.status}" class="many-to-one form-control chosen-select"/>
									</div>
								</div>
							</div>	
						</div>
						<br/>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group required">
									<label for="year" class="col-sm-3 control-label"><g:message code="register.year.label" default="year" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:textField name="year" id="year" class="form-control" value="${params?.year}"/>
										
									</div>
								</div>
							</div>	
							<div class="col-sm-6">	
								<div class="form-group required">
									<label for="month" class="col-sm-3 control-label"><g:message code="register.month.label" default="Month" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:select id="month" name="month" from="${months as List}"    noSelection="['':'']" class="many-to-one form-control chosen-select"/>	
									</div>
								</div>
								
							</div>
						</div>
						<br/>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group required">
									<label for="pppNumber" class="col-sm-3 control-label"><g:message code="register.pppNumber.label" default="PPP Number" /></label>
									<div class="col-sm-9">
										<g:textField name="pppNumber" id="pppNumber" class="form-control" value="${params?.pppNumber}"/>
									</div>
								</div>
							</div>
		        		</div>
					</div><!--/.box-body -->
					<div class="box-footer clearfix">
						<div class="form-actions">
							<g:submitButton name="searchPO" class="btn btn-primary" value="${message(code: 'default.button.search.label', default: 'Prosess')}" />
				           
				            
						</div>
					</div><!--/.box-footer -->	
	
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->	

	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-body table-responsive">
					<table id="table-report-poTracking" class="table table-bordered margin-top-medium">
						<thead>
							<tr>
								<th><g:message code="purchaseOrder.number.label" default="PO No." /></th>

								<th>PO Requestor</th>
								
								<th>PO Type</th>

								<th>PO Description</th>

								<th><g:message code="purchaseOrder.Total.label" default="PO Cost" /> (USD)</th>

								<th>PO Proposed Date</th>

								<th>Status</th>

								<th>Next Approval</th>
							
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>	
				</div>				
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->	
	
<r:script>
	var country = $('#country').val();

	$("#reset").click(function(){ 
		$('#lob').val('').trigger('chosen:updated');
		$('#brand').val('').trigger('chosen:updated');
		$('#requestor').val('').trigger('chosen:updated');
	});

	$(document).ready(function () {
		$('#lob').prepend("<option value='' > All </option>")		
		$('#lob').chosen();
		$('#brand').empty();
		$('#brand').chosen();
	});

	$("#lob").on('change', function() {
    	
    	$.ajax({
            url: "/${meta(name:'app.name')}/brand/jlist?country="+country+"&masterField.name=lob&masterField.id="+$(this).val(),
            type: "POST",
            success: function (data) {

            	$('#brand').empty();
              	if(data.length > 0){
              		console.log(data);
                     $('#brand').prepend("<option value='' > All </option>")
                    $.each(data, function(a, b){	
                        var opt = "<option value='"+b.code+"'> "+ b.code +" </option>";
                        $('#brand').append(opt);
                     });
                     $('#brand').trigger('chosen:updated');
                }else{
                	$('#brand').chosen("destroy");
                	$('#brand').chosen();
                }
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });

    });	

	$("#searchPO").click(function(){ 
		//alert(' hellllloooooooooooooooooooo ');		
		var countryTes = $("#country").val();
		var lobId = $("#lob").val();
		var brandId = $("#brand").val();
		var year = $("#year").val();	
		var month =	$("#month").val();
		var pppNumber = $("#pppNumber").val();	
		
		var postData = {
			"search":"true",	
			"countryId":countryTes,
			"lobId":lobId,
			"brandId":brandId,
			"year":year,
			"month":month,
			"pppNumber":pppNumber,
		}
		
		$.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/poTrackingSummary",
            data:postData,
            type: "POST",
            success: function (data) {
            	console.log(data);
            	$("#table-report-poTracking tbody").html("");	
				var total= 0;

				if(data.results.length){
					$.each(data.results , function(i,item) {
						var tr ="<tr>";		

							tr += "<td > "+ item.poNumber +" </td>";
							tr += "<td > "+ item.poCreatedBy +" </td>";
							tr += "<td > "+ item.poType +" </td>";
							tr += "<td > "+ item.poDescription +" </td>";
							tr += "<td style='text-align:right;'> "+ item.poCost +" </td>";
							tr += "<td > "+ item.podate +" </td>";
							tr += "<td > "+ item.poStatus +" </td>";
							tr += "<td > "+ item.poMustApprovedBy +" </td>";

							tr += "</tr>";  
							$("#table-report-poTracking tbody").append(tr);	
							total = total + item.poCost;
					});

					var tr2 ="<tr>";
							tr2 += "<td colspan='4' style='text-align:right;'> Total </td>";
							tr2 += "<td style='text-align:right;'> "+total+" </td>";
							tr2 += "<td > </td>";
							tr2 += "<td > </td>";
							tr2 += "<td > </td>";
						tr2 += "</tr>";  
						$("#table-report-poTracking tbody").append(tr2);	
				}	

            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
	});
</r:script>
<script type="text/javascript">
	    //autocomplete PPP
    $("#pppNumber").autocomplete({
        source: function(request, response){
        	console.log(request);
        	request.country=$('#country').val();
            $.ajax({
                url: "${createLink(controller:'purchaseOrder', action:'pppAutoComplete')}", // remote datasource
                data: request,
                success: function(data){
                    if(data.length > 0){
                        console.log('testing')
                        response(data); // set the response
                    } else {
                        alert("PPP  not found. Try type another PPP Number.");
                    }
                },
                error: function(){ // handle server errors
                    /*$.jGrowl("Unable to retrieve Companies", {
                        theme: 'ui-state-error ui-corner-all'   
                    });*/
                },
            });
        },
        minLength: 2, // triggered only after minimum 2 characters have been entered.
        select: function(event, ui) { // event handler when user selects a field from the list.
            $("#partnerID").val(ui.item.id); // update the hidden field.
        },
    });


</script>

</section>

</body>

</html>
