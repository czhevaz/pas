<%@ page import="com.smanggin.Rate" %>

				<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
    
            
        <div title='<g:message code="rate.rateDetails.label" default="Rate Details" />' style="padding:10px">

            <table id="dg-rateDetails" class="easyui-datagrid" style="height:240px"
            data-options="singleSelect:true, 
            collapsible:true, 
            onClickRow: rateDetailsOnClickRow,
            toolbar: '#tb-rateDetails',
            url:'/${meta(name:'app.name')}/rateDetail/jlist?masterField.name=rate&masterField.id=${rateInstance?.id}'">
                <thead>
                    <tr>
                    
                                    
                        <th data-options="field:'currency2Code',width:200,
                            formatter:function(value,row){
                                return row.currency2Code;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'code',
                                    textField:'name',
                                    url:'/${meta(name:'app.name')}/currency/jlist',
                                    required:true,
                                }
                        }">Currency2</th>

                         <th data-options="field:'currency1Code',width:200,
                            formatter:function(value,row){
                                return row.currency1Code;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'code',
                                    textField:'name',
                                    url:'/${meta(name:'app.name')}/currency/jlist',
                                    required:true,
                                }
                        }">Currency1</th>
                       
                                    
                        <th data-options="field:'rateId',hidden:true">Rate</th>
                                 
                        
                        <th data-options="field:'value',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:2}}">Value</th>
                        
                    
                    </tr>
                </thead>
            </table>
        </div> 

        
    
        
    
</div>



    

    

        <div id="tb-rateDetails" style="height:auto">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false" onclick="rateDetailsAppend()">Add</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false" onclick="rateDetailsRemoveit()">Remove</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:false" onclick="rateDetailsAccept()">Save</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:false" onclick="rateDetailsRefresh()">Refresh</a>
        </div>
            
        <r:script>     
            var editIndex = undefined;
            function rateDetailsEndEditing(){
                if (editIndex == undefined){return true}
                if ($('#dg-rateDetails').datagrid('validateRow', editIndex)){

        
                    //currency1Name
                    var ed = $('#dg-rateDetails').datagrid('getEditor', {index:editIndex,field:'currency1Code'});
                    var currency1Code = $(ed.target).combobox('getText');
                    $('#dg-rateDetails').datagrid('getRows')[editIndex]['currency1Name'] = currency1Code;
                    
        
                    //currency2Name
                    var ed = $('#dg-rateDetails').datagrid('getEditor', {index:editIndex,field:'currency2Code'});
                    var currency2Code = $(ed.target).combobox('getText');
                    $('#dg-rateDetails').datagrid('getRows')[editIndex]['currency2Code'] = currency2Code;
                    
        

                    $('#dg-rateDetails').datagrid('endEdit', editIndex);
                    var row = $('#dg-rateDetails').datagrid('getRows')[editIndex]
                    $.ajax({
                      type: "POST",
                      url: "/${meta(name:'app.name')}/rateDetail/jsave",
                      data: row,
                      success: function(data){ 
                           $('#dg-rateDetails').datagrid('reload');  
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
            function rateDetailsOnClickRow(index){
                if (editIndex != index){
                    if (rateDetailsEndEditing()){
                        $('#dg-rateDetails').datagrid('selectRow', index)
                                .datagrid('beginEdit', index);
                        editIndex = index;
                    } else {
                        $('#dg-rateDetails').datagrid('selectRow', editIndex);
                    }
                }
            }
            function rateDetailsAppend(){
                if (rateDetailsEndEditing()){
                    $('#dg-rateDetails').datagrid('appendRow',
                    {rateId: ${rateInstance.id? rateInstance.id : 0} });
                    editIndex = $('#dg-rateDetails').datagrid('getRows').length-1;
                    $('#dg-rateDetails').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
                }
            }
            function rateDetailsRemoveit(){
                if (editIndex == undefined){return}
                if (!confirm('Are you sure to delete this record?')){ return }

                var row = $('#dg-rateDetails').datagrid('getRows')[editIndex]
                console.log(row)

                $('#dg-rateDetails').datagrid('cancelEdit', editIndex)
                        .datagrid('deleteRow', editIndex);

                $.ajax({
                  type: "POST",
                  url: "/${meta(name:'app.name')}/rateDetail/jdelete/" + row['id'],
                  data: row,
                  success: function(data){ 
                      $('#dg-rateDetails').datagrid('reload');
                      if(!data.success)
                      {
                            alert(data.messages)
                      }
                  },
                  dataType: 'json'
                });             
                editIndex = undefined;
            }
            function rateDetailsAccept(){
                if (rateDetailsEndEditing()){
                    $('#dg-rateDetails').datagrid('acceptChanges');
                }
            }

            function rateDetailsRefresh(){
                $('#dg-rateDetails').datagrid('reload');
                editIndex = undefined;
            }
        </r:script>  
    

    


<%
}
%>
