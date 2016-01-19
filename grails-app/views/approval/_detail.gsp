<%@ page import="com.smanggin.Approval" %>

				<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
    
    
    
    
        
        <div title='<g:message code="approval.approvalDetails.label" default="Approval Details" />' style="padding:10px">

            <table id="dg-approvalDetails" class="easyui-datagrid" style="height:240px"
            data-options="
            view:detailview,
            singleSelect:true, 
            collapsible:true, 
            onClickRow: approvalDetailsOnClickRow,
            toolbar: '#tb-approvalDetails',
            detailFormatter:function(index,row){
            	return initTable(index);
        	},
        	onExpandRow:function(index,row){
            	var ddv = $(this).datagrid('getRowDetail',index).find('table#dg-appUser-'+index);
            	var lastIndex;
            	ddv.datagrid({
            		url:'/${meta(name:'app.name')}/approvalDetailUser/jlist?masterField.name=approvalDetail&masterField.id='+row.id,
                	singleSelect:true,
                	toolbar: [{
		                    text:'Add New',
		                    iconCls:'icon-add',
		                    handler:function(){
		                        ddv.datagrid('endEdit', lastIndex);
		                        ddv.datagrid('appendRow',{
		                            userId:'',
		                            approvalDetailId:row.id,           
		                        });
		                        lastIndex = $('table#dg-appUser-'+index).datagrid('getRows').length-1;
		                        ddv.datagrid('selectRow', lastIndex);
		                        ddv.datagrid('beginEdit', lastIndex);
		                    },
		                },
		             ],
		            rownumbers:true,
	                loadMsg:'',
	                height:'auto',
	                columns:[[
	                    {field:'approvalDetailId',hidden:true,title:'line'},
	                    
	                    {field:'userId',title:'user',editor:{type:'numberbox',options:{precision:6}}}
	                ]],
	                
	                onLoadSuccess:function(data){

	                    console.log('data');
	                    console.log(data);
	                    setTimeout(function(){
	                        $('#dg-salesOrderItems').datagrid('fixDetailRowHeight',index);
	                    },0);
	                }   
            	});
            	ddv.datagrid('enableCellEditing');
            	$('#dg-approvalDetails').datagrid('fixDetailRowHeight',index);
            },
            url:'/${meta(name:'app.name')}/approvalDetail/jlist?masterField.name=approval&masterField.id=${approvalInstance?.id}'">
                <thead>
                    <tr>
                         
                        <th data-options="field:'countryName',width:200,
                            formatter:function(value,row){
                                return row.countryName;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'name',
                                    textField:'name',
                                    url:'/${meta(name:'app.name')}/country/jlist',
                                    required:true,
                                    onSelect: function(rec){

	                                    var a = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex, field:'lobCode'});
	                                    $(a.target).combobox('reload', '/${meta(name:'app.name')}/lob/jlist?masterField.name=country&masterField.id='+rec.name);                                    

	                                }                                    

                                }
                        }">Country</th>

                        <th data-options="field:'lobCode',width:200,
                            formatter:function(value,row){
                                return row.lobCode;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'code',
                                    textField:'code',
                                    url:'/${meta(name:'app.name')}/lob/jlist',
                                    required:true,
                                    onSelect: function(rec){
                                    	var c = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex, field:'countryName'});
                                    	var country = $(c.target).combobox('getValue');

	                                    var a = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex, field:'brandCode'});

	                                    $(a.target).combobox('reload', '/${meta(name:'app.name')}/brand/jlist?lobCode='+rec.code+'&masterField.name=country&masterField.id='+country);                                    

	                                }
                                }
                        }">Lob</th>
                        
                        <th data-options="field:'brandCode',width:200,
                            formatter:function(value,row){
                                return row.brandCode;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'code',
                                    textField:'code',
                                    url:'/${meta(name:'app.name')}/brand/jlist',
                                    required:true,
                                   
                                }
                        }">Brand</th>
                             
                        
                        
                        
                        <th data-options="field:'isSequential',align:'right', width:100,editor:{type:'checkbox',options:{on:'1',off:'0'}}">Is Sequential</th>
                   
                    	<th data-options="field:'approvalId',hidden:true">Approval</th>

                                    
                        
                        
                        

                    
                    </tr>
                </thead>
            </table>
        </div> 

        
    
        
    
</div>



    

        <div id="tb-approvalDetails" style="height:auto">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:false" onclick="approvalDetailsAppend()">Add</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:false" onclick="approvalDetailsRemoveit()">Remove</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:false" onclick="approvalDetailsAccept()">Save</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:false" onclick="approvalDetailsRefresh()">Refresh</a>
        </div>
            
        <r:script>     
            var editIndex = undefined;
            function approvalDetailsEndEditing(){
                if (editIndex == undefined){return true}
                if ($('#dg-approvalDetails').datagrid('validateRow', editIndex)){

        
                    //countryName
                    var ed = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex,field:'countryName'});
                    var countryName = $(ed.target).combobox('getText');
                    $('#dg-approvalDetails').datagrid('getRows')[editIndex]['countryName'] = countryName;
                    
        

                    $('#dg-approvalDetails').datagrid('endEdit', editIndex);
                    var row = $('#dg-approvalDetails').datagrid('getRows')[editIndex]
                    $.ajax({
                      type: "POST",
                      url: "/${meta(name:'app.name')}/approvalDetail/jsave",
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
            function approvalDetailsOnClickRow(index){
                if (editIndex != index){
                    if (approvalDetailsEndEditing()){
                        $('#dg-approvalDetails').datagrid('selectRow', index)
                                .datagrid('beginEdit', index);
                        editIndex = index;
                    } else {
                        $('#dg-approvalDetails').datagrid('selectRow', editIndex);
                    }
                }
            }
            function approvalDetailsAppend(){
                if (approvalDetailsEndEditing()){
                    $('#dg-approvalDetails').datagrid('appendRow',
                    {approvalId: ${approvalInstance.id? approvalInstance.id : 0} });
                    editIndex = $('#dg-approvalDetails').datagrid('getRows').length-1;
                    $('#dg-approvalDetails').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
                }
            }
            function approvalDetailsRemoveit(){
                if (editIndex == undefined){return}
                if (!confirm('Are you sure to delete this record?')){ return }

                var row = $('#dg-approvalDetails').datagrid('getRows')[editIndex]
                console.log(row)

                $('#dg-approvalDetails').datagrid('cancelEdit', editIndex)
                        .datagrid('deleteRow', editIndex);

                $.ajax({
                  type: "POST",
                  url: "/${meta(name:'app.name')}/approvalDetail/jdelete/" + row['id'],
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
            function approvalDetailsAccept(){
                if (approvalDetailsEndEditing()){
                    $('#dg-approvalDetails').datagrid('acceptChanges');
                }
            }

            function approvalDetailsRefresh(){
                $('#dg-approvalDetails').datagrid('reload');
                editIndex = undefined;
            }

            function initTable(index){
            	return '<div style="padding:2px"><table id="dg-appUser-'+index+'" class="ddv" ></table></div>';
        	}
        </r:script>  
    

    


<%
}
%>
