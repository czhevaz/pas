<%@ page import="com.smanggin.PurchaseOrder" %>
<!-- Chat box -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <i class="icon-comments"></i>
                  <h3 class="box-title"><g:message code="purchaseOrderInstance.pppComment.label" default="Log feedback/Comment" /></h3>
                  
                </div>
                <div class="box-body">
                <div class="chat" id="chat-box">
                  	<g:each in="${purchaseOrderInstance?.purchaseOrderComments}" status="i" var="logChat">
	                  <!-- chat item -->
		                  <div class="item with-border">

		                    <img src="${resource(dir: 'images', file: 'user.png')}" alt="user image" class="online">
		                    <p class="message">
		                      <a href="#" class="name">
		                        <small class="text-muted pull-right"><i class="icon-time"></i> <g:formatDate date="${purchaseOrderInstance?.dateCreated}" format="HH:mm"/></small>
		                        ${logChat?.createdBy}
		                      </a>
		                      ${logChat?.description}
		                  
		                  </div><!-- /.item -->
	                </g:each>  
	                  
                </div><!-- /.chat -->
                </div>
                <div class="box-footer">
                <input class="form-control"
                 placeholder="Type message..." 
                 onKeyPress="return insertComment(this, event);" >
                  <!--<div class="input-group">
                    <input class="form-control" placeholder="Type message...">
                    <div class="input-group-btn">
                      <button class="btn btn-success"><i class="fa fa-plus"></i></button>
                    </div>
                  </div>-->
                </div>
              </div><!-- /.box (chat box) -->

<r:script>


	$('#chat-box').slimScroll({
    	height: '250px',
    	alwaysVisible : true,

    	 
	});

	function insertComment(myfield,e) 
    {
        var keycode;
        if (window.event) keycode = window.event.keyCode;
        else if (e) keycode = e.which;
        else return true;


        if (keycode == 13)
        {
            var code = myfield.value;
            var batchNo = null;
            var batchId = null;
            var palletId = null;
            
   		 return false;
        }
        else
            return true;
   	}	

</r:script>