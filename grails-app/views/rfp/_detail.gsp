<%@ page import="com.smanggin.Rfp" %>

				<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
            
        <div title='<g:message code="rfp.rfpDetails.label" default="Rfp Details" />' style="padding:10px">

            <table id="dg-rfpDetails" class="easyui-datagrid" style="height:240px"
            data-options="singleSelect:true, 
            collapsible:true, 
            onClickRow: rfpDetailsOnClickRow,
            toolbar: '#tb-rfpDetails',
            url:'/${meta(name:'app.name')}/rfpDetail/jlist?masterField.name=rfp&masterField.id=${rfpInstance?.id}'">
                <thead>
                    <tr>
        
                        <th data-options="field:'purchaseOrderId',width:200,
                            formatter:function(value,row){
                                return row.purchaseOrderNumber;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'id',
                                    textField:'number',
                                    url:'/${meta(name:'app.name')}/purchaseOrder/jlist',
                                    required:true,
                                    onSelect: function(rec){
                                           getPPPNumber(rec.id);
                                    }
                                }
                        }">Purchase Order</th>
                        
                        <th data-options="field:'pppNumber',width:200,editor:{type:'textbox',options:{required:true}}">Ppp Number</th>         

                        <th data-options="field:'coaCode',width:200,
                            formatter:function(value,row){
                                return row.coaCode ;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'code',
                                    textField:'code',
                                    url:'/${meta(name:'app.name')}/chartOfAccount/jlist?country=${rfpInstance?.country}',
                                    required:true,
                                }
                        }">Coa</th>
                                    
                        <th data-options="field:'coaDescription',width:200,editor:{type:'textbox',options:{required:true}}">Coa Description</th>         

                            
                        <th data-options="field:'totalCost1',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Total Cost1</th>
                        
                        <th data-options="field:'totalCost2',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Total Cost2</th>
                        
                        <th data-options="field:'remarks',width:200,editor:'text'">Remarks</th>
                        
                        <th data-options="field:'rfpId',hidden:true">Rfp</th>
                    
                    </tr>
                </thead>
            </table>
        </div>     
</div>
        <div id="tb-rfpDetails" style="height:auto">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false" onclick="rfpDetailsAppend()">Add</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false" onclick="rfpDetailsRemoveit()">Remove</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:false" onclick="rfpDetailsAccept()">Save</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:false" onclick="rfpDetailsRefresh()">Refresh</a>
        </div>
            
        <r:script>     
            var editIndex = undefined;
            function rfpDetailsEndEditing(){
                if (editIndex == undefined){return true}
                if ($('#dg-rfpDetails').datagrid('validateRow', editIndex)){
    
        

                    $('#dg-rfpDetails').datagrid('endEdit', editIndex);
                    var row = $('#dg-rfpDetails').datagrid('getRows')[editIndex]
                    $.ajax({
                      type: "POST",
                      url: "/${meta(name:'app.name')}/rfpDetail/jsave",
                      data: row,
                      success: function(data){ 
                          if(!data.success)
                          {
                            alert(data.messages.errors[0].message)
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
            function rfpDetailsOnClickRow(index){
                if (editIndex != index){
                    if (rfpDetailsEndEditing()){
                        $('#dg-rfpDetails').datagrid('selectRow', index)
                                .datagrid('beginEdit', index);
                        editIndex = index;
                    } else {
                        $('#dg-rfpDetails').datagrid('selectRow', editIndex);
                    }
                }
            }
            function rfpDetailsAppend(){
                if (rfpDetailsEndEditing()){
                    $('#dg-rfpDetails').datagrid('appendRow',
                    {rfpId: ${rfpInstance.id? rfpInstance.id : 0},createdBy:"${auth.user()}"});
                    editIndex = $('#dg-rfpDetails').datagrid('getRows').length-1;
                    $('#dg-rfpDetails').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
                }
            }
            function rfpDetailsRemoveit(){
                if (editIndex == undefined){return}
                if (!confirm('Are you sure to delete this record?')){ return }

                var row = $('#dg-rfpDetails').datagrid('getRows')[editIndex]
                console.log(row)

                $('#dg-rfpDetails').datagrid('cancelEdit', editIndex)
                        .datagrid('deleteRow', editIndex);

                $.ajax({
                  type: "POST",
                  url: "/${meta(name:'app.name')}/rfpDetail/jdelete/" + row['id'],
                  data: row,
                  success: function(data){ 
                      if(!data.success)
                      {
                            alert(data.messages)
                      }
                  },
                  dataType: 'json'
                });             
                editIndex = undefined;
            }
            function rfpDetailsAccept(){
                if (rfpDetailsEndEditing()){
                    $('#dg-rfpDetails').datagrid('acceptChanges');
                }
            }

            function rfpDetailsRefresh(){
                $('#dg-rfpDetails').datagrid('reload');
                editIndex = undefined;
            }

            function getPPPNumber(id){
                $.ajax({
                url: "/${meta(name:'app.name')}/purchaseOrder/jshow?id="+id,
                type: "POST",
                    success: function (data) {
                        console.log(data);
                        var pppNumberEd  =$('#dg-rfpDetails').datagrid('getEditor', {index:editIndex,field:'pppNumber'});
                        $(pppNumberEd.target).textbox('setValue',data.purchaseOrderInstance.pppNumber);
                    },
                    error: function (xhr, status, error) {
                        alert("fail");
                    }
                });

            }
        </r:script>  
    


<%
}
%>
