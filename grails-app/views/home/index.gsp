<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

	<section id="intro" class="first">
		
	<div class="row">
	    <div class="col-lg-3 col-xs-6">
	      <!-- small box -->
	      <div class="small-box bg-aqua">
	        <div class="inner">
	          <h3><span id="ppp"> 0 </span></h3>
	          <p>Total PPP</p>
	        </div>
	        <div class="icon">
	          <i class="icon-folder-open"></i>
	        </div>
	        <a href="${createLink(action:'list',controller:'ppp')}" class="small-box-footer">More info <i class="icon-circle-arrow-right"></i></a>
	      </div>
	    </div><!-- ./col -->
	    <div class="col-lg-3 col-xs-6">
	      <!-- small box -->
	      <div class="small-box bg-green">
	        <div class="inner">
	          <h3><span id="purchaseOrder"> 0 </span></h3>
	          <p>Total Purchase Order </p>
	        </div>
	        <div class="icon">
	          <i class="icon-shield"></i>
	        </div>
	        <a href="${createLink(action:'list',controller:'purchaseOrder')}" class="small-box-footer">More info <i class="icon-circle-arrow-right"></i></a>
	      </div>
	    </div><!-- ./col -->
	    
	</div>

		
	</section>

	<r:script>
		$(document).ready(function () {
			<!-- ppp -->
			$.post('/${meta(name:'app.name')}/${session.domainPpp}/jlist', function(data) {
				
				$('#ppp').text(data.length);
				
			});
			
			<!-- purchaseOrder -->
			$.post('/${meta(name:'app.name')}/purchaseOrder/jlist', function(data) {
				
				$('#purchaseOrder').text(data.length);
				
			});
		});
	</r:script>
</body>

</html>
