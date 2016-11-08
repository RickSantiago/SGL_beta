<%@ page import="sgl_beta.Cidade" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="nav center" role="navigation">
        <g:link style="margin-left: 20px" class="left waves-effect waves-light btn blue" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
    </div><br><br><br>

    <div id="show-cidade" class="content scaffold-show" role="main">
        <h4><g:message code="default.show.label" args="[entityName]"/></h4>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ul class="collection">

            <g:if test="${cidadeInstance?.estado}">
                <li class="collection-item">
                    <h6 id="estado-label" class="property-label"><g:message code="cidade.estado.label"
                                                                            default="Estado: "/></h6>

                    <h5 class="property-value" aria-labelledby="estado-label"><g:link controller="estado" action="show"
                                                                                      id="${cidadeInstance?.estado?.id}">${cidadeInstance?.estado?.encodeAsHTML()}</g:link></h5>

                </li>
            </g:if>

            <g:if test="${cidadeInstance?.nome}">
                <li class="collection-item">
                    <h6 id="nome-label" class="property-label"><g:message code="cidade.nome.label"
                                                                          default="Nome: "/></h6>

                    <h5 class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${cidadeInstance}"
                                                                                          field="nome"/></h5>

                </li>
            </g:if>

            <g:if test="${cidadeInstance?.pessoa}">
                <li class="collection-item">
                    <span id="pessoa-label" class="property-label"><g:message code="cidade.pessoa.label"
                                                                              default="Pessoa"/></span>

                    <g:each in="${cidadeInstance.pessoa}" var="p">
                        <span class="property-value" aria-labelledby="pessoa-label"><g:link controller="pessoa"
                                                                                            action="show"
                                                                                            id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
                    </g:each>

                </li>
            </g:if>
        </ul>
        <g:form url="[resource: cidadeInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="btn waves-effect waves-light green" action="edit" resource="${cidadeInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="btn waves-effect waves-light red" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
