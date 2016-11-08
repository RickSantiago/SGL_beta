<%@ page import="sgl_beta.Pagamento" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pagamento.label', default: 'Pagamento')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section">
        <div class="nav center" role="navigation">
            <g:link class="left waves-effect waves-light btn green"
                    action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
            <g:link style="margin-left: 20px" class="left waves-effect waves-light btn blue-grey"
                    action="index">Listar todos os pagamentos</g:link>
        </div><br><br><br>

        <div id="show-pagamento" class="content scaffold-show" role="main">
            <h4><g:message code="default.show.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="collection">

                <g:if test="${pagamentoInstance?.dataPagamento}">
                    <li class="collection-item">
                        <h6 id="dataPagamento-label" class="property-label"><g:message
                                code="pagamento.dataPagamento.label" default="Data Pagamento"/></h6>

                        <h5 class="property-value" aria-labelledby="dataPagamento-label"><g:formatDate format="dd/MM/yyyy"
                                date="${pagamentoInstance?.dataPagamento}"/></h5>

                    </li>
                </g:if>

                <g:if test="${pagamentoInstance?.dataVencimento}">
                    <li class="collection-item">
                        <h6 id="dataVencimento-label" class="property-label"><g:message
                                code="pagamento.dataVencimento.label" default="Data Vencimento"/></h6>

                        <h5 class="property-value" aria-labelledby="dataVencimento-label"><g:formatDate format="dd/MM/yyyy"
                                date="${pagamentoInstance?.dataVencimento}"/></h5>

                    </li>
                </g:if>

                <g:if test="${pagamentoInstance?.valorPago}">
                    <li class="collection-item">
                        <h6 id="valorPago-label" class="property-label"><g:message code="pagamento.valorPago.label"
                                                                                     default="Valor Pago"/></h6>

                        <h5 class="property-value" aria-labelledby="valorPago-label"><g:fieldValue
                                bean="${pagamentoInstance}" field="valorPago"/></h5>

                    </li>
                </g:if>

                <g:if test="${pagamentoInstance?.pessoa}">
                    <li class="collection-item">
                        <h6 id="pessoa-label" class="property-label"><g:message code="pagamento.pessoa.label"
                                                                                  default="Pessoa"/></h6>

                        <h5 class="property-value" aria-labelledby="pessoa-label"><g:link controller="pessoa"
                                                                                            action="show"
                                                                                            id="${pagamentoInstance?.pessoa?.id}">${pagamentoInstance?.pessoa?.encodeAsHTML()}</g:link></h5>

                    </li>
                </g:if>

            </ul>
            <g:form url="[resource: pagamentoInstance, action: 'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="left waves-effect waves-light btn light-blue" action="edit" resource="${pagamentoInstance}"><g:message
                            code="default.button.edit.label" default="Edit"/></g:link>
                    <g:actionSubmit style="margin-left: 20px" class="left waves-effect waves-light btn red" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>
</body>
</html>
