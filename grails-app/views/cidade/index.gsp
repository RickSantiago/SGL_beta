<%@ page import="sgl_beta.Cidade" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section">
        <div class="nav center" role="navigation">
            <g:link class="left waves-effect waves-light btn green" action="create"><g:message
                    code="default.new.label" args="[entityName]"/></g:link>
        </div><br><br><br>

        <div id="list-cidade" class="content scaffold-list" role="main">
            <h4 class="center"><g:message code="default.list.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="highlight responsive-table bordered striped">
                <thead>
                <tr>
                    <th><g:message code="cidade.estado.label" default="Estado"/></th>

                    <g:sortableColumn property="nome" title="${message(code: 'cidade.nome.label', default: 'Nome')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${cidadeInstanceList}" status="i" var="cidadeInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${cidadeInstance.id}">${fieldValue(bean: cidadeInstance, field: "estado")}</g:link></td>

                        <td>${fieldValue(bean: cidadeInstance, field: "nome")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${cidadeInstanceCount ?: 0}"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
