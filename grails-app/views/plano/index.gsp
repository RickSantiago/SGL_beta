
<%@ page import="sgl_beta.Plano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plano" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plano" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="valorPlanoMensal" title="${message(code: 'plano.valorPlanoMensal.label', default: 'Valor Plano Mensal')}" />
					
						<g:sortableColumn property="valorPlanoAnual" title="${message(code: 'plano.valorPlanoAnual.label', default: 'Valor Plano Anual')}" />
					
						<g:sortableColumn property="codigoPlano" title="${message(code: 'plano.codigoPlano.label', default: 'Numero Plano')}" />
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'plano.dataInicio.label', default: 'Data Inicio')}" />
					
						<th><g:message code="plano.tpPlano.label" default="Tp Plano" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planoInstanceList}" status="i" var="planoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planoInstance.id}">${fieldValue(bean: planoInstance, field: "valorPlanoMensal")}</g:link></td>
					
						<td>${fieldValue(bean: planoInstance, field: "valorPlanoAnual")}</td>
					
						<td>${fieldValue(bean: planoInstance, field: "codigoPlano")}</td>
					
						<td><g:formatDate date="${planoInstance.dataInicio}" /></td>
					
						<td>${fieldValue(bean: planoInstance, field: "tpPlano")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
