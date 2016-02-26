<g:hiddenField id="pppNumber" name="pppNumber" value="${purchaseOrderInstance?.pppNumber}"/>
<g:hiddenField  name="pppCost" value="${purchaseOrderInstance?.pppCost}"/>


		            
<div class="col-sm-6">
		
		<div class="form-group  required">
		<label for="lob" class="col-sm-3 control-label"><g:message code="register.lob.label" default="Lob" /><span class="required-indicator">*</span></label>
		<div class="col-sm-9">
			<g:select id="lob" name="lob.code" from="${com.smanggin.Lob.list()}" optionKey="code"  value="${purchaseOrderInstance?.lob}" class="many-to-one form-control "/>
			
		</div>
	</div>
	<div class="form-group  required">
		<label for="brand" class="col-sm-3 control-label"><g:message code="register.brand.label" default="Brand" /><span class="required-indicator">*</span></label>
		<div class="col-sm-9">
			<g:select id="brand" name="brand.id" from="${com.smanggin.Brand.list()}" optionKey="code" optionValue ="code"  value="${purchaseOrderInstance?.brand}" class="many-to-one form-control "/>
		</div>
	</div>
	<div class="form-group  required">
		<label for="requestor" class="col-sm-3 control-label"><g:message code="register.requestor.label" default="Requestor" /><span class="required-indicator">*</span></label>
		<div class="col-sm-9">
			<g:select id="requestor" name="requestor" from="${com.smanggin.User.list()}" optionKey="name" optionValue ="name"  value="${params?.requestor}" class="many-to-one form-control chosen-select" noSelection="['': '']"/>
			
		</div>
	</div>

</div>
<div class ="col-sm-6">
	<div class="form-group required">
		<label for="pppDate" class="col-sm-2 control-label"><g:message code="register.year.label" default="year" /><span class="required-indicator">*</span></label>
		<div class="col-sm-4">
			<g:textField name="year" id="year" class="form-control" value="${params?.year}"/>
			
		</div>
	</div>
	<div class="form-group required">
		<label for="pppDate" class="col-sm-2 control-label"><g:message code="register.month.label" default="Month" /><span class="required-indicator">*</span></label>
		<div class="col-sm-4">
			<g:textField name="month" id="month" class="form-control" value="${params?.month}"/>
			
		</div>
	</div>
	<div class="form-group">
		<a class="btn btn-primary" id="search2" href="#" role="button" data-toggle="modal" data-target="#searchPpp">${message(code: 'default.button.Search.label', default: 'Search')}</a>	
		
	</div>
</div>

<div id="table-ppp">

	<table class="table table-bordered  table-striped  table-hover margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="ppp.pppNumber.label" default="PPP Number" /></th>
				
				<th ><g:message code="ppp.description.label" default="Description" /></th>

				<th ><g:message code="ppp.lob.label" default="Lob" /></th>

				<th><g:message code="ppp.brand.label" default="Brand" /></th>

				<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

				<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

				<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>
				
				<th><g:message code="ppp.amountTotal.label" default="PPP LIMIT(USD)" />(${baseCurrency.code})</th>

				<th><g:message code="ppp.remainTotal.label" default="PPP LIMIT REMAINING (USD)" />(${baseCurrency.code}) </th>

				<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'PPP Date')}" />
											
			
			</tr>
		</thead>
		<tbody>
			<tr class="odd">

				<td><g:link controller="${purchaseOrderInstance?.country}" action="show" id="${purchaseOrderInstance?.pppNumber}">${pppInstance?.pppNumber}</g:link></td>

				<td>${pppInstance?.pppDescription}</td>

				<td>${pppInstance?.lobName}</td>

				<td>${pppInstance?.brandName}</td>

				<td>${pppInstance?.requestorName}</td>


				<td style="text-align:right">
					<g:formatNumber number="${(pppInstance?.amount)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
				</td>
			
				<td style="text-align:right">
					<span id="remain">
					<g:formatNumber number="${(pppInstance?.remainCreditLimit)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
					</span>
				</td>

				<td style="text-align:right">
					<g:formatNumber number="${(pppInstance?.ammountTotalPPP)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
				</td>
			
				<td style="text-align:right">
					<span id="remainTotal">
					<g:formatNumber number="${(pppInstance?.remainCreditLimitTotalPPP)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
					</span>
				</td>

				<td><g:formatDate date="${pppInstance?.pppDate}" format="yyyy-MM-dd"/></td>

				
			</tr>
		
		</tbody>
	</table>
</div><!--/#table-ppp-->