<!-- 
This menu is used to show function that can be triggered on the content (an object or list of objects).
-->

<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<div class ="row">
<div class="col-lg-6">
<g:if test="${	params.controller != null
			&&	params.controller != ''
			&&	params.controller != 'home'
}">
	<ul id="Menu" class="nav nav-pills">

		<g:set var="entityName" value="${message(code: params.controller+'.label', default: params.controller.substring(0,1).toUpperCase() + params.controller.substring(1).toLowerCase())}" />
		
			<li class="${ params.action == "list" ? 'active' : '' }">
				<g:link action="list"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]"/></g:link>
			</li>
		
		<g:if test="${canCreate}" >
			<li class="${ params.action == "create" ? 'active' : '' }">
				<g:link action="create"><i class="icon-plus"></i> <g:message code="default.new.label"  args="[entityName]"/></g:link>
			</li>
		</g:if>
		<g:if test="${ params.action == 'show' || params.action == 'edit' }">
			<!-- the item is an object (not a list) -->
			<g:if test="${canEdit}" >
			<li class="${ params.action == "edit" ? 'active' : '' }">
				<g:if test="${ params.controller == 'country' }">
					<g:link action="edit" params="['name':countryInstance.name]"><i class="icon-pencil"></i> <g:message code="default.edit.label"  args="[entityName]"/></g:link>
				</g:if>
				<g:elseif test="${ params.controller == 'currency' }">
					<g:link action="edit" params="['code':currencyInstance.code]"><i class="icon-pencil"></i> <g:message code="default.edit.label"  args="[entityName]"/></g:link>
				</g:elseif>
				<g:else>

					<g:link action="edit" id="${params.id}"><i class="icon-pencil"></i> <g:message code="default.edit.label"  args="[entityName]"/></g:link>
				</g:else>
				
			</li>
			</g:if>
			<g:if test="${canDelete}" >
			<li class="">
				<g:render template="/_common/modals/deleteTextLink"/>
			</li>
			</g:if>
		</g:if>
		
	</ul>


</g:if>
</div >
<div class="col-lg-6">
	<ul id="Menu" class="nav nav-pills pull-right">
		<g:if test="${ (params.action == 'show' || params.action == 'edit') && params.controller == 'purchaseOrder' }">
		<li class="">
			<g:form method="post"  controller="purchaseOrder" action="printPdf" target="_blank" class="form-horizontal" >
				<g:hiddenField name="id"  value="${params.id}" />
				<button type="submit" class="btn btn-danger" id="printPdf" style="display:block;">
					<img src="${resource(dir: 'images/icon', file: 'pdf.png')}" width="20" /> Print To Pdf
				</button>
			</g:form>
		</li>
		<li class="">
			<g:form method="post"  controller="purchaseOrder" action="downloadExcel" target="_blank" class="form-horizontal" >
				<g:hiddenField name="id"  value="${params.id}" />
				<button type="submit" class="btn btn-primary" id="downloadExcel" style="display:block;">
					<img src="${resource(dir: 'images/icon', file: 'xls.png')}" width="20" /> download excel
				</button>
			</g:form>
		</li>
		</g:if>
		<g:if test="${ (params.action == 'show' || params.action == 'edit') && params.controller == 'rfp' }">
		<li class="">
			<g:form method="post"  controller="rfp" action="printPdf" target="_blank" class="form-horizontal" >
				<g:hiddenField name="id"  value="${params.id}" />
				<button type="submit" class="btn btn-danger" id="printPdf" style="display:block;">
					<img src="${resource(dir: 'images/icon', file: 'pdf.png')}" width="20" /> Print To Pdf
				</button>
			</g:form>
		</li>
		<li class="">
			<g:form method="post"  controller="rfp" action="downloadExcel" target="_blank" class="form-horizontal" >
				<g:hiddenField name="id"  value="${params.id}" />
				<button type="submit" class="btn btn-primary" id="downloadExcel" style="display:block;">
					<img src="${resource(dir: 'images/icon', file: 'xls.png')}" width="20" /> Print To Pdf
				</button>
			</g:form>
		</li>
		</g:if>
	</ul>	
	
</div>
</div>