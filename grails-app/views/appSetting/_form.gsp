<%@ page import="com.smanggin.AppSetting" %>



			<div class="form-group fieldcontain ${hasErrors(bean: appSettingInstance, field: 'code', 'error')} required">
				<label for="code" class="col-sm-3 control-label"><g:message code="appSetting.code.label" default="Code" /><span class="required-indicator">*</span></label>
				<div class="col-sm-5">
					<g:textField name="code" class="form-control" required="" value="${appSettingInstance?.code}" readonly="true"/>
					<span class="help-inline">${hasErrors(bean: appSettingInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: appSettingInstance, field: 'val', 'error')} ">
				<label for="val" class="col-sm-3 control-label"><g:message code="appSetting.val.label" default="Val" /></label>
				<div class="col-sm-5">
					<g:textArea class="form-control" name="val"  value="${appSettingInstance?.val}" rows="5" cols="40" placeholder="Type message..."/>

					
					<span class="help-inline">${hasErrors(bean: appSettingInstance, field: 'val', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: appSettingInstance, field: 'unit', 'error')} ">
				<label for="unit" class="col-sm-3 control-label"><g:message code="appSetting.unit.label" default="Unit" /></label>
				<div class="col-sm-4">
					<g:textField name="unit" class="form-control" value="${appSettingInstance?.unit}"/>
					<span class="help-inline">${hasErrors(bean: appSettingInstance, field: 'unit', 'error')}</span>
				</div>
			</div>



