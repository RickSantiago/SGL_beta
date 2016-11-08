<%@ page import="sgl_beta.Estado" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section"></div>

    <div class="nav center" role="navigation">
        <g:link class="left waves-effect waves-light btn blue-grey"
                action="index">Listar Estados</g:link>
        <g:link style="margin-left: 20px" class="left waves-effect waves-light btn green"
                action="create">Criar novo Estado</g:link>
    </div><br><br><br>

    <div id="edit-estado" role="main">
        <h4><g:message code="default.edit.label" args="[entityName]"/></h4>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${estadoInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${estadoInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: estadoInstance, action: 'update']" method="PUT">
            <g:hiddenField name="version" value="${estadoInstance?.version}"/>
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:actionSubmit class="btn waves-effect waves-light orange" action="update"
                                value="${message(code: 'default.button.update.label', default: 'Update')}"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
