<%@ page import="com.smanggin.PurchaseOrder" %>

		<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
       
        
        <div title='<g:message code="purchaseOrder.purchaseOrderDetails.label" default="Purchase Order Details" />' style="padding:10px">

            <table id="dg-purchaseOrderDetails" class="easyui-datagrid" style="height:240px"
            data-options="singleSelect:true, 
            collapsible:true, 
            rownumbers: true,
            onClickRow: purchaseOrderDetailsOnClickRow,
            toolbar: '#tb-purchaseOrderDetails',

            url:'/${meta(name:'app.name')}/purchaseOrderDetail/jlist?masterField.name=purchaseOrder&masterField.id=${purchaseOrderInstance?.id}'">
                <thead>
                    <tr>
                    	<th data-options="field:'description',width:200,editor:'text'">Description</th>
                                           
                    	<th data-options="field:'coverageArea',width:200,editor:'text'">Coverage Area</th>	
                        
                        <th data-options="field:'outlet',width:200,editor:'text'">Outlet</th>
                    
                    <g:if test="${purchaseOrderInstance?.transactionGroup?.transactionType?.code == 'POPF'}">
                        <th data-options="field:'qty',align:'right',formatter:formatNumber,  width:100,
                        editor:{
                        	type:'numberbox',
                        	options:{
                        		precision:2,
                        		onChange: function(rec){
                                	autoCalculate();
                            	}
                        	}

                        }">Qty </th>

                        <th data-options="field:'pic',width:200,editor:'text'">Uom</th>

                        <th data-options="field:'unitPrice',align:'right',formatter:formatNumber,  width:100,
                        editor:{
                        	type:'numberbox',
                        	options:{
                        		precision:2,
                        		onChange: function(rec){
                                	autoCalculate();
                            	}
                        	}

                        }">Unit Price (${purchaseOrderInstance?.currency1?.code})</th>
                    </g:if>
                        
                        <th data-options="field:'currencyCode',width:200,
                            formatter:function(value,row){
                                return row.currencyCode;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'name',
                                    textField:'name',
                                    url:'/${meta(name:'app.name')}/currency/jlist',
                                    required:true,
                                    onSelect: function(rec){
                                        exchangeRate();    
                                    }                                    

                                }
                        }">Local currency</th>

                        <th data-options="field:'totalCost',align:'right',formatter:formatNumber,  width:100,
                        editor:{
                        	type:'numberbox',
                        	options:{
                        		precision:2,
                        		onChange: function(rec){
                                	exchangeRate();
                            	}
                        	}

                        }">Total Cost (${purchaseOrderInstance?.currency1?.code})</th>
                        
                        <th data-options="field:'totalCost2',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Total Cost (${purchaseOrderInstance.currency2?.code})</th>

                        
                        
                        
                       
                    <g:if test="${purchaseOrderInstance?.transactionGroup?.transactionType?.code == 'POMS'}">         

                        <th data-options="field:'pic',width:200,editor:'text'">PIC</th>

                        <th data-options="field:'startDate',width:200,editor:{type:'datebox',options:{formatter:myformatter,parser:myparser}}">Start Date</th>

                        <th data-options="field:'finishDate',width:200,editor:{type:'datebox',options:{formatter:myformatter,parser:myparser}}">Finish Date</th>
                       
                    </g:if>

                    <g:if test="${purchaseOrderInstance?.transactionGroup?.transactionType?.code == 'PONP'}">
                       	 <th data-options="field:'transactionDate',width:200,editor:{type:'datebox',options:{formatter:myformatter,parser:myparser}}">Transaction Date</th>	
					</g:if>                       
                        <th data-options="field:'remark',width:200,editor:'text'">Remark</th>

                        <th data-options="field:'createdBy',hidden:true">Purchase Order</th>

                        <th data-options="field:'purchaseOrderId',hidden:true">Purchase Order</th>            
                    </tr>
                </thead>
            </table>
        </div> 

        <!-- Attachment -->
        <div title='<g:message code="transfer.attachMent.label" default="Attachment"/>'  style="padding:10px">
	       <table id="dg-attachment" class="easyui-datagrid"  style="height:240px"
	                data-options="
	                singleSelect:true, 
	                collapsible:true, 
	                rownumbers: true,  
	                toolbar: '#tb-attachment',          
	                url:'/${meta(name:'app.name')}/attachment/jlist?masterField.name=purchaseOrder&masterField.id=${purchaseOrderInstance?.id}'">
	        
	            <thead>
	                <tr>
	                    <th data-options="field:'fileName',width:200">File Name</th> 
	                    <th data-options="field:'fileTypesName',width:100">File Types </th>          
	                </tr>
	            </thead>    
	        </table>        

	    </div><!-- /.Attachment -->

