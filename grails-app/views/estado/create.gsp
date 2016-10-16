<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
			<div class="nav center" role="navigation">
				<a style="margin-right: 20px" href="#list-estado" class="right waves-effect waves-light btn" tabindex="-1"><g:message code="default.link.skip.label" default="Listar Estado"/></a>
				<g:link style="margin-left: 20px" class="left waves-effect waves-light btn" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</div><br><br><br>

		<div id="create-estado" class="container" role="main">
			<h4 class="center">Cadastrar Estado</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${estadoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${estadoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:estadoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn waves-effect waves-light" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
