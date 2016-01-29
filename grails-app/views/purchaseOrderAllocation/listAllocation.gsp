
<%@ page import="com.smanggin.PurchaseOrder" %>

<!doctype html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="kickstart" />
    <g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'PurchaseOrder')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
    <g:set var="canCreate" value="true" scope="request" />
    <g:set var="canDelete" value="true" scope="request" />
</head>

<body>

<section id="show-purchaseOrder" class="first">
    <div class="row">
        <div class="col-lg-12">
            <div class="box box-primary clearfix">
                <div class="box-body clearfix">

                    <!-- Allocation -->
                    <div title='<g:message code="purchaseOrder.purchaseOrderAllocation.label" default="Allocation"/>'  style="padding:10px">
                       <table id="dg-poAllocation" class="easyui-datagrid"  style="height:240px"
                                data-options="
                                singleSelect:true, 
                                collapsible:true, 
                                rownumbers: true,  
                               // toolbar: '#tb-attachment',          
                                url:'/${meta(name:'app.name')}/purchaseOrderAllocation/jlist?masterField.name=purchaseOrder&masterField.id=${purchaseOrderInstance?.id}'">
                        
                            <thead>
                                <tr>
                                    <th data-options="field:'brand',width:200">Brand</th> 
                                    <th data-options="field:'value1',width:100">value1</th>
                                    <th data-options="field:'value2',width:100">value2</th>          
                                </tr>
                            </thead>    
                        </table>        

                    </div><!-- /.Allocation -->

                </div><!--/.box-body -->    
                
            </div><!--/.box box-primary --> 
            
        </div>
        <r:script>
        /*  $('#reject').on('click', function(){
                var r= prompt('note');
                $('#rejectNotes').val(r);        
            });*/
        </r:script>
    </div><!--/.row -->
</section>

</body>

</html>
