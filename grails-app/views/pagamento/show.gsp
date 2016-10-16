
<%@ page import="sgl_beta.Pagamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pagamento.label', default: 'Pagamento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pagamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pagamento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pagamento">
			
				<g:if test="${pagamentoInstance?.dataPagamento}">
				<li class="fieldcontain">
					<span id="dataPagamento-label" class="property-label"><g:message code="pagamento.dataPagamento.label" default="Data Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="dataPagamento-label"><g:formatDate date="${pagamentoInstance?.dataPagamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagamentoInstance?.dataVencimento}">
				<li class="fieldcontain">
					<span id="dataVencimento-label" class="property-label"><g:message code="pagamento.dataVencimento.label" default="Data Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="dataVencimento-label"><g:formatDate date="${pagamentoInstance?.dataVencimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagamentoInstance?.valorPago}">
				<li class="fieldcontain">
					<span id="valorPago-label" class="property-label"><g:message code="pagamento.valorPago.label" default="Valor Pago" /></span>
					
						<span class="property-value" aria-labelledby="valorPago-label"><g:fieldValue bean="${pagamentoInstance}" field="valorPago"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagamentoInstance?.pessoa}">
				<li class="fieldcontain">
					<span id="pessoa-label" class="property-label"><g:message code="pagamento.pessoa.label" default="Pessoa" /></span>
					
						<span class="property-value" aria-labelledby="pessoa-label"><g:link controller="pessoa" action="show" id="${pagamentoInstance?.pessoa?.id}">${pagamentoInstance?.pessoa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pagamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pagamentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
