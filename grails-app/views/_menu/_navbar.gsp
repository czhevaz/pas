<nav id="Navbar" class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="container-fluid">
	    <div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
			</button>
	
			<a class="navbar-brand" href="${createLink(uri: '/')}">
				<i class="icon-dashboard"></i>
				
				<!--<img class="logo" src="${resource(plugin: 'kickstart-with-bootstrap', dir:'kickstart/img', file:'grails.png')}" alt="${meta(name:'app.name')}" width="16px" height="16px"/> -->
				PAS
				<small> v${meta(name:'app.version')}</small>
			</a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">
		
		<ul class='nav navbar-nav' style='margin-left:100px'>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Transaction<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="controller">
						<g:link controller="pppPhilippine">
							Ppp
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="PurchaseOrder">
							Purchase Order
						</g:link>
					</li>
				</ul>	
			</li>
		
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Master Data<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="controller">
						<g:link controller="Country">
							Country
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="Lob">
							Lob
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="Brand">
							Brand
						</g:link>
					</li>
					
					<li class="controller">
						<g:link controller="Currency">
							Currency
						</g:link>
					</li>
					
					<li class="controller">
						<g:link controller="Rate">
							Exchange Rate
						</g:link>
					</li>
					
					<li class="controller">
						<g:link controller="Supplier">
							Supplier
						</g:link>
					</li>
					
					<li class="controller">
						<g:link controller="TransactionType">
							Transaction Type
						</g:link>
					</li>
					
					<li class="controller">
						<g:link controller="TransactionGroup">
							Transaction Group
						</g:link>
					</li>
				
					<li class="controller">
						<g:link controller="User">
							User
						</g:link>
					</li>
					
				</ul>
			</li>
		</ul>
		<!-- <ul class="nav navbar-nav">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Browse <b class="caret"></b></a>
				<ul class="dropdown-menu">
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                    	<g:link controller="${c.logicalPropertyName}">
							<g:if test="${c.fullName.contains('HomeController')}">
					    		<i class="icon-home"></i>
							</g:if>
							<g:elseif test="${c.fullName.contains('DemoPageController')}">
					    		<i class="icon-beaker"></i>
							</g:elseif>
							<g:elseif test="${c.fullName.contains('DbdocController')}">
					    		<i class="icon-sitemap"></i>
							</g:elseif>
                    		${c.fullName.substring(c.fullName.lastIndexOf('.')+1)}
                    	</g:link>
                    </li>
                    </g:each>
				</ul>
			</li>
		</ul>
		-->

	    	<ul class="nav navbar-nav navbar-right">
    			<li class="dropdown messages-menu">
    				<a class="dropdown-toggle" role="button" data-toggle="dropdown" data-target="#" href="#">
						<!-- TODO: Only show menu items based on permissions (e.g., Guest has no account page) -->
						<i class="icon-bell icon-white"></i>
						<span class="label label-warning" id="notifsize"></span>
					</a>
					<ul class="dropdown-menu" role="menu" id="notifnuieu"></ul>
    			</li>
	 			<!-- <g:render template="/_menu/search"/> -->
				<!-- <g:render template="/_menu/admin"/>														
				<g:render template="/_menu/info"/> -->														
				<g:render template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
				<g:render template="/_menu/language"/>														
		    </ul>			

		</div>
	</div>
</nav>

<r:script>

	checkNotif();

	var timernotif;
    var waitnotif = 20;
    clearInterval(timernotif);
    timernotif=setInterval("checkNotif()", 1000*waitnotif);

	function checkNotif(){
	    $.post('/${meta(name:"app.name")}/notif/checkNotif', function(data){
	    	
	        if(data.exist){
	            var datasize = data.data.length;

	            var list = "";
	            $.each(data.data, function(k, v){
	                list += "<li> <a id='notif-link' href='/${meta(name:"app.name")}/PurchaseOrder/show?id="+v.docId+"&isNew=false&notifId="+v.id+"' target='_blank'>"+v.docNumber+" ( "+v.state+" )</a></li>";
	            });

	            $('#notifnuieu').html("");
	            $('#notifnuieu').html(list);
	            $('#notifsize').text(datasize);
	        }
	    },"JSON");
	}

	
	
</r:script>
