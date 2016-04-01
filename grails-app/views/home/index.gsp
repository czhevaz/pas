<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.title')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

	<section id="intro" class="first">
		
	<div class="row" id="document">
	    <div id='rejected'> </div>
	    <div id='approved'> </div>
	    <div id='waiting'> </div>
	    
	</div>
	<div class="row" id="document2">
	    <div id='rejectedRfp'> </div>
	    <div id='approvedRfp'> </div>
	    <div id='waitingRfp'> </div>
	</div>
		
	</section>

	<r:script>
	
			  
		 	
		<!-- purchaseOrder  Rejected -->
		$.post('/${meta(name:'app.name')}/purchaseOrder/jlist',{state:'Rejected'}, function(data) {
			
				if(data.length){
					var title = 'PO Rejected';
					var count = data.length;
					var icon = 'icon-shield';
					var color = 'bg-red';
					var state = "Rejected"
					var link = "${createLink(action:'list',controller:'purchaseOrder',params:['state':'Rejected'])}"
					var html = addBox(title,count,icon,color,link);		
					$('#rejected').html(html);			
				}
			
		});

		<!-- purchaseOrder  Approved  -->
		$.post('/${meta(name:'app.name')}/purchaseOrder/jlist',{state:'Approved'}, function(data) {
			
				if(data.length){
					var title = 'PO Approved';
					var count = data.length;
					var icon = 'icon-folder';
					var color = 'bg-green';
					var state = "Waiting Approval"
					var link = "${createLink(action:'list',controller:'purchaseOrder',params:['state':'Approved'])}"
					var html = addBox(title,count,icon,color,link);		
					$('#approved').html(html);			
				}
			
		});

		<!-- purchaseOrder  Waiting Approve -->
		$.post('/${meta(name:'app.name')}/purchaseOrder/jlist',{state:'Waiting Approval'}, function(data) {
			
				if(data.length){
					var title = 'PO Waiting for Approval';
					var count = data.length;
					var icon = 'icon-folder';
					var color = 'bg-yellow';
					var state = "Waiting Approval"
					var link = "${createLink(action:'list',controller:'purchaseOrder',params:['state':'Waiting Approval'])}"
					var html = addBox(title,count,icon,color,link);		
					$('#waiting').html(html);			
				}
			
		});

		<!-- purchaseOrder  Rejected -->
		$.post('/${meta(name:'app.name')}/rfp/jlist',{state:'Rejected'}, function(data) {
			
				if(data.length){
					var title = 'RFP Rejected';
					var count = data.length;
					var icon = 'icon-shield';
					var color = 'bg-red';
					var state = "Rejected"
					var link = "${createLink(action:'list',controller:'Rfp',params:['state':'Rejected'])}"
					var html = addBox(title,count,icon,color,link);		
					$('#rejectedRfp').html(html);			
				}
			
		});

	
		<!-- purchaseOrder  Approved  -->
		$.post('/${meta(name:'app.name')}/rfp/jlist',{state:'Approved'}, function(data) {
			
				if(data.length){
					var title = 'RFP Approved';
					var count = data.length;
					var icon = 'icon-folder';
					var color = 'bg-green';
					var state = "Waiting Approval"
					var link = "${createLink(action:'list',controller:'Rfp',params:['state':'Approved'])}"
					var html = addBox(title,count,icon,color,link);		
					$('#approvedRfp').html(html);			
				}
			
		});

		<!-- Rfp  Waiting Approve -->
		$.post('/${meta(name:'app.name')}/rfp/jlist',{state:'Waiting Approval'}, function(data) {
			
				//if(data.length){
					var title = 'RFP Waiting for Approval';
					var count = data.length;
					var icon = 'icon-folder';
					var color = 'bg-yellow';
					var state = "Waiting Approval"
					var link = "${createLink(action:'list',controller:'Rfp',params:['state':'Waiting Approval'])}"
					var html = addBox(title,count,icon,color,link);		
					$('#waitingRfp').html(html);			
				//}
			
		});
	

		function addBox(title,count,icon,color,link){
			
			var html = '<div class="col-lg-3 col-xs-6">' ;
				html += '<div class="small-box '+color+'">';
				html += '<div class="inner">';
				html += '<h3><span id="purchaseOrder"> '+count+'</span></h3>';
				html += '<p><b>'+title+'</b></p>';
				html += '</div>';
				html += '<div class="icon"><i class="'+icon+'"></i></div>';
				html += '<a href="'+link+'" class="small-box-footer">More info <i class="icon-circle-arrow-right"></i></a>';
				html += '</div>';
				html += '</div>';        

			return html	
		    
		}
	</r:script>
</body>

</html>
