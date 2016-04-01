<%@ page import="com.smanggin.PurchaseOrder" %>
<!-- Chat box -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <i class="icon-comments"></i>
                  <h3 class="box-title"><g:message code="purchaseOrderInstance.pppComment.label" default="Log Feedback/Comment" /></h3>
                  
                </div>
                <div class="box-body">
                <div class="chat" id="chat-box">
                  	<g:each in="${purchaseOrderInstance?.purchaseOrderComments.sort{it.dateCreated}}" status="i" var="logChat">
	                  <!-- chat item -->
		                  <div class="item with-border">

		                    <img src="${resource(dir: 'images', file: 'user.png')}" alt="user image" class="online">
		                    <p class="message">
		                      <a href="#" class="name">
		                        <small class="text-muted pull-right"><i class="icon-time"></i> <g:formatDate date="${logChat?.dateCreated}" format="HH:mm"/></small>
		                        ${logChat?.createdBy}
		                      </a>
		                      ${logChat?.description}
		                  
		                  </div><!-- /.item -->
	                </g:each>  
	                  
                </div><!-- /.chat -->
                </div>
                <div class="box-footer">
                
                <g:textArea  class="form-control"
                name="comment"
                 placeholder="Type message..." 
                 rows="5" cols="40"
                 onKeyPress="return insertComment(this, event);" />
                  <!--<div class="input-group">
                    <input class="form-control" placeholder="Type message...">
                    <div class="input-group-btn">
                      <button class="btn btn-success"><i class="fa fa-plus"></i></button>
                    </div>
                  </div>-->
                </div>
              </div><!-- /.box (chat box) -->

<r:script>
	var itemContainer = $('#chat-box');
	
	itemContainer.slimScroll({
    	height: '250px',
    	alwaysVisible : true,
    	 start: 'bottom'
    	 
	});

	function appendItem(data){
		var html = '<div class="item with-border">';
        html +=  '<img src="${resource(dir: 'images', file: 'user.png')}" alt="user image" class="online">'
        html +=  '<p class="message">'
        html +=  '<a href="#" class="name">'
        html +=  '<small class="text-muted pull-right"><i class="icon-time"></i>'+data.dateCreated+'</small>'
        html +=  data.createdBy
        html +=  '</a>'
        html +=  data.description
        html +=  '</div>'	

        return html
	}

	function insertComment(myfield,e) 
    {
        var keycode;
        if (window.event) keycode = window.event.keyCode;
        else if (e) keycode = e.which;
        else return true;


        if (keycode == 13)
        {
            var description = myfield.value;
            var purchaseOrderId = ${purchaseOrderInstance?.id}
            

            $.ajax({
            	type: "POST",
				url: "/${meta(name:'app.name')}/purchaseOrderComment/jsave",
				data: {purchaseOrderId:purchaseOrderId,description:description},
				success: function(d){
					
					
					itemContainer.html('');
					$.each(d.datas, function(i, data) {
						var html = appendItem(data);
						var item = $(html).hide().fadeIn(800);    
						itemContainer.append(item);

					});	

		            
					var scrollTo_int = itemContainer.prop('scrollHeight') + 'px';
					itemContainer.slimScroll({
		                scrollTo : scrollTo_int,
		                height: '250px',
		                start: 'bottom',
		                alwaysVisible: true
		            });
					
				},
				error: function( req, status, err ) {
				    alert( 'something went wrong', status, err );
				}
			});

            myfield.value = '';
            
   		 return false;
        }
        else
            return true;
   	}	

</r:script>