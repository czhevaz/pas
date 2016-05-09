<%@ page import="com.smanggin.Rfp" %>

			<div class="form-group ${hasErrors(bean: rfpInstance, field: 'country', 'error')}  required">
				<label for="country" class="col-sm-3 control-label"><g:message code="register.country.label" default="Country" /></label>
				<div class="col-sm-3">
			
					<g:select id="country" name="country" from="${com.smanggin.Country.list()}" optionKey="name" required="" value="${rfpInstance?.country}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'country', 'error')}</span>
				</div>
			</div>
			
			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'transactionGroup', 'error')} required">
				<label for="transactionGroup" class="col-sm-3 control-label"><g:message code="rfp.transactionGroup.label" default="Transaction Group" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="transactionGroup" name="transactionGroup.id" from="${com.smanggin.TransactionGroup.list()}" optionKey="id" required="" value="${rfpInstance?.transactionGroup?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'transactionGroup', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'number', 'error')} ">
				<label for="number" class="col-sm-3 control-label"><g:message code="rfp.number.label" default="Number" /></label>
				<div class="col-sm-5">
					<g:textField name="number" class="form-control" value="${rfpInstance?.number}" readonly="true"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'rfpDate', 'error')} required">
				<label for="rfpDate" class="col-sm-3 control-label"><g:message code="rfp.rfpDate.label" default="Rfp Date" /><span class="required-indicator">*</span></label>
				
					<g:jqDatePicker name="rfpDate" precision="day"  value="${rfpInstance?.rfpDate}" data-date-format="yyyy-mm-dd" endDate="0d"/>
					
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'rfpDate', 'error')}</span>
				
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'currency1', 'error')} required">
				<label for="currency1" class="col-sm-3 control-label"><g:message code="rfp.currency1.label" default="Currency1" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="currency1" name="currency1.code" from="${com.smanggin.Currency.list()}" optionKey="code" required="" value="${rfpInstance?.currency1?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'currency1', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'rate', 'error')} ">
				<label for="rate" class="col-sm-3 control-label"><g:message code="rfp.rate.label" default="Rate" /></label>
				<div class="col-sm-4">
					<g:field type="number" name="rate" class="form-control" step="any" value="${rfpInstance?.rate}"/>
					<g:field type="hidden" id ="rateDetailId" name="rateDetail.id" value="${rfpInstance.rateDetail}"/> 
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'rate', 'error')}</span>
				</div>
			</div>
			
		


			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'supplier', 'error')} required">
				<label for="supplier" class="col-sm-3 control-label"><g:message code="rfp.supplier.label" default="Supplier" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:select id="supplier" name="supplier.id" from="${com.smanggin.Supplier.list()}" optionKey="id" required="" value="${rfpInstance?.supplier?.id}" class="many-to-one form-control chosen-select"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'supplier', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'paymentOption', 'error')} required">
				<label for="paymentOption" class="col-sm-3 control-label"><g:message code="rfp.paymentOption.label" default="Payment Option" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					
					<g:select id="paymentOption" name="paymentOption.id" from="${com.smanggin.PaymentOption.values()}" optionKey="id" required="" value="${rfpInstance?.paymentOption?.id}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'paymentOption', 'error')}</span>
				</div>
			</div>

			<div id="paidCountryDiv" class="form-group ${hasErrors(bean: rfpInstance, field: 'paidCountry', 'error')}  required" style="${rfpInstance?.paymentOption?.id == 1 ?:'display:none'};">
				<label for="paidCountry" class="col-sm-3 control-label"><g:message code="register.paidCountry.label" default="Paid Country" /></label>
				<div class="col-sm-5">
			
					<g:select id="paidCountry" name="paidCountry" from="${com.smanggin.Country.list()}" optionKey="name"  value="${rfpInstance?.paidCountry}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'paidCountry', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'paymentType', 'error')} ">
				<label for="paymentType" class="col-sm-3 control-label"><g:message code="rfp.paymentType.label" default="PaymentType" /></label>
				<div class="col-sm-5">
					<g:textField name="paymentType" class="form-control" value="${rfpInstance?.paymentType}"/>
					<span class="help-inline">${hasErrors(bean: rfpInstance, field: 'paymentType', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: rfpInstance, field: 'note', 'error')} ">
	            <label for="note" class="col-sm-3 control-label"><g:message code="rfp.note.label" default="Note" /></label>
	            <div class="col-sm-6">
	                <g:textArea class="form-control" name="note" value="${rfpInstance?.note}" rows="5" cols="40"/>
	                <span class="help-inline">${hasErrors(bean: rfpInstance, field: 'note', 'error')}</span>
	            </div>
	        </div>
				


