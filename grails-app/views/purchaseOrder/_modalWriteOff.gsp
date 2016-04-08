<!-- 
This is the standard dialog that initiates the delete action.
-->

<!-- Modal dialog -->
<div id="modalWriteOff" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="DeleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    	<g:form method="post" class="form-horizontal" >
				<g:hiddenField name="id" value="${purchaseOrderInstance?.id}" />
				<g:hiddenField name="version" value="${purchaseOrderInstance?.version}" />
				<g:hiddenField name="updatedBy" value="${session.user}"/>
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="DeleteModalLabel"><g:message code="default.button.writeOff.title" default="Message"/> ${entityName}</h3>
			</div>
			<div class="modal-body">
				<p><span id="message"></span></p>
				<div class="row">
				<div class="col-lg-12">

				
					<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')} ">
						<label for="rate" class="col-sm-3 control-label"><g:message code="purchaseOrder.amountwo.label" default="Amount to be Write Off" /> ( ${purchaseOrderInstance?.currency1?.code} )</label>
						<div class="col-sm-4">
							<g:field type="number" name="woValue1" class="form-control" step="any" value="${formatNumber(number:purchaseOrderInstance?.PORemain1?:0, format: '#0.00')}" />
							
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'woValue1', 'error')}</span>
						</div>
					</div>
					<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')} ">
						<label for="rate" class="col-sm-3 control-label"><g:message code="purchaseOrder.amountwo.label" default="Amount to be Write Off" /> ( ${purchaseOrderInstance?.currency2?.code} )</label>
						<div class="col-sm-4">
							<g:field type="number" name="woValue2" class="form-control" step="any" value="${formatNumber(number:purchaseOrderInstance?.PORemain2?:0, format: '#0.00')}"/>
							
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'woValue2', 'error')}</span>
						</div>
					</div>
					<div class="form-group fieldcontain ${hasErrors(bean: purchaseOrderInstance, field: 'rate', 'error')} ">
						<label for="rate" class="col-sm-3 control-label"><g:message code="purchaseOrder.woNotes.label" default="Notes" /></label>
						<div class="col-sm-4">
						
							<g:textArea class="form-control" name="woNotes" value="${purchaseOrderInstance?.woNotes}" rows="5" cols="40" required=""/>
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'woNotes', 'error')}</span>
						</div>
					</div>
				</div>
				</div>
			</div>
			<div class="modal-footer">
					<g:actionSubmit id="reject" class="btn btn-primary btn-sm" action="actionWriteOff" value="${message(code: 'default.button.rejected.label', default: 'OK')}" />
			</div>
		</g:form>	
		</div>
	</div>
</div>
<r:script>
	$("#woValue1").keyup(function(){
		
    	var value=$(this).val();
    	var outStandingPO = ${purchaseOrderInstance?.PORemain1};
    	if(value > outStandingPO){
    		alert( 'cannot Large Than Oustanding PO ');
    	}
    	var outStandingPO2 = value/${purchaseOrderInstance.rate} ;
    	var round = Math.round(outStandingPO2 * 100) / 100
    	$("#woValue2").val(round);
	});
</r:script>