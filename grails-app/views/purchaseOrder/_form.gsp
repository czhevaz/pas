
<%@ page import="com.smanggin.PurchaseOrder" %>
<%@ page import="com.smanggin.GlobalService" %>
<%
    def globalService = grailsApplication.classLoader.loadClass('com.smanggin.GlobalService').newInstance()
%>

		<div class="form-group ${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}  required">
			<label for="country" class="col-sm-3 control-label"><g:message code="register.country.label" default="Country" /></label>
			<div class="col-sm-3">
			<!--	<p class="form-control-static">${session.country}</p>	
				<g:hiddenField name="country" value="${session.country}"/> -->
				<g:select id="country" name="country" from="${com.smanggin.Country.list()}" optionKey="name" required="" value="${purchaseOrderInstance?.country}" class="many-to-one form-control chosen-select" />
				<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'country', 'error')}</span>
			</div>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'transactionGroup', 'error')} required">
			<label for="transactionGroup" class="col-sm-3 control-label"><g:message code="purchaseOrder.transactionGroup.label" default="Transaction Group" /><span class="required-indicator">*</span></label>
			<div class="col-sm-3">
                <g:if test="${actionName == 'edit'}">
                    <p class="form-control-static">${purchaseOrderInstance?.transactionGroup?.description}</p>   
                </g:if>
                <g:else>
				<g:select id="transactionGroup" name="transactionGroup.id" from="${com.smanggin.TransactionGroup.list()}" optionKey="id" required="" value="${purchaseOrderInstance?.transactionGroup?.id}" class="many-to-one form-control" noSelection="['null': '']"/>
                </g:else>
				<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'transactionGroup', 'error')}</span>
			</div>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'number', 'error')} ">
			<label for="number" class="col-sm-3 control-label"><g:message code="purchaseOrder.number.label" default="Number" /></label>
			<div class="col-sm-4">
				<g:textField name="number" class="form-control" value="${purchaseOrderInstance?.number}" readonly="true"/>
				<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'number', 'error')}</span>
			</div>
		</div>

        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'purchaseOrderDate', 'error')} required">
            <label for="purchaseOrderDate" class="col-sm-3 control-label"><g:message code="purchaseOrder.purchaseOrderDate.label" default="Purchase Order Date" /><span class="required-indicator">*</span></label>
            
                <g:jqDatePicker name="purchaseOrderDate" precision="day"  value="${purchaseOrderInstance?.purchaseOrderDate}" data-date-format="yyyy-mm-dd" />
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'purchaseOrderDate', 'error')}</span>
            
        </div>
        
 
		<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'currency1', 'error')} ">
			<label for="currency1" class="col-sm-3 control-label"><g:message code="purchaseOrder.currency1.label" default="Currency1" /></label>
			<div class="col-sm-3">
				<g:select id="currency1" name="currency" from="${com.smanggin.Currency.list()}" optionKey="code" value="${purchaseOrderInstance?.currency1?.code}" class="many-to-one form-control chosen-select" noSelection="['null': '']"/>
				<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'currency1', 'error')}</span>
			</div>
		</div>

		
		<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')} ">
			<label for="rate" class="col-sm-3 control-label"><g:message code="purchaseOrder.rate.label" default="Rate" /></label>
			<div class="col-sm-4">
				<g:field type="number" name="rate" class="form-control" step="any" value="${purchaseOrderInstance.rate}"/>
				<g:field type="hidden" id ="rateDetailId" name="rateDetail.id" value="${purchaseOrderInstance.rateDetail}"/> 
				<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')}</span>
			</div>
		</div>
   
		
		
		<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'supplier', 'error')} required">
			<label for="supplier" class="col-sm-3 control-label"><g:message code="purchaseOrder.supplier.label" default="Supplier" /><span class="required-indicator">*</span></label>
			<div class="col-sm-3">
				<g:select id="supplier" name="supplier.id" from="${purchaseOrderInstance?.country?globalService.supplierFindALLByCountry(purchaseOrderInstance?.country):com.smanggin.Supplier.list()}" optionKey="id" optionValue="name" required="" value="${purchaseOrderInstance?.supplier?.id}" class="many-to-one form-control chosen-select"/>
				<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'supplier', 'error')}</span>
			</div>
		</div>
        

        <div id= "POPF"  style="display:${purchaseOrderInstance?.transactionGroup?.transactionType?.code =='POPF' ?'block':'none'}">
        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'deliveryPlace', 'error')} ">
            <label for="deliveryPlace" class="col-sm-3 control-label"><g:message code="purchaseOrder.deliveryPlace.label" default="Delivery Place" /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="deliveryPlace" value="${purchaseOrderInstance?.deliveryPlace}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'deliveryPlace', 'error')}</span>
            </div>
        </div>

        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'deliveryDate', 'error')} ">
            <label for="deliveryDate" class="col-sm-3 control-label"><g:message code="purchaseOrder.deliveryDate.label" default="Delivery Date" /></label>
            <div class="col-sm-6">
                <g:jqDatePicker  name="deliveryDate" precision="day"  value="${purchaseOrderInstance?.deliveryDate}"  />
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'deliveryDate', 'error')}</span>
            </div>
        </div>

        
        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'paymentTerms', 'error')} ">
            <label for="paymentTerms" class="col-sm-3 control-label"><g:message code="purchaseOrder.paymentTerms.label" default="Payment Terms" /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="paymentTerms" value="${purchaseOrderInstance?.paymentTerms}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'paymentTerms', 'error')}</span>
            </div>
        </div>
        </div>
			

        <div id= "POMS"  style="display:${purchaseOrderInstance?.transactionGroup?.transactionType?.code =='POMS' ?'block':'none'}">
        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'programTittle', 'error')} ">
            <label for="programTittle" class="col-sm-3 control-label"><g:message code="purchaseOrder.programTittle.label" default="Program Tittle" /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="programTittle" value="${purchaseOrderInstance?.programTittle}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'programTittle', 'error')}</span>
            </div>
        </div>

        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'objective', 'error')} ">
            <label for="objective" class="col-sm-3 control-label"><g:message code="purchaseOrder.objective.label" default="Objective(s)" /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="objective" value="${purchaseOrderInstance?.objective}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'objective', 'error')}</span>
            </div>
        </div>


        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'scheme', 'error')} ">
            <label for="scheme" class="col-sm-3 control-label"><g:message code="purchaseOrder.scheme.label" default="Scheme" /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="scheme" value="${purchaseOrderInstance?.scheme}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'scheme', 'error')}</span>
            </div>
        </div>


        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'mechanics', 'error')} ">
            <label for="mechanics" class="col-sm-3 control-label"><g:message code="purchaseOrder.mechanics.label" default="Mechanics " /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="mechanics" value="${purchaseOrderInstance?.mechanics}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'mechanics', 'error')}</span>
            </div>
        </div>

        <div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'activitiesComponent', 'error')} ">
            <label for="activitiesComponent" class="col-sm-3 control-label"><g:message code="purchaseOrder.activitiesComponent.label" default="Activities Component" /></label>
            <div class="col-sm-6">
                <g:textArea class="form-control" name="activitiesComponent" value="${purchaseOrderInstance?.activitiesComponent}" rows="5" cols="40"/>
                <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'activitiesComponent', 'error')}</span>
            </div>
        </div>

        
        </div>





<%
if(actionName=='edit') { 
%>          
            
           
			<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')} ">
				<label for="reasonforInvestment" class="col-sm-3 control-label"><g:message code="purchaseOrder.reasonforInvestment.label" default="Reason for Investment" /></label>
				<div class="col-sm-6">
					<g:textArea class="form-control" name="reasonforInvestment" value="${purchaseOrderInstance?.reasonforInvestment}" rows="5" cols="40"/>
					<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'reasonforInvestment', 'error')}</span>
				</div>
			</div>
            
            <!--
			<div class="form-group ">
				<label for="comment" class="col-sm-3 control-label"><g:message code="purchaseOrder.comment.label" default="Feedback / Comment from Reviewers" /></label>
				<div class="col-sm-6">
					<g:textArea class="form-control" name="comment" value="" rows="5" cols="40" placeholder="Type message..."/>
				</div>
			</div>
            -->

<% 
}
%>
<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'addIntructions', 'error')} ">
                <label for="addIntructions" class="col-sm-3 control-label"><g:message code="purchaseOrder.addIntructions.label" default="Additional Intructions" /></label>
                <div class="col-sm-6">
                    <g:textArea class="form-control" name="addIntructions" value="${purchaseOrderInstance?.addIntructions}" rows="5" cols="40"/>
                    <span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'addIntructions', 'error')}</span>
                </div>
            </div>        
