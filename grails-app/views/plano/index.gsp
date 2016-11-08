<%@ page import="sgl_beta.Plano" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section">
        <div class="nav center" role="navigation">
            <g:link class="left waves-effect waves-light btn green"
                    action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
        </div><br><br><br>

        <div id="list-Plano" role="main">
            <h4><g:message code="default.list.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="highlight responsive-table bordered striped">
                <thead>
                <tr>
                    <th><g:message code="plano.tpPlano.label" default="Tipo do Plano"/></th>

                    <g:sortableColumn property="codigoPlano"
                                      title="${message(code: 'plano.codigoPlano.label', default: 'Numero do Plano')}"/>

                    <g:sortableColumn property="dataInicio"
                                      title="${message(code: 'plano.dataInicio.label', default: 'Data Inicio')}"/>

                    <g:sortableColumn property="valorPlanoMensal"
                                      title="${message(code: 'plano.valorPlanoMensal.label', default: 'Valor Plano Mensal')}"/>

                    <g:sortableColumn property="valorPlanoAnual"
                                      title="${message(code: 'plano.valorPlanoAnual.label', default: 'Valor Plano Anual')}"/>
                </tr>
                </thead>
                <tbody>
                <g:each in="${planoInstanceList}" status="i" var="planoInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td>${fieldValue(bean: planoInstance, field: "tpPlano")}</td>

                        <td><g:link action="show"
                                    id="${planoInstance.id}">${fieldValue(bean: planoInstance, field: "codigoPlano")}</g:link></td>

                        <td><g:formatDate format="dd/MM/yyyy" date="${planoInstance.dataInicio}"/></td>

                        <td>${fieldValue(bean: planoInstance, field: "valorPlanoMensal")}</td>

                        <td>${fieldValue(bean: planoInstance, field: "valorPlanoAnual")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${planoInstanceCount ?: 0}"/>
            </div>
        </div>
        </div>
</body>
</html>
