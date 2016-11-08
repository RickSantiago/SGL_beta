<%@ page import="sgl_beta.Pessoa" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
<div class="section">
    <div class="nav center" role="navigation">
        <g:link class="left waves-effect waves-light btn light-green"
                action="index">Listar Clientes Cadastrados</g:link>
        <g:link style="margin-left: 20px" class="left waves-effect waves-light btn blue-grey"
                action="create">Cadastrar Novo Cliente</g:link>
    </div><br><br><br>

    <div id="show-pessoa" class="content scaffold-show" role="main">
        <h4><g:message code="default.show.label" args="[entityName]"/></h4>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ul class="collection">

            <g:if test="${pessoaInstance?.nome}">
                <li class="collection-item">
                    <h6 id="nome-label" class="property-label"><g:message code="pessoa.nome.label"
                                                                            default="Nome: "/></h6>

                    <h5 class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                            field="nome"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.email}">
                <li class="collection-item">
                    <h6 id="email-label" class="property-label"><g:message code="pessoa.email.label"
                                                                             default="Email: "/></h6>

                    <h5 class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                             field="email"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.cpf}">
                <li class="collection-item">
                    <h6 id="cpf-label" class="property-label"><g:message code="pessoa.cpf.label"
                                                                           default="CPF: "/></h6>

                    <h5 class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                           field="cpf"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.rg}">
                <li class="collection-item">
                    <h6 id="rg-label" class="property-label"><g:message code="pessoa.rg.label" default="RG: "/></h6>

                    <h5 class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                          field="rg"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.dataNascimento}">
                <li class="collection-item">
                    <h6 id="dataNascimento-label" class="property-label"><g:message code="pessoa.dataNascimento.label"
                                                                                      default="Data Nascimento: "/></h6>

                    <h5 class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate format="dd/MM/yyyy"
                            date="${pessoaInstance?.dataNascimento}"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.logradouro}">
                <li class="collection-item">
                    <h6 id="logradouro-label" class="property-label"><g:message code="pessoa.logradouro.label"
                                                                                  default="Logradouro: "/></h6>

                    <h5 class="property-value" aria-labelledby="logradouro-label"><g:fieldValue
                            bean="${pessoaInstance}" field="logradouro"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.bairro}">
                <li class="collection-item">
                    <h6 id="bairro-label" class="property-label"><g:message code="pessoa.bairro.label"
                                                                              default="Bairro: "/></h6>

                    <h5 class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                              field="bairro"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.complemento}">
                <li class="collection-item">
                    <h6 id="complemento-label" class="property-label"><g:message code="pessoa.complemento.label"
                                                                                   default="Complemento: "/></h6>

                    <h5 class="property-value" aria-labelledby="complemento-label"><g:fieldValue
                            bean="${pessoaInstance}" field="complemento"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.numero}">
                <li class="collection-item">
                    <h6 id="numero-label" class="property-label"><g:message code="pessoa.numero.label"
                                                                              default="Numero: "/></h6>

                    <h5 class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                              field="numero"/></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.pagamento}">
                <li class="collection-item">
                    <h6 id="pagamento-label" class="property-label"><g:message code="pessoa.pagamento.label"
                                                                                 default="Pagamento: "/></h6>

                    <g:each in="${pessoaInstance.pagamento}" var="p">
                        <h5 class="property-value" aria-labelledby="pagamento-label"><g:link controller="pagamento"
                                                                                               action="show"
                                                                                               id="${p.id}">${p?.encodeAsHTML()}</g:link></h5>
                    </g:each>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.plano}">
                <li class="collection-item">
                    <h6 id="plano-label" class="property-label"><g:message code="pessoa.plano.label"
                                                                             default="Plano: "/></h6>

                    <h5 class="property-value" aria-labelledby="plano-label"><g:link controller="plano" action="show"
                                                                                       id="${pessoaInstance?.plano?.id}">${pessoaInstance?.plano?.encodeAsHTML()}</g:link></h5>

                </li>
            </g:if>

            <g:if test="${pessoaInstance?.telefone}">
                <li class="collection-item">
                    <h6 id="telefone-label" class="property-label"><g:message code="pessoa.telefone.label"
                                                                                default="Telefone: "/></h6>

                    <h5 class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${pessoaInstance}"
                                                                                                field="telefone"/></h5>

                </li>
            </g:if>

        </ul>
        <g:form url="[resource: pessoaInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class=" waves-effect waves-light btn blue" action="edit" resource="${pessoaInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class=" waves-effect waves-light btn red" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>
    </div>
</body>
</html>