<r:script>
	
	var country = $('#country').val();
    var date = $('#purchaseOrderDate_year').val() + "-" + $('#purchaseOrderDate_month').val() + "-" + $('#purchaseOrderDate_day').val()

	$(document).ready(function () {
		$('#lob').empty();
		$('#brand').empty();
		
		<%
		if(actionName=='create') { 
		%>
		$('#transactionGroup').empty();
		<% 
		}
		%>
        $('#brand').prepend("<option value='' >All</option>")
		$('#brand').chosen();
		$('#lob').chosen();
		$('#transactionGroup').chosen();
        $('#month').prepend("<option value='' >All</option>")
        $('#month').trigger('chosen:updated');
		<g:if test="${session.country}" >
			country ='${session.country}';
			$('#country').val(country);	
			$('#country option:not(:selected)').prop('disabled', true).trigger('chosen:updated');
			<%
            if(actionName=='create') { 
            %>
            getLob(country);
		    getCurrency(country);
			getTrGroup(country);
			getSupplier(country)
            getRequestor(country);
            <% 
            }
            %>
            getYear(country);
		</g:if>
		
	});


    $("#currency1").on('change', function() {
    	
//        console.log("date");
//        console.log(date);
        $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?code="+$(this).val()+"&date="+date,
            type: "POST",
            success: function (data) {
				
            	$("#rate").val(data.value);
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    });


    $("#lob").on('change', function() {
    	
    	$.ajax({
            url: "/${meta(name:'app.name')}/brand/jlist?country="+country+"&masterField.name=lob&masterField.id="+$(this).val(),
            type: "POST",
            success: function (data) {
            	$('#brand').empty();
              	if(data.length > 0){
                     $('#brand').prepend("<option value='' >All</option>")
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

    $("#transactionGroup").on('change', function() {
        $.ajax({
            url: "/${meta(name:'app.name')}/transactionGroup/jshow?id="+$(this).val(),
            type: "POST",
            success: function (data) {
                console.log(data);
                if (data.transactionGroupInstance.transactionTypeCode == 'POPF') {
                    $('#POPF').show();            
                    $('#POMS').hide();
                }else if(data.transactionGroupInstance.transactionTypeCode == 'POMS'){
                    $('#POMS').show();
                    $('#POPF').hide();

                }else{
                     $('#POMS').hide();
                     $('#POPF').hide();
                }
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    });


	$("#country").on('change', function() {
		country = $(this).val();
		urlGroup = "/${meta(name:'app.name')}/transactionGroup/jlist?login=${session.user}&country="+country;
		urlCurrency = "/${meta(name:'app.name')}/currency/jlist?country="+country;
		urlSupplier = "/${meta(name:'app.name')}/supplier/jlist?masterField.name=countryOwnerID&masterField.id="+country;

		getLob(country);			
		getTrGroup(urlGroup);			
		getCurrency(urlCurrency);
		getSupplier(urlSupplier);
        getRequestor(country);
        getYear(country);
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
                    $('#brand').prepend("<option value='' >-- All --</option>")
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

    function getTrGroup(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/transactionGroup/jlist?login=${session.user}&country="+country,
        
            type: "POST",
            success: function (data) {
                
                if(data.length > 0){
                    
                    $('#transactionGroup').empty();
                     $('#transactionGroup').prepend("<option value='' >&nbsp;</option>")
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
        var date = $('#purchaseOrderDate_year').val() + "-" + $('#purchaseOrderDate_month').val() + "-" + $('#purchaseOrderDate_day').val()
        //console.log("date");
        //console.log(date);
        $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?country="+country+"&date="+date+"&countryCode="+country,
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
    
    function getRequestor(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/user/jlist?country="+country,
            
            type: "POST",
            success: function (data) {

                $('#requestor').empty()
                if(data.length > 0){
                    
                    $('#requestor').chosen();
                    $('#requestor').prepend("<option value='' >All</option>")
                    $.each(data, function(a, b){
                         var opt = "<option value='"+b.name+"'> "+ b.name +" </option>";
                        $('#requestor').append(opt);
                        
                    });

                    $('#requestor').trigger('chosen:updated');
                    $('#requestor').chosen();
                }else{
                 
                    $('#requestor').chosen('destroy');
                    $('#requestor').chosen();
                   
                }
                
                
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });
    }

    $('#purchaseOrderDate').on('changeDate', function (e) {

        
        var date =   new Date(e.date).getFullYear()+ "-" +  (new Date(e.date).getMonth() +1) + "-" + new Date(e.date).getDate()
        
        var currencyCode = $('#currency1').val();
        $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?code="+currencyCode+"&date="+date+"&countryCode="+country,
            type: "POST",
            success: function (data) {
                
                $("#rate").val(data.value);
            },
            error: function (xhr, status, error) {
                alert("fail");
            }
        });             
        //$(this).attr('value', $(this).val());
       
    });

    //* function get year* /
    function getYear(country){
        $.ajax({
            url: "/${meta(name:'app.name')}/purchaseOrder/getYear?country="+country+"&domain=PurchaseOrder",
            
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

