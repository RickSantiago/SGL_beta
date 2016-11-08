<%@ page import="sgl_beta.Cidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="section">
		<div class="nav center" role="navigation">
			<g:link style="margin-left: 210px" class="left waves-effect waves-light btn blue-grey"
					action="index">Listar Cidades</g:link>
			<g:link style="margin-left: 20px" class="left waves-effect waves-light btn green"
					action="create">Criar nova Cidade</g:link>
		</div><br><br><br>
		<div id="edit-cidade" class="container" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${cidadeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${cidadeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:cidadeInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${cidadeInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="waves-effect waves-light btn orange" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
