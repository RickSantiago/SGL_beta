
<%@ page import="sgl_beta.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="container">
		<div class="nav center" role="navigation">
				<a style="margin-right: 20px" href="#list-estado" class="right waves-effect waves-light btn" tabindex="-1"><g:message code="default.link.skip.label" default="Listar Estado"/></a>
				<g:link style="margin-left: 20px" class="left waves-effect waves-light btn" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div><br><br><br>

		<div id="list-estado" class="content scaffold-list" role="main">
			<h4 class="center">Lista de Estados Cadastrados</h4>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="highlight responsive-table bordered striped">
			<thead>
					<tr>
						<g:sortableColumn property="nome" title="${message(code: 'estado.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="uf" title="${message(code: 'estado.uf.label', default: 'Uf')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estadoInstanceList}" status="i" var="estadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estadoInstance.id}">${fieldValue(bean: estadoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: estadoInstance, field: "uf")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estadoInstanceCount ?: 0}" />
			</div>
		</div>
    </div>
	</body>
</html>
