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
				
				<!--<img class="logo" src="${resource(plugin: 'kickstart-with-bootstrap', dir:'kickstart/img', file:'grails.png')}" alt="${meta(name:'app.title')}" width="16px" height="16px"/> -->
				${meta(name:'app.title')}
				<small> v ${meta(name:'app.version')}</small>
			</a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">
		
		<ul class='nav navbar-nav' style='margin-left:100px'>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Transaction<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="dropdown-submenu">
						<a tabindex="-1" href="#">PPP</a>
						<ul class="dropdown-menu">
	                  		<g:each in="${com.smanggin.Country.list()}" status="i" var="country">
			                  	<li>
			                  		<g:link controller="${country?.domainPPP}">
										${country?.name}
									</g:link>
								</li>
			                  
							</g:each>
		                </ul>
					
					</li>
					<li class="controller">
						<g:link controller="PurchaseOrder">
							Purchase Order
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="Rfp" params="[trType: 'RFP']">
							RFP
						</g:link>
					</li>
					
              
				</ul>	
			</li>
<%
if(session.isAdmin == 'Yes') { 
%>
			
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Master Data<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<%
						if(session.userRole == 'ALL') { 
					%>
					<li class="controller">
						<g:link controller="Country">
							Country
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="Lob">
							LOB
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
							<g:message code="transactionType.label" default="Transaction Type" />
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
					
					<li class="controller">
						<g:link controller="ChartOfAccount">
							COA
						</g:link>
					</li>
					<%
						}else{ /* end if session.userRole */
					%>
					<li class="controller">
						<g:link controller="Supplier">
							Supplier
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="TransactionType">
							<g:message code="transactionType.label" default="Transaction Type" />
						</g:link>
					</li>
					
					<%
					}/* end if session.userRole */
					%>
				</ul>
			</li>

			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Configuration<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="controller">
						<g:link controller="AppSetting">
							System Setting
						</g:link>
					</li>
					<li class="divider"></li>
					<li class="controller">
						<g:link controller="Outbox">
							Outbox
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="Send">
							SentBox
						</g:link>
					</li>
				</ul>	
			</li>

			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Report<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="controller">
						<g:link controller="PurchaseOrder" action="report" params="[type:'pppBalanceReport',domain:'PppPhilippine']">
							PPP Balance Tracking PO
						</g:link>
					</li>
					<li class="divider"></li>
					<li class="controller">
						<g:link controller="PurchaseOrder" action="report" params="[type:'pppBalanceHistory',domain:'PppPhilippine']">
							PPP Balance History Tracking PO
						</g:link>
					</li>
					<li class="divider"></li>
					<li class="controller">
						<g:link controller="PurchaseOrder" action="report" params="[type:'purchaseBalanceReport', domain:'PurchaseOrder']" >
							Report PO Historical Transaction
						</g:link>
					</li>
					<li class="divider"></li>
					<li class="controller">
						<g:link controller="PurchaseOrder" action="report" params="[type:'poTrackingSummary', domain:'PurchaseOrder']" >
							PO Online Progress Tracking Summary 
						</g:link>
					</li>
					<li class="divider"></li>
					<li class="controller">
						<g:link controller="PurchaseOrder" action="report" params="[type:'rfpTrackingSummary', domain:'Rfp']" >
							RFP Online Progress Tracking Summary 
						</g:link>
					</li>
					
				</ul>	
			</li>
<%
}/* end if session.isadmin */
%>

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
						<span class="label label-info" id="notifsize"></span>
					</a>
					<ul class="dropdown-menu" role="menu" id="notifnuieu"></ul>
    			</li>
	 			<!-- <g:render template="/_menu/search"/> -->
				<!-- <g:render template="/_menu/admin"/>														
				<g:render template="/_menu/info"/> -->														
				<g:render template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
																		
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
	                list += "<li> <a id='notif-link' href='/${meta(name:"app.name")}/"+v.docName+"/show?id="+v.docId+"&isNew=false&notifId="+v.id+"' >"+v.docNumber+" ( "+v.state+" )</a></li>";
	            });

	            $('#notifnuieu').html("");
	            $('#notifnuieu').html(list);
	            $('#notifsize').text(datasize);
	        }
	    },"JSON");
	}

	
	
</r:script>
