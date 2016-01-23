<div id="table-ppp">
	<table class="table table-bordered  table-striped  table-hover margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="ppp.pppNumber.label" default="PPP Number" /></th>

				<th><g:message code="ppp.pppDescription.label" default="PPP Description" /></th>
				
				<th ><g:message code="ppp.lob.label" default="Lob" /></th>

				<th><g:message code="ppp.brand.label" default="Brand" /></th>

				<th><g:message code="ppp.requestor.label" default="Requestor" /></th>

				<th><g:message code="ppp.amount.label" default="PPP LIMIT(USD)" /></th>

				<th><g:message code="ppp.remain.label" default="PPP LIMIT REMAINING (USD)" /></th>
				
				<g:sortableColumn property="pppDate" title="${message(code: 'ppp.pppDate.label', default: 'PPP Date')}" />
											
			
			</tr>
		</thead>
		<tbody>
		
			<tr class="odd">
			
				<td><g:link controller="${session?.domainPPP}" action="show" id="${pppInstance?.id}">${pppInstance?.number}</g:link></td>

				<td>${pppInstance?.pppProgram}</td>

				<td>${pppInstance?.lob}</td>

				<td>${pppInstance?.brand}</td>

				<td>${pppInstance?.requestor}</td>


				<td style="text-align:right">
					<g:formatNumber number="${(pppInstance?.pppCost)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
				</td>
			
				<td style="text-align:right">
				
					<g:formatNumber number="${(pppInstance?.remainCreditLimit)}" type="number" maxFractionDigits="2" roundingMode="HALF_DOWN" />
				
				</td>

				<td><g:formatDate date="${pppInstance?.pppDate}" /></td>

				
			</tr>
		
		</tbody>
	</table>
</div>