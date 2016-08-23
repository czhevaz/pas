<%@ page import="com.smanggin.PppPhilippine" %>

				<%
if(actionName=='edit' || actionName=='show') { 
%>
<div class="easyui-tabs table" style="height:300px">
	<!-- Attachment -->
        <div title='<g:message code="pppPhilippine.pppDetail.label" default="Cost Detail"/>'  style="padding:10px">
	       <table id="dg-attachment" class="easyui-datagrid"  style="height:240px"
	                data-options="
	                singleSelect:true, 
	                collapsible:true, 
	                rownumbers: true,  
	               
	                url:'/${meta(name:'app.name')}/pppDetail/jlist?pppNumber=${pppPhilippineInstance?.number}'">
	        
	            <thead>
	                <tr>
	                    <th data-options="field:'pppNumber',width:200">PPP Number</th> 
	                    <th data-options="field:'brand',width:100">brand </th>          
	                    <th data-options="field:'costDetail',width:200">Cost Detail</th> 
	                    <th data-options="field:'poCommitted',width:200">Po Committed</th> 
	                    <th data-options="field:'balanceWriteOff',width:200">PPP BalanceWriteoff</th> 
	                </tr>
	            </thead>    
	        </table>        

	    </div><!-- /.Attachment -->
    
        
</div>


<%
}
%>