</div>
<g:render template="attachment"/> 

<g:if test ="${purchaseOrderInstance.state=='Draft' || purchaseOrderInstance.state=='Rejected'}">
<!-- Toolbar Attachment -->
<div id="tb-attachment" style="height:auto">
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false" onclick="attachmentsUpload()">upload</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false" onclick="attachmentsRemoveit()">Remove</a>
</div><!-- /.Toolbar Attachment -->


<div id="tb-purchaseOrderDetails" style="height:auto">
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false" onclick="purchaseOrderDetailsAppend()">Add</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false" onclick="purchaseOrderDetailsRemoveit()">Remove</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:false" onclick="purchaseOrderDetailsAccept()">Save</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:false" onclick="purchaseOrderDetailsRefresh()">Refresh</a>
</div><!-- /.tb-purchaseOrderDetails -->
</g:if>
            
<r:script>  
	function attachmentsUpload(){
		$('#uploadPO').modal('show');
	}

    var editIndex = undefined;
    function purchaseOrderDetailsEndEditing(){
        if (editIndex == undefined){return true}
        if ($('#dg-purchaseOrderDetails').datagrid('validateRow', editIndex)){
            $('#dg-purchaseOrderDetails').datagrid('endEdit', editIndex);
            var row = $('#dg-purchaseOrderDetails').datagrid('getRows')[editIndex]
            $.ajax({
              type: "POST",
              url: "/${meta(name:'app.name')}/purchaseOrderDetail/jsave",
              data: row,
              success: function(data){ 
                 purchaseOrderDetailsRefresh();
                  if(!data.success)
                  {
                    if(data.limit){
                        alert(data.messages);     
                    }else{
                        alert(data.messages.errors[0].message);
                    }
                    
                  }

              },
              dataType: 'json'
            });
            editIndex = undefined;
            return true;
        } else {
            return false;
        }
    }

    function purchaseOrderDetailsOnClickRow(index){
        if (editIndex != index){
            if (purchaseOrderDetailsEndEditing()){
                $('#dg-purchaseOrderDetails').datagrid('selectRow', index)
                        .datagrid('beginEdit', index);
                editIndex = index;
            } else {
                $('#dg-purchaseOrderDetails').datagrid('selectRow', editIndex);
            }
        }
    }
    function purchaseOrderDetailsAppend(){
        if (purchaseOrderDetailsEndEditing()){
            $('#dg-purchaseOrderDetails').datagrid('appendRow',
            {purchaseOrderId: ${purchaseOrderInstance.id? purchaseOrderInstance.id : 0},createdBy:'${auth.user()}' });
            editIndex = $('#dg-purchaseOrderDetails').datagrid('getRows').length-1;
            $('#dg-purchaseOrderDetails').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
        }
    }
    function purchaseOrderDetailsRemoveit(){
        if (editIndex == undefined){return}
        if (!confirm('Are you sure to delete this record?')){ return }

        var row = $('#dg-purchaseOrderDetails').datagrid('getRows')[editIndex]
        

        $('#dg-purchaseOrderDetails').datagrid('cancelEdit', editIndex)
                .datagrid('deleteRow', editIndex);

        $.ajax({
          type: "POST",
          url: "/${meta(name:'app.name')}/purchaseOrderDetail/jdelete/" + row['id'],
          data: row,
          success: function(data){ 
          	purchaseOrderDetailsRefresh();
              if(!data.success)
              {
                    alert(data.messages);
              }
          },
          dataType: 'json'
        });             
        editIndex = undefined;
    }

    function purchaseOrderDetailsAccept(){
    	//reloadTotal(${purchaseOrderInstance.id? purchaseOrderInstance.id : 0});
        if (purchaseOrderDetailsEndEditing()){
            $('#dg-purchaseOrderDetails').datagrid('acceptChanges');
        }
    }

    function purchaseOrderDetailsRefresh(){
        $('#dg-purchaseOrderDetails').datagrid('reload');
        editIndex = undefined;
        reloadTotal(${purchaseOrderInstance.id? purchaseOrderInstance.id : 0},"${purchaseOrderInstance.id? purchaseOrderInstance.pppNumber : 0}");
       
    }


	function myformatter(date){
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
	}

	function myparser(s){
		if (!s) return new Date();
		var ss = s.split('-');
		var y = parseInt(ss[0],10);
		var m = parseInt(ss[1],10);
		var d = parseInt(ss[2],10);
		if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
			return new Date(y,m-1,d);
		} else {
			return new Date();
		}
	}

	var rate = ${purchaseOrderInstance?.rate?:1};
	function exchangeRate(){
		if(editIndex != undefined){
			var currEd  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'currencyCode'});
            var currencyCode = $(currEd.target).numberbox('getValue');

            $.ajax({
            url: "/${meta(name:'app.name')}/currency/jlist?code="+currencyCode,
            type: "POST",
                success: function (data) {
     
                    rate=data.value
                    var totalEd  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'totalCost'});
                    var totalCost = $(totalEd.target).numberbox('getValue');

                    var total2Ed  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'totalCost2'});
                    var totalCost2 = totalCost/rate

                    $(total2Ed.target).numberbox('setValue',totalCost2);
                },
                error: function (xhr, status, error) {
                    alert("fail");
                }
            });

			
		}	 
	}
	$(document).ready(function () {
		$('#dg-purchaseOrderDetails').datagrid('reloadFooter', [{description:'Total',totalCost:12333}]);
	});

	function reloadTotal(id,pppNumber){
        $.ajax({
            type: "GET",
            url: "/${meta(name:'app.name')}/purchaseOrderDetail/jlist?totalPoId="+id,
            success: function(data){ 
                
                $("#totalPO").text(formatNumber(data.data));
                $("#totalPO2").text(formatNumber(parseFloat(data.data)/parseFloat(rate)));
                reloadPpp(pppNumber,data.data);
            },
            dataType: 'json'
        });    
    }

    function reloadPpp(pppNumber,total){
    	var totalPO = parseFloat(total);

    	
    	$.ajax({
            type: "POST",
            url: "/${meta(name:'app.name')}/purchaseOrder/jlist",
            data: {pppNumber:pppNumber,countryId:'${purchaseOrderInstance?.country}'},
            success: function(d){ 
            	//var remain = d.remainCreditLimit - (totalPO/d.rate)
                
                $('#remain').html('<span id="remain">'+formatNumber(d.remainCreditLimit)+'</span>');
                /*$("#table-ppp tbody").html("");	
				var tr ="<tr>";
					tr += "<td > "+  d.pppNumber +" </td>";
                    tr += "<td > "+  d.pppDescription +" </td>";
					tr += "<td > "+  d.lobName +" </td>";
					tr += "<td > "+  d.brandName +" </td>";
					tr += "<td > "+  d.requestorName +" </td>";
					tr += "<td style='text-align:right'> "+  formatNumber(d.amount) +" </td>";
					tr += "<td style='text-align:right'> "+  formatNumber(d.remainCreditLimit) +" </td>";
					tr += "<td > "+  d.pppDate +" </td>";
					tr += "</tr>";
				$("#table-ppp tbody").append(tr);*/
                //$("#totalPO").text(parseFloat(data.data));
                //$("#totalPO2").text(parseFloat(data.data)/parseFloat(rate));
                
            },
        });
    }

    function autoCalculate(){
		if(editIndex != undefined){
			var qtyEd  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'qty'});
			var qty = $(qtyEd.target).numberbox('getValue');

			var unitPriceEd  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'unitPrice'});
			var unitPrice = $(unitPriceEd.target).numberbox('getValue');

			var totalCost = parseFloat(qty) * parseFloat(unitPrice);
			var totalCost2 = totalCost/rate

			var totalEd  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'totalCost'});
			$(totalEd.target).numberbox('setValue',totalCost);

			var total2Ed  =$('#dg-purchaseOrderDetails').datagrid('getEditor', {index:editIndex,field:'totalCost2'});	
			$(total2Ed.target).numberbox('setValue',totalCost2);
		}    	
    }	

</r:script>  
    
	
    

    


<%
}
%>
