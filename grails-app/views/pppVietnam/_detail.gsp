<%@ page import="com.smanggin.PppVietnam" %>

				<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
    
    
    
    
        
    
        
    
        
    
        
    
        
    
        
    
        
    
        
        <div title='<g:message code="pppVietnam.pppDetails.label" default="Ppp Details" />' style="padding:10px">

            <table id="dg-pppDetails" class="easyui-datagrid" style="height:240px"
            data-options="singleSelect:true, 
            collapsible:true, 
            onClickRow: pppDetailsOnClickRow,
            toolbar: '#tb-pppDetails',
            url:'/${meta(name:'app.name')}/pppDetail/jlist?masterField.name=pppVietnam&masterField.id=${pppVietnamInstance?.id}'">
                <thead>
                    <tr>
                    
                        
                        <th data-options="field:'balanceWriteOff',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Balance Write Off</th>
                        

                    
                        
                        <th data-options="field:'brand',width:200,editor:'text'">Brand</th>
                        

                    
                        
                        <th data-options="field:'costDetail',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Cost Detail</th>
                        

                    
                        
                        <th data-options="field:'poCommitted',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Po Committed</th>
                        

                    
                        
                        <th data-options="field:'pppNumber',width:200,editor:'text'">Ppp Number</th>
                        

                    
                    </tr>
                </thead>
            </table>
        </div> 

        
    
        
    
        
    
        
    
</div>



    

    

    

    

    

    

    

    

        <div id="tb-pppDetails" style="height:auto">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false" onclick="pppDetailsAppend()">Add</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false" onclick="pppDetailsRemoveit()">Remove</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:false" onclick="pppDetailsAccept()">Save</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:false" onclick="pppDetailsRefresh()">Refresh</a>
        </div>
            
        <r:script>     
            var editIndex = undefined;
            function pppDetailsEndEditing(){
                if (editIndex == undefined){return true}
                if ($('#dg-pppDetails').datagrid('validateRow', editIndex)){

        

                    $('#dg-pppDetails').datagrid('endEdit', editIndex);
                    var row = $('#dg-pppDetails').datagrid('getRows')[editIndex]
                    $.ajax({
                      type: "POST",
                      url: "/${meta(name:'app.name')}/pppDetail/jsave",
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
            function pppDetailsOnClickRow(index){
                if (editIndex != index){
                    if (pppDetailsEndEditing()){
                        $('#dg-pppDetails').datagrid('selectRow', index)
                                .datagrid('beginEdit', index);
                        editIndex = index;
                    } else {
                        $('#dg-pppDetails').datagrid('selectRow', editIndex);
                    }
                }
            }
            function pppDetailsAppend(){
                if (pppDetailsEndEditing()){
                    $('#dg-pppDetails').datagrid('appendRow',
                    {pppVietnamId: ${pppVietnamInstance.id? pppVietnamInstance.id : 0} });
                    editIndex = $('#dg-pppDetails').datagrid('getRows').length-1;
                    $('#dg-pppDetails').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
                }
            }
            function pppDetailsRemoveit(){
                if (editIndex == undefined){return}
                if (!confirm('Are you sure to delete this record?')){ return }

                var row = $('#dg-pppDetails').datagrid('getRows')[editIndex]
                console.log(row)

                $('#dg-pppDetails').datagrid('cancelEdit', editIndex)
                        .datagrid('deleteRow', editIndex);

                $.ajax({
                  type: "POST",
                  url: "/${meta(name:'app.name')}/pppDetail/jdelete/" + row['id'],
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
            function pppDetailsAccept(){
                if (pppDetailsEndEditing()){
                    $('#dg-pppDetails').datagrid('acceptChanges');
                }
            }

            function pppDetailsRefresh(){
                $('#dg-pppDetails').datagrid('reload');
                editIndex = undefined;
            }
        </r:script>  
    

    

    

    


<%
}
%>
