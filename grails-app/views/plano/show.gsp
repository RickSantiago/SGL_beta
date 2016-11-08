<%@ page import="sgl_beta.Plano" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
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

        <div id="show-plano" class="content scaffold-show" role="main">
            <h4><g:message code="default.show.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="collection">

                <g:if test="${planoInstance?.valorPlanoMensal}">
                    <li class="collection-item">
                        <h6 id="valorPlanoMensal-label" class="property-label"><g:message
                                code="plano.valorPlanoMensal.label" default="Valor Plano Mensal"/></h6>

                        <h5 class="property-value" aria-labelledby="valorPlanoMensal-label"><g:fieldValue
                                bean="${planoInstance}" field="valorPlanoMensal"/></h5>

                    </li>
                </g:if>

                <g:if test="${planoInstance?.valorPlanoAnual}">
                    <li class="collection-item">
                        <h6 id="valorPlanoAnual-label" class="property-label"><g:message
                                code="plano.valorPlanoAnual.label" default="Valor Plano Anual"/></h6>

                        <h5 class="property-value" aria-labelledby="valorPlanoAnual-label"><g:fieldValue
                                bean="${planoInstance}" field="valorPlanoAnual"/></h5>

                    </li>
                </g:if>

                <g:if test="${planoInstance?.codigoPlano}">
                    <li class="collection-item">
                        <h6 id="codigoPlano-label" class="property-label"><g:message code="plano.codigoPlano.label"
                                                                                       default="Numero Plano"/></h6>

                        <h5 class="property-value" aria-labelledby="codigoPlano-label"><g:fieldValue
                                bean="${planoInstance}" field="codigoPlano"/></h5>

                    </li>
                </g:if>

                <g:if test="${planoInstance?.dataInicio}">
                    <li class="collection-item">
                        <h6 id="dataInicio-label" class="property-label"><g:message code="plano.dataInicio.label"
                                                                                      default="Data Inicio"/></h6>

                        <h5 class="property-value" aria-labelledby="dataInicio-label"><g:formatDate format="dd/MM/yyyy"
                                date="${planoInstance?.dataInicio}"/></h5>

                    </li>
                </g:if>

                <g:if test="${planoInstance?.pessoa}">
                    <li class="collection-item">
                        <h6 id="pessoa-label" class="property-label"><g:message code="plano.pessoa.label"
                                                                                  default="Pessoa: "/></h6>

                        <g:each in="${planoInstance.pessoa}" var="p">
                            <h5 class="property-value" aria-labelledby="pessoa-label"><g:link controller="pessoa"
                                                                                                action="show"
                                                                                                id="${p.id}">${p?.encodeAsHTML()}</g:link></h5>
                        </g:each>

                    </li>
                </g:if>

                <g:if test="${planoInstance?.tpPlano}">
                    <li class="collection-item">
                        <h6 id="tpPlano-label" class="property-label"><g:message code="plano.tpPlano.label"
                                                                                   default="Tipo do Plano: "/></h6>

                        <h5 class="property-value" aria-labelledby="tpPlano-label"><g:link controller="tipoPlano"
                                                                                             action="show"
                                                                                             id="${planoInstance?.tpPlano?.id}">${planoInstance?.tpPlano?.encodeAsHTML()}</g:link></h5>

                    </li>
                </g:if>

            </ul>
            <g:form url="[resource: planoInstance, action: 'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="waves-effect waves-light btn waves-green" action="edit" resource="${planoInstance}"><g:message
                            code="default.button.edit.label" default="Edit"/></g:link>
                    <g:actionSubmit class="waves-effect waves-light btn red" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>
</body>
</html>