<r:script>

	var country = $('#country').val();
	var date = $('#rfpDate_year').val() + "-" + $('#rfpDate_month').val() + "-" + $('#rfpDate_day').val()
	$(document).ready(function () {
		
		<%
		if(actionName=='create') { 
		%>
		$('#transactionGroup').empty();
		<% 
		}
		%>

		$('#transactionGroup').chosen();

		<g:if test="${session.country}" >
			country ='${session.country}';
			$('#country').val(country);	
			$('#country option:not(:selected)').prop('disabled', true).trigger('chosen:updated');
			
			getCurrency(country);
			getTrGroup(country);
			getSupplier(country);
		</g:if>
		
	});

	$("#country").on('change', function() {
		
		country = $(this).val();
		var urlGroup = "/${meta(name:'app.name')}/transactionGroup/jlist?login=${session.user}&country="+country;
		var urlCurrency = "/${meta(name:'app.name')}/currency/jlist?country="+country;
		var urlSupplier = "/${meta(name:'app.name')}/supplier/jlist?masterField.name=countryOwnerID&masterField.id="+country;

		
		getTrGroup(country);			
		getCurrency(country);
		getSupplier(country);
        
	});


	$("#currency1").on('change', function() {
    	//var date = $('#rfpDate_year').val() + "-" + $('#rfpDate_month').val() + "-" + $('#rfpDate_day').val()
        console.log("date");
        console.log(date);
        $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?code="+$(this).val()+"&date="+date+"&countryCode="+country,
            type: "POST",
            success: function (data) {
				console.log(data);
            	$("#rate").val(data.value);
            	$("#rateDetailId").val(data.rateDetailId)
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    });


	function getTrGroup(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/transactionGroup/jlist?login=${session.user}&country="+country,
        
            type: "POST",
            success: function (data) {
            console.log('tesss');
            console.log(data);
                
                if(data.length > 0){
                    
                    $('#transactionGroup').empty();
                    $.each(data, function(a, b){
                         var opt = "<option value='"+b.id+"'> "+ b.description +" </option>";
                        $('#transactionGroup').append(opt);
                        
                    });

                    $('#transactionGroup').trigger('chosen:updated');
                    $('#transactionGroup').chosen();
                 
                }else{
                    $('#transactionGroup').chosen("destroy");
                    $('#transactionGroup').chosen();    
                }
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    }/*-- end getTrgroup  --*/


    function getCurrency(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?country="+country+"&date="+date,
        
            type: "POST",
            success: function (data) {
                console.log(data);
                $("#currency1").val(data.code);
                $('#currency1').trigger('chosen:updated');
                   
                $("#rate").val(data.value);     
                $("#rateDetailId").val(data.rateDetailId)
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    }/*-- end getCurrency  --*/

    function getSupplier(country) {

        $.ajax({
            url: "/${meta(name:'app.name')}/supplier/jlist?masterField.name=countryOwnerID&masterField.id="+country,
            
            type: "POST",
            success: function (data) {

                $('#supplier').empty()
                if(data.length > 0){
                    
                    $('#supplier').chosen();

                    $.each(data, function(a, b){
                         var opt = "<option value='"+b.id+"'> "+ b.name +" </option>";
                        $('#supplier').append(opt);
                        
                    });

                    $('#supplier').trigger('chosen:updated');
                    $('#supplier').chosen();

                }else{
                 
                    $('#supplier').chosen('destroy');
                    $('#supplier').chosen();
                   
                }
                
                
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    }/*-- end getSupplier  --*/

	
	$('#rfpDate').on('changeDate', function (e) {
        var date =   new Date(e.date).getFullYear()+ "-" +  (new Date(e.date).getMonth() +1) + "-" + new Date(e.date).getDate()
        console.log(date);        
        var currencyCode = $('#currency1').val();
        $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?code="+currencyCode+"&date="+date+"&countryCode="+country,
            type: "POST",
            success: function (data) {
        		console.log(data);        
                $("#rate").val(data.value);
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });             
        //$(this).attr('value', $(this).val());
       
    });    

     
    /* payment Option Onchange*/

	$("#paymentOption").on('change', function() {
		
		var paymentOption = $(this).val();
		if(paymentOption == 1){
			$("#paidCountryDiv").show();
			$("#paidCountry_chosen").css("width", "100%");
			
		}else{
			$("#paidCountryDiv").hide();
			$("#paidCountry").val('');
			 $('#paidCountry').trigger('chosen:updated');
		}
        
	}); 
</r:script>
