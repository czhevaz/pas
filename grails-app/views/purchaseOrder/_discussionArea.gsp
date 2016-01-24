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
		                        <small class="text-muted pull-right"><i class="icon-time"></i> <g:formatDate date="${purchaseOrderInstance?.dateCreated}" format="yyyy-MM-dd HH:mm"/></small>
		                        ${logChat?.createdBy}
		                      </a>
		                      ${logChat?.description}
		                  
		                  </div><!-- /.item -->
	                </g:each>  
	                  
                </div><!-- /.chat -->
                </div>
                <div class="box-footer">
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

	console.log($('#chat-box').slimScroll({
    	height: '250px',
    	
	}));

</r:script>