<%@ page import="com.smanggin.Approval" %>

				<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
            
        <div title='<g:message code="transactionType.approvalDetails.label" default="Approval Details" />' style="padding:10px">

            <table id="dg-approvalDetails" class="easyui-datagrid" style="height:240px"
            data-options="
       		toolbar: '#tb-approvalDetails',    
            singleSelect:true, 
            collapsible:true, 
            onBeforeEdit: function(rowIndex, rowData) {
                
                var colcreatorId = $(this).datagrid('getColumnOption', 'creatorId');
                var colapproverId = $(this).datagrid('getColumnOption', 'approverId');
                var countryName = $(this).datagrid('getRows')[rowIndex]['countryName'];
            <g:if test="${transactionTypeInstance?.code !='RFP'}">                
                var collobCode = $(this).datagrid('getColumnOption', 'lobCode');
                var colbrandCode = $(this).datagrid('getColumnOption', 'brandCode');
                var lobCode = $(this).datagrid('getRows')[rowIndex]['lobCode'];


                collobCode.editor.type = 'combobox';
                collobCode.editor.options.valueField ='code';
                collobCode.editor.options.textField = 'code';
                collobCode.editor.options.url = '/${meta(name:'app.name')}/lob/jlist?masterField.name=country&masterField.id='+countryName;
                collobCode.editor.options.required ='true'
                
                colbrandCode.editor.type = 'combobox';
                colbrandCode.editor.options.valueField ='code';
                colbrandCode.editor.options.textField = 'code';
                colbrandCode.editor.options.url = '/${meta(name:'app.name')}/brand/jlist?country='+countryName+'&masterField.name=lob&masterField.id='+lobCode;
                colbrandCode.editor.options.required ='true'
            </g:if>    
                colcreatorId.editor.type = 'combobox';
                colcreatorId.editor.options.valueField ='login';
                colcreatorId.editor.options.textField = 'login';
                colcreatorId.editor.options.url = '/${meta(name:'app.name')}/user/jlist?country='+countryName;
                colcreatorId.editor.options.required ='true'

                colapproverId.editor = null;
              /*  colapproverId.editor.type = 'combobox';
                colapproverId.editor.options.valueField ='login';
                colapproverId.editor.options.textField = 'login';
                colapproverId.editor.options.url = '/${meta(name:'app.name')}/user/jlist?country='+countryName;
                colapproverId.editor.options.required ='true' */               
            },
            onClickRow: approvalDetailsOnClickRow,
            url:'/${meta(name:'app.name')}/approvalDetail/jlist?masterField.name=transactionType&masterField.id=${transactionTypeInstance?.id}'">
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
                                    	var u = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex, field:'creatorId'});
	                                    $(u.target).combobox('reload', '/${meta(name:'app.name')}/user/jlist?country='+rec.name);                                    

	                                    var c = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex, field:'approverId'});

                                    	$(c.target).combobox('reload', '/${meta(name:'app.name')}/user/jlist?country='+rec.name);


	                                    var a = $('#dg-approvalDetails').datagrid('getEditor', {index:editIndex, field:'lobCode'});
	                                    $(a.target).combobox('reload', '/${meta(name:'app.name')}/lob/jlist?masterField.name=country&masterField.id='+rec.name);                                    

	                                }                                    

                                }
                        }">Country</th>

                        <g:if test="${transactionTypeInstance?.code !='RFP'}">
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

	                                    $(a.target).combobox('reload', '/${meta(name:'app.name')}/brand/jlist?country='+country+'&masterField.name=lob&masterField.id='+rec.code);                                    
                                                
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
                        </g:if>     

                        <th data-options="field:'creatorId',width:200,
                            formatter:function(value,row){
                                return row.creatorId;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'login',
                                    textField:'login',
                                    url:'/${meta(name:'app.name')}/user/jlist',
                                    required:true,
                                   
                                }
                        }">Creator</th>

                        <th data-options="field:'noSeq',align:'right',formatter:formatNumber,  width:100,editor:{type:'numberbox',options:{precision:0}}">Sequential No</th>


                        	
                        <th data-options="field:'approverId',width:200,
                            formatter:function(value,row){
                                return row.approverId;
                            },
                            editor:{
                                type:'combobox',
                                options:{
                                    valueField:'login',
                                    textField:'login',
                                    url:'/${meta(name:'app.name')}/user/jlist',
                                    required:true,
                                   
                                }
                        }">Approver</th>
                        
                        
                        <th data-options="field:'isSequential',align:'right', width:100,editor:{type:'checkbox',options:{on:'1',off:'0'}}">Is Sequential</th>

                        <th data-options="field:'inActive',align:'right', width:100,editor:{type:'checkbox',options:{on:'1',off:'0'}}">InActive</th>

                        <th data-options="field:'dateInActive',align:'right', width:100">Date InActive</th>
                   
                    	<th data-options="field:'transactionTypeId',hidden:true">transactionType</th>

                                    
             
                    
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
                          $('#dg-approvalDetails').datagrid('reload');
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
                    {transactionTypeId: ${transactionTypeInstance.id? transactionTypeInstance.id : 0} });
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
                      $('#dg-approvalDetails').datagrid('reload');
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

            
        </r:script>  
    

    


<%
}
%>
