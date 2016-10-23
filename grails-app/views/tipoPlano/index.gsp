
<%@ page import="sgl_beta.TipoPlano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoPlano.label', default: 'TipoPlano')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
		<div class="nav center" role="navigation">
			<g:link style="margin-left: 20px" class="left waves-effect waves-light btn green" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div><br><br><br>
		<div id="list-tipoPlano" class="content scaffold-list" role="main">
			<h4><g:message code="default.list.label" args="[entityName]" /></h4>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="highlight responsive-table bordered striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'tipoPlano.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="qtdDependentes" title="${message(code: 'tipoPlano.qtdDependentes.label', default: 'Qtd Dependentes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tipoPlanoInstanceList}" status="i" var="tipoPlanoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tipoPlanoInstance.id}">${fieldValue(bean: tipoPlanoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: tipoPlanoInstance, field: "qtdDependentes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoPlanoInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
