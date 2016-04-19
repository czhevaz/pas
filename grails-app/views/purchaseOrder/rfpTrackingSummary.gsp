<%@ page import="com.smanggin.PurchaseOrder" %>

<!doctype html>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="RFP Online Progress Tracking Summary  " />
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
								<div class="form-group required">
									<label for="poNumber" class="col-sm-3 control-label"><g:message code="register.poNumber.label" default="PO Number" /></label>
									<div class="col-sm-9">
										<g:textField name="poNumber" id="poNumber" class="form-control" value="${params?.poNumber}"/>
									</div>
								</div>
							</div>
						</div>
						</br>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group required">
									<label for="year" class="col-sm-3 control-label"><g:message code="register.year.label" default="year" /><span class="required-indicator">*</span></label>
									<div class="col-sm-9">
										<g:select id="year" name="year" from="${yearList}"    noSelection="['':'']" class="many-to-one form-control chosen-select"/>
										
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
					<table id="table-report-rfpTracking" class="table table-bordered margin-top-medium ">
						<thead>
							<tr>
								<th onclick="tes()"><g:message code="rfp.number.label" default="RFP No." /></th>

								<th>RFP Requestor</th>
								
								<th>RFP Note</th>

								<th><g:message code="rfp.Total.label" default="RFP Cost" /> (USD)</th>

								<th>RFP Proposed Date</th>
								
								<th>RFP Status</th>

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
	
<script type="text/javascript">
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
		$('#month').prepend("<option value='' >All</option>")
		$('#month').trigger('chosen:updated');
		<g:if test="${session.country}" >
			country ='${session.country}';
			$('#country').val(country);	
			//$('#country option:not(:selected)').prop('disabled', true).trigger('chosen:updated');
			//getLob(country);
            getYear(country);
		</g:if>
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

    function getLob(country) {

    	$.ajax({
            url: "/${meta(name:'app.name')}/lob/jlist?masterField.name=country&masterField.id="+country,
            
            type: "POST",
            success: function (data) {

              	$('#lob').empty()
              	if(data.length > 0){
                    
                    $('#lob').chosen();
                    $('#lob').prepend("<option value='' >All</option>")
                    $.each(data, function(a, b){
                         var opt = "<option value='"+b.code+"'> "+ b.code +" </option>";
                        $('#lob').append(opt);
                        
                    });

                    $('#lob').trigger('chosen:updated');
                    $('#brand').empty();
                    $('#brand').prepend("<option value='' >All</option>")
	               	$('#brand').chosen();
                }else{
                 
                    $('#lob').chosen("destroy");
            		$('#lob').chosen();   	
                   
                }
                
              	
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    }/*-- end getlob  --*/


	$("#searchPO").click(function(){ 
		
		var countryTes = $("#country").val();
		var lobId = $("#lob").val();
		var brandId = $("#brand").val();
		var year = $("#year").val();	
		var month =	$("#month").val();	
		var poNumber = $("#poNumber").val();	
		
		var postData = {
			"search":"true",	
			"countryId":countryTes,
			"lobId":lobId,
			"brandId":brandId,
			"year":year,
			"month":month,
			"poNumber":poNumber
		}
		
		$.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/rfpTrackingSummary",
            data:postData,
            type: "POST",
            success: function (data) {
            	console.log(data);
            	$("#table-report-rfpTracking tbody").html("");	
				var total= 0;
				if(data.results.length){

					$.each(data.results , function(i,item) {
						var tr ="<tr>";		

							tr += "<td > "+ item.rfpNumber +" </td>";
							tr += "<td > "+ item.rfpCreatedBy +" </td>";
							
							tr += "<td > "+ item.rfpNote +" </td>";
							tr += "<td style='text-align:right;'> "+ item.rfpCost +" </td>";
							tr += "<td > "+ item.rfpDate +" </td>";
							
							tr += "<td > "+ item.rfpStatus +" </td>";

							tr += "<td > "+ item.rfpMustApprovedBy +" </td>";

							tr += "</tr>";  

							
							$("#table-report-rfpTracking tbody").append(tr);	
							total = total + item.rfpCost;
					});

					var tr2 ="<tr>";
							tr2 += "<td colspan='3' style='text-align:right;'> Total </td>";
							tr2 += "<td style='text-align:right;'> "+Math.round(total * 100) / 100+" </td>";
							tr2 += "<td > </td>";
							tr2 += "<td > </td>";
							
						tr2 += "</tr>";  
						$("#table-report-rfpTracking tbody").append(tr2);	

				}	
					
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
	});

	$("#poNumber").autocomplete({
        source: function(request, response){
        	
        	request.country=$('#country').val();
            $.ajax({
                url: "${createLink(controller:'purchaseOrder', action:'poAutoComplete')}", // remote datasource
                data: request,
                success: function(data){
                    if(data.length > 0){
                        console.log('testing')
                        response(data); // set the response
                    } else {
                        alert("PO  not found. Try type another PO Number.");
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

    function getYear(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/getYear?country="+country+"&domain=Rfp",
            
            type: "POST",
            success: function (data) {

                $('#year').empty()
                if(data.length > 0){
                    
                    $('#year').chosen();
                    $('#year').prepend("<option value='' >All</option>")
                    $.each(data, function(a, b){
                        var opt = "<option value='"+b+"'> "+ b +" </option>";
                        $('#year').append(opt);
                        
                    });

                    $('#year').trigger('chosen:updated');
                    $('#year').chosen();
                }else{
                 
                    $('#year').chosen('destroy');
                    $('#year').chosen();
                   
                }
                
                
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    }

    function tes(){
    	alert('hello world');
    }
</script>	

</section>

</body>

</html>
