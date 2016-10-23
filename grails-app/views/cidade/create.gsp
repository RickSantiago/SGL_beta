<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="nav center" role="navigation">
		<g:link style="margin-left: 20px" class="left waves-effect waves-light btn blue-grey" action="index">Listar Cidades</g:link>
	</div><br><br><br>

		<div id="create-cidade" class="content scaffold-create" role="main">
			<h4><g:message code="default.create.label" args="[entityName]" /></h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${cidadeInstance}">
			<ul class="collection" role="alert">
				<g:eachError bean="${cidadeInstance}" var="error">
				<li class="collection-item" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
            <div class="row">
                    <g:form url="[resource:cidadeInstance, action:'save']" >
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="btn waves-effect waves-light green" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                        </fieldset>
                    </g:form>
            </div>
		</div>
	</body>
</html>
