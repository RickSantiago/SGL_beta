
<%@ page import="sgl_beta.TipoPlano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoPlano.label', default: 'TipoPlano')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tipoPlano" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tipoPlano" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tipoPlano">
			
				<g:if test="${tipoPlanoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="tipoPlano.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${tipoPlanoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoPlanoInstance?.qtdDependentes}">
				<li class="fieldcontain">
					<span id="qtdDependentes-label" class="property-label"><g:message code="tipoPlano.qtdDependentes.label" default="Qtd Dependentes" /></span>
					
						<span class="property-value" aria-labelledby="qtdDependentes-label"><g:fieldValue bean="${tipoPlanoInstance}" field="qtdDependentes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tipoPlanoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tipoPlanoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
