<!-- 
This is the standard dialog that initiates the delete action.
-->

<!-- Modal dialog -->
<div id="confirmModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="DeleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="DeleteModalLabel"><g:message code="default.button.confirm.title" default="Message"/> ${entityName}</h3>
			</div>
			<div class="modal-body">
				<p><span id="message"></span></p>
			</div>
			<div class="modal-footer">
				<g:form>
					<button class="btn" data-dismiss="modal" aria-hidden="true"><g:message code="default.button.OK.label" default="OK"/></button>
				</g:form>
			</div>
		</div>
	</div>
</div>