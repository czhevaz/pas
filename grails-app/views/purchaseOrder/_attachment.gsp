<div id="uploadPO" class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="uploadPOLabel" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        	<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h4 class="modal-title" id="uploadPOLabel">Upload</h4>
        	</div><!--/.modal-header -->
    		
    		<div class="modal-body">
    			<span class="btn btn-success fileinput-button">
			        <i class="glyphicon glyphicon-plus"></i>
			        <span>Select files...</span>
			        <!-- The file input field used as target for the file upload widget -->
			        <input id="fileupload" type="file" name="files" multiple>
			    </span>
    			<br>
			    <br>
			    <!-- The global progress bar -->
			    <div id="progress" class="progress">
			        <div class="progress-bar progress-bar-success"></div>
			    </div>
			    <!-- The container for the uploaded files -->
			    <div id="files" class="files"></div>
			    <br>
    		</div><!--/.modal-body -->
    	
        </div><!--/.modal-content -->
    </div><!--/.modal-dialog -->
</div><!--/.modal fade -->        
<r:script>
	$(function () {
	    'use strict';
	    // Change this to the location of your server-side upload handler:
	    
	    var url = '/${meta(name:'app.name')}/purchaseOrder/upload?id=${purchaseOrderInstance.id}';            
	    $('#fileupload').fileupload({
	        url: url,
	        dataType: 'json',
	        done: function (e, data) {
	            /*$.each(data.result.files, function (index, file) {
	                $('<p/>').text(file.name).appendTo('#files');
	            });*/
	            $('#uploadPO').modal('hide');
	             $('#dg-attachment').datagrid('reload');
	        },
	        progressall: function (e, data) {
	        	console.log(data);
	            var progress = parseInt(data.loaded / data.total * 100, 10);
	            $('#progress .progress-bar').css(
	                'width',
	                progress + '%'
	            );
	        }
	    }).prop('disabled', !$.support.fileInput)
	        .parent().addClass($.support.fileInput ? undefined : 'disabled');
	});

</r:script>