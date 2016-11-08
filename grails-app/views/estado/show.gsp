
<%@ page import="sgl_beta.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="container">
	<div class="nav center" role="navigation">
		<g:link style="margin-left: 20px" class="left waves-effect waves-light btn " action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		<g:link style="margin-left: 20px" class="left waves-effect waves-light btn " action="index">Ver todos os Estados</g:link>
	</div><br><br><br>

		<div id="show-estado" class="container" role="main">
			<h4 class="center">Ver Estado</h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="collection">
				<g:if test="${estadoInstance?.cidade}">
				<li class="collection-item">
					<h6 id="cidade-label" class="property-label"><g:message code="estado.cidade.label" default="Cidades: " /></h6>
						<g:each in="${estadoInstance.cidade}" var="c">
						<h7 class="property-value" aria-labelledby="cidade-label">
                            <g:link controller="cidade" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></h7>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInstance?.nome}">
				<li class="collection-item">
					<h6 id="nome-label" class="property-label"><g:message code="estado.nome.label" default="Nome: " /></h6>
					
						<h5 class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${estadoInstance}" field="nome"/></h5>
					
				</li>
				</g:if>
			
				<g:if test="${estadoInstance?.uf}">
				<li class="collection-item">
					<h6 id="uf-label" class="property-label"><g:message code="estado.uf.label" default="UF: " /></h6>
					
						<h5 class="property-value" aria-labelledby="uf-label"><g:fieldValue bean="${estadoInstance}" field="uf"/></h5>
					
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:estadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn waves-effect waves-light green" action="edit" resource="${estadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn waves-effect waves-light red" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
    </div>
	</body>
</html>
