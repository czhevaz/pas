<!-- Allocation -->
<div title='<g:message code="purchaseOrder.purchaseOrderAllocation.label" default="Allocation"/>'  style="padding:10px">
   <table id="dg-purchaseOrderAllocations" class="easyui-datagrid"  style="height:240px"
            data-options="
            collapsible:true, 
            rownumbers: true,
            onClickRow: purchaseOrderAllocationsOnClickRow,
            toolbar: '#tb-purchaseOrderAllocations',

            url:'/${meta(name:'app.name')}/purchaseOrderAllocation/jlist?masterField.name=purchaseOrder&masterField.id=${purchaseOrderInstance?.id}'">
    
        <thead>
            <tr>
                <th data-options="field:'brand',width:200">Brand</th> 
                <th data-options="field:'value1',align:'right',formatter:formatNumber,  width:100,
                        editor:{
                        	type:'numberbox',
                        	options:{
                        		precision:2,
                        		onChange: function(rec){
                                	exchangeRateValue();
                            	}
                        	}

                        }">value1</th>
                        
                <th data-options="field:'value2',align:'right',formatter:formatNumber,  width:100,
                        editor:{
                        	type:'numberbox',
                        	options:{
                        		precision:2,
                        		onChange: function(rec){
                                	exchangeRateValue();
                            	}
                        	}

                        }">value2</th>
                <th data-options="field:'purchaseOrderId',hidden:true">Purchase Order</th>
                        
            </tr>
        </thead>    
    </table>        

</div><!-- /.Allocation -->

<div id="tb-purchaseOrderAllocations" style="height:auto">
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:false" onclick="purchaseOrderAllocationsAccept()">Save</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:false" onclick="purchaseOrderAllocationsRefresh()">Refresh</a>
</div>

<r:script>
	var editIndex = undefined;
    function purchaseOrderAllocationsEndEditing(){
        if (editIndex == undefined){return true}
        if ($('#dg-purchaseOrderAllocations').datagrid('validateRow', editIndex)){
            $('#dg-purchaseOrderAllocations').datagrid('endEdit', editIndex);
            var row = $('#dg-purchaseOrderAllocations').datagrid('getRows')[editIndex]
            $.ajax({
              type: "POST",
              url: "/${meta(name:'app.name')}/purchaseOrderAllocation/jsave",
              data: row,
              success: function(data){ 
                 purchaseOrderAllocationsRefresh();
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

    function purchaseOrderAllocationsOnClickRow(index){
        console.log("kadiadasdasd")
        if (editIndex != index){
            if (purchaseOrderAllocationsEndEditing()){
                $('#dg-purchaseOrderAllocations').datagrid('selectRow', index)
                        .datagrid('beginEdit', index);
                editIndex = index;
            } else {
                $('#dg-purchaseOrderAllocations').datagrid('selectRow', editIndex);
            }
        }
    }
    function purchaseOrderAllocationsAppend(){
        if (purchaseOrderAllocationsEndEditing()){
            $('#dg-purchaseOrderAllocations').datagrid('appendRow',
            {purchaseOrderId: ${purchaseOrderInstance.id? purchaseOrderInstance.id : 0},createdBy:'${session.user}' });
            editIndex = $('#dg-purchaseOrderAllocations').datagrid('getRows').length-1;
            $('#dg-purchaseOrderAllocations').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
        }
    }
    function purchaseOrderAllocationsRemoveit(){
        if (editIndex == undefined){return}
        if (!confirm('Are you sure to delete this record?')){ return }

        var row = $('#dg-purchaseOrderAllocations').datagrid('getRows')[editIndex]
        

        $('#dg-purchaseOrderAllocations').datagrid('cancelEdit', editIndex)
                .datagrid('deleteRow', editIndex);

        $.ajax({
          type: "POST",
          url: "/${meta(name:'app.name')}/purchaseOrderAllocation/jdelete/" + row['id'],
          data: row,
          success: function(data){ 
          	purchaseOrderAllocationsRefresh();
              if(!data.success)
              {
                    alert(data.messages);
              }
          },
          dataType: 'json'
        });             
        editIndex = undefined;
    }

    function purchaseOrderAllocationsAccept(){
    	//reloadTotal(${purchaseOrderInstance.id? purchaseOrderInstance.id : 0});
        if (purchaseOrderAllocationsEndEditing()){
            $('#dg-purchaseOrderAllocations').datagrid('acceptChanges');
        }
    }

    function purchaseOrderAllocationsRefresh(){
        $('#dg-purchaseOrderAllocations').datagrid('reload');
        editIndex = undefined;
        
       
    }

    function exchangeRateValue(){
		if(editIndex != undefined){
			
            var rate = ${purchaseOrderInstance?.rate?:1};
            var value1Ed  =$('#dg-purchaseOrderAllocations').datagrid('getEditor', {index:editIndex,field:'value1'});
            var value1 = $(value1Ed.target).numberbox('getValue');

            var value2Ed  =$('#dg-purchaseOrderAllocations').datagrid('getEditor', {index:editIndex,field:'value2'});
            var value2 = value1/rate

            $(value2Ed.target).numberbox('setValue',value2);
    
			
		}	 
	}
</r:script>