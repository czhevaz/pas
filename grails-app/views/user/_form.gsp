<%@ page import="com.smanggin.User" %>



			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} required">
				<label for="login" class="col-sm-3 control-label"><g:message code="user.login.label" default="Login" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:textField name="login" class="form-control" required="" value="${userInstance?.login}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'login', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
				<label for="password" class="col-sm-3 control-label"><g:message code="user.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="col-sm-9">
					<g:textField name="password" class="form-control" required="" value="${userInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="col-sm-3 control-label"><g:message code="user.enabled.label" default="Enabled" /></label>
				<div class="col-sm-9">
					<bs:checkBox name="enabled" value="${userInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'country', 'error')} ">
				<label for="country" class="col-sm-3 control-label"><g:message code="user.country.label" default="Country" /></label>
				<div class="col-sm-9">
					<g:textField name="country" class="form-control" value="${userInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
				<label for="email" class="col-sm-3 control-label"><g:message code="user.email.label" default="Email" /></label>
				<div class="col-sm-9">
					<g:textField name="email" class="form-control" value="${userInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'status', 'error')} ">
				<label for="status" class="col-sm-3 control-label"><g:message code="user.status.label" default="Status" /></label>
				<div class="col-sm-9">
					<g:field type="number" name="status" value="${userInstance.status}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'status', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'access', 'error')} ">
				<label for="access" class="col-sm-3 control-label"><g:message code="user.access.label" default="Access" /></label>
				<div class="col-sm-9">
					<g:textField name="access" class="form-control" value="${userInstance?.access}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'access', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'approver', 'error')} ">
				<label for="approver" class="col-sm-3 control-label"><g:message code="user.approver.label" default="Approver" /></label>
				<div class="col-sm-9">
					<g:textField name="approver" class="form-control" value="${userInstance?.approver}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'approver', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'isAdmin', 'error')} ">
				<label for="isAdmin" class="col-sm-3 control-label"><g:message code="user.isAdmin.label" default="Is Admin" /></label>
				<div class="col-sm-9">
					<g:textField name="isAdmin" class="form-control" value="${userInstance?.isAdmin}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'isAdmin', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'isMaster', 'error')} ">
				<label for="isMaster" class="col-sm-3 control-label"><g:message code="user.isMaster.label" default="Is Master" /></label>
				<div class="col-sm-9">
					<g:textField name="isMaster" class="form-control" value="${userInstance?.isMaster}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'isMaster', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
				<label for="name" class="col-sm-3 control-label"><g:message code="user.name.label" default="Name" /></label>
				<div class="col-sm-9">
					<g:textField name="name" class="form-control" value="${userInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} ">
				<label for="role" class="col-sm-3 control-label"><g:message code="user.role.label" default="Role" /></label>
				<div class="col-sm-9">
					<g:textField name="role" class="form-control" value="${userInstance?.role}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'role', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'role1', 'error')} ">
				<label for="role1" class="col-sm-3 control-label"><g:message code="user.role1.label" default="Role1" /></label>
				<div class="col-sm-9">
					<g:textField name="role1" class="form-control" value="${userInstance?.role1}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'role1', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'role2', 'error')} ">
				<label for="role2" class="col-sm-3 control-label"><g:message code="user.role2.label" default="Role2" /></label>
				<div class="col-sm-9">
					<g:textField name="role2" class="form-control" value="${userInstance?.role2}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'role2', 'error')}</span>
				</div>
			</div>

			<div class="form-group fieldcontain ${hasErrors(bean: userInstance, field: 'sex', 'error')} ">
				<label for="sex" class="col-sm-3 control-label"><g:message code="user.sex.label" default="Sex" /></label>
				<div class="col-sm-9">
					<g:textField name="sex" class="form-control" value="${userInstance?.sex}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'sex', 'error')}</span>
				</div>
			</div>



