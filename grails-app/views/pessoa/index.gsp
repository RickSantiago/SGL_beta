<%@ page import="sgl_beta.Pessoa" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="section">
        <div class="nav center" role="navigation">
            <g:link class="left waves-effect waves-light btn green"
                    action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
        </div><br><br><br>

        <div id="list-pessoa" class="content scaffold-list" role="main">
            <h4><g:message code="default.list.label" args="[entityName]"/></h4>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="highlight responsive-table bordered striped">
                <thead>
                <tr>

                    <g:sortableColumn property="nome" title="${message(code: 'pessoa.nome.label', default: 'Nome')}"/>

                    <g:sortableColumn property="email"
                                      title="${message(code: 'pessoa.email.label', default: 'Email')}"/>

                    <g:sortableColumn property="cpf" title="${message(code: 'pessoa.cpf.label', default: 'Cpf')}"/>

                    <g:sortableColumn property="rg" title="${message(code: 'pessoa.rg.label', default: 'Rg')}"/>

                    <g:sortableColumn property="dataNascimento"
                                      title="${message(code: 'pessoa.dataNascimento.label', default: 'Nascimento')}"/>

                    <g:sortableColumn property="logradouro"
                                      title="${message(code: 'pessoa.logradouro.label', default: 'Logradouro')}"/>

                    <g:sortableColumn property="numero"
                                      title="${message(code: 'pessoa.numero.label', default: 'Numero')}"/>

                    <g:sortableColumn property="bairro"
                                      title="${message(code: 'pessoa.bairro.label', default: 'Bairro')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${pessoaInstanceList}" status="i" var="pessoaInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${pessoaInstance.id}">${fieldValue(bean: pessoaInstance, field: "nome")}</g:link></td>

                        <td>${fieldValue(bean: pessoaInstance, field: "email")}</td>

                        <td>${fieldValue(bean: pessoaInstance, field: "cpf")}</td>

                        <td>${fieldValue(bean: pessoaInstance, field: "rg")}</td>

                        <td><g:formatDate format="dd/mm/yyyy" date="${pessoaInstance.dataNascimento}"/></td>

                        <td>${fieldValue(bean: pessoaInstance, field: "logradouro")}</td>

                        <td>${fieldValue(bean: pessoaInstance, field: "numero")}</td>

                        <td>${fieldValue(bean: pessoaInstance, field: "bairro")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${pessoaInstanceCount ?: 0}"/>
            </div>
        </div>
    </div>
</body>
</html>
