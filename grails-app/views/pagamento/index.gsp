<%@ page import="sgl_beta.Pagamento" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pagamento.label', default: 'Pagamento')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section">
        <div class="nav center" role="navigation">
            <g:link class="left waves-effect waves-light btn green"
                    action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
        </div><br><br><br>

        <div id="list-pagamento" class="content scaffold-list" role="main">
            <h4 class="center"><g:message code="default.list.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="highlight responsive-table bordered striped">
                <thead>
                <tr>

                    <g:sortableColumn property="dataPagamento"
                                      title="${message(code: 'pagamento.dataPagamento.label', default: 'Data Pagamento')}"/>

                    <g:sortableColumn property="dataVencimento"
                                      title="${message(code: 'pagamento.dataVencimento.label', default: 'Data Vencimento')}"/>

                    <g:sortableColumn property="valorPago"
                                      title="${message(code: 'pagamento.valorPago.label', default: 'Valor Pago')}"/>

                    <th><g:message code="pagamento.pessoa.label" default="Pessoa"/></th>

                </tr>
                </thead>
                <tbody>
                <g:each in="${pagamentoInstanceList}" status="i" var="pagamentoInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${pagamentoInstance.id}"><g:formatDate format="dd/MM/yyyy" date="${pagamentoInstance.dataPagamento}"/></g:link></td>

                        <td><g:formatDate format="dd/MM/yyyy" date="${pagamentoInstance.dataVencimento}"/></td>

                        <td>${fieldValue(bean: pagamentoInstance, field: "valorPago")}</td>

                        <td>${fieldValue(bean: pagamentoInstance, field: "pessoa")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${pagamentoInstanceCount ?: 0}"/>
            </div>
        </div>
    </div>
</body>
</html>
