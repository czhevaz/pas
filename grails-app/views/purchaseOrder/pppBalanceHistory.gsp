<%@ page import="com.smanggin.PurchaseOrder" %>

<!doctype html>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="PPP Balanced Historical " />
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
		        		
					</div><!--/.box-body -->
					<div class="box-footer clearfix">
						<div class="form-actions">
							<g:submitButton name="search" class="btn btn-primary" value="${message(code: 'default.button.search.label', default: 'Prosess')}" />
				           
				            
						</div>
					</div><!--/.box-footer -->	
	
			</div><!--/.box box-primary -->	
		</div><!--/.col-lg-12 -->	
	</div><!--/.row -->	

	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-body table-responsive">
					<table id="table-report-pppbalance" class="table table-bordered margin-top-medium">
						<thead>
							<tr>
								<th><g:message code="ppp.number.label" default="Number" /></th>
								
								<th><g:message code="ppp.amount.label" default="Limit (USD)" /></th>

								<th><g:message code="ppp.brand.label" default="PPP brand" /></th>

								<th><g:message code="purchaseOrder.number.label" default="PO No." /></th>

								<th><g:message code="purchaseOrder.trType.label" default="PO Type" /></th>
							
								<th><g:message code="purchaseOrder.state.label" default="PO Status" /></th>

								<th><g:message code="purchaseOrder.description.label" default="Description" /></th>

								<th><g:message code="purchaseOrder.Total.label" default="Value" /></th>

								<th><g:message code="ppp.balance.label" default="PPP Balance" /></th>
									
								
							
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
		$('#month').prepend("<option value='' >All</option>")
		$('#month').trigger('chosen:updated');
		<g:if test="${session.country}" >
			country ='${session.country}';
			$('#country').val(country);	
			//$('#country option:not(:selected)').prop('disabled', true).trigger('chosen:updated');
			getLob(country);
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


	$("#search").click(function(){ 
		var countryTes = $("#country").val();
		var lobId = $("#lob").val();
		var year = $("#year").val();	
		var month =	$("#month").val();	
		
		var postData = {
			"search":"true",	
			"countryId":countryTes,
			"lobId":lobId,
			"year":year,
			"month":month,
		}

		
		$.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/pppBalanceHistory",
            data:postData,
            type: "POST",
            success: function (data) {
            	$("#table-report-pppbalance tbody").html("");	
				
				$.each(data.results , function(i,item) {
					$.each(item.po , function(j,po) {
						var tr ="<tr>";	
						
						if(j==0){
							tr += "<td rowspan='"+item.po.length+"'> "+ item.pppNumber +"</td>";
							tr += "<td rowspan='"+item.po.length+"' style='text-align:right;'> "+ item.pppCost +" </td>";
							tr += "<td rowspan='"+item.po.length+"'> "+ item.pppBrand +" </td>";	
						}	

						tr += "<td > <a href='/pas/purchaseOrder/show/"+po.poId+"' target ='_blank'>"+ po.poNumber +"</a> </td>";
						tr += "<td > "+ po.poType +" </td>";
						tr += "<td > "+ po.poState +" </td>";
						tr += "<td > "+ po.poDescription +" </td>";
						tr += "<td style='text-align:right;'> "+ po.pototal +" </td>";
						tr += "<td style='text-align:right;'> "+ po.pppBalance +" </td>";
						tr += "</tr>";
						
						$("#table-report-pppbalance tbody").append(tr);	
					});	
				});
				$("#table-report-pppbalance").stupidtable();
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

    function getYear(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/getYear?country="+country,
            
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

</r:script>	

</section>

</body>

</html>
