
<%@ page import="sgl_beta.Plano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plano" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plano" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plano">
			
				<g:if test="${planoInstance?.valorPlanoMensal}">
				<li class="fieldcontain">
					<span id="valorPlanoMensal-label" class="property-label"><g:message code="plano.valorPlanoMensal.label" default="Valor Plano Mensal" /></span>
					
						<span class="property-value" aria-labelledby="valorPlanoMensal-label"><g:fieldValue bean="${planoInstance}" field="valorPlanoMensal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.valorPlanoAnual}">
				<li class="fieldcontain">
					<span id="valorPlanoAnual-label" class="property-label"><g:message code="plano.valorPlanoAnual.label" default="Valor Plano Anual" /></span>
					
						<span class="property-value" aria-labelledby="valorPlanoAnual-label"><g:fieldValue bean="${planoInstance}" field="valorPlanoAnual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.codigoPlano}">
				<li class="fieldcontain">
					<span id="codigoPlano-label" class="property-label"><g:message code="plano.codigoPlano.label" default="Numero Plano" /></span>
					
						<span class="property-value" aria-labelledby="codigoPlano-label"><g:fieldValue bean="${planoInstance}" field="codigoPlano"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="plano.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${planoInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.pessoa}">
				<li class="fieldcontain">
					<span id="pessoa-label" class="property-label"><g:message code="plano.pessoa.label" default="Pessoa" /></span>
					
						<g:each in="${planoInstance.pessoa}" var="p">
						<span class="property-value" aria-labelledby="pessoa-label"><g:link controller="pessoa" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.tpPlano}">
				<li class="fieldcontain">
					<span id="tpPlano-label" class="property-label"><g:message code="plano.tpPlano.label" default="Tp Plano" /></span>
					
						<span class="property-value" aria-labelledby="tpPlano-label"><g:link controller="tipoPlano" action="show" id="${planoInstance?.tpPlano?.id}">${planoInstance?.tpPlano?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:planoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${planoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
