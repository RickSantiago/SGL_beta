<%@ page import="sgl_beta.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="estado.cidade.label" default="Cidade" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${estadoInstance?.cidade?}" var="c">
    <li><g:link controller="cidade" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cidade" action="create" params="['estado.id': estadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cidade.label', default: 'Cidade')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="estado.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${estadoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'uf', 'error')} required">
	<label for="uf">
		<g:message code="estado.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uf" required="" value="${estadoInstance?.uf}"/>

</div>

