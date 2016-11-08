
<%@ page import="sgl_beta.TipoPlano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoPlano.label', default: 'TipoPlano')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="section">
		<div class="nav center" role="navigation">
			<g:link style="margin-left: 200px" class="left waves-effect waves-light btn blue-grey" action="index">Listar Tipos de Planos</g:link>
			<g:link style="margin-left: 20px" class="left waves-effect waves-light btn blue" action="create">Criar novo Tipo de Plano</g:link>
		</div><br><br><br>

		<div id="show-tipoPlano" class="container" role="main">
			<h4><g:message code="default.show.label" args="[entityName]" /></h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="collection">
                <g:if test="${tipoPlanoInstance?.plano}">
                    <li class="collection-item">
                        <h6 id="plano-label" class="property-label"><g:message code="tipoPlano.plano.label" default="Planos: " /></h6>
                        <g:each in="${tipoPlanoInstance.plano}" var="c">
                            <h7 class="property-value" aria-labelledby="plano-label">
                                <g:link controller="plano" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></h7>
                        </g:each>
                    </li>
                </g:if>
			
				<g:if test="${tipoPlanoInstance?.nome}">
				<li class="collection-item">
					<h6 id="nome-label" class="property-label"><g:message code="tipoPlano.nome.label" default="Nome: " /></h6>
						<h5 class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${tipoPlanoInstance}" field="nome"/></h5>
				</li>
				</g:if>
			
				<g:if test="${tipoPlanoInstance?.qtdDependentes}">
				<li class="collection-item">
					<h6 id="qtdDependentes-label" class="property-label"><g:message code="tipoPlano.qtdDependentes.label" default="Quantidade de Dependentes: " /></h6>
						<h5 class="property-value" aria-labelledby="qtdDependentes-label"><g:fieldValue bean="${tipoPlanoInstance}" field="qtdDependentes"/></h5>
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:tipoPlanoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn waves-effect waves-light green" action="edit" resource="${tipoPlanoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn waves-effect waves-light red" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
