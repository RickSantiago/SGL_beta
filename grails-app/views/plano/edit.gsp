<%@ page import="sgl_beta.Plano" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section">
        <div class="nav center" role="navigation">
            <g:link class="left waves-effect waves-light btn blue-grey"
                    action="index">Listar Planos</g:link>
            <g:link style="margin-left: 20px" class="left waves-effect waves-light btn blue"
                    action="create">Criar novo Plano</g:link>
        </div><br><br><br>

        <div id="edit-plano" class="content scaffold-edit" role="main">
            <h4><g:message code="default.edit.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${planoInstance}">
                <ul class="collection" role="alert">
                    <g:eachError bean="${planoInstance}" var="error">
                        <li class="collection-item" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource: planoInstance, action: 'update']" method="PUT">
                <g:hiddenField name="version" value="${planoInstance?.version}"/>
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:actionSubmit class="waves-effect waves-light btn orange" action="update"
                                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                </fieldset>
            </g:form>
        </div>
    </div>
</body>
</html>
