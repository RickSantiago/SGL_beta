<%@ page import="sgl_beta.TipoPlano" %>

<div class="row">
<div class="section col s2">
<div class="fieldcontain ${hasErrors(bean: tipoPlanoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tipoPlano.nome.label" default="Nome: " />
		<span class="required-indicator">*</span>
	</label>
	<g:select style="display: block;" name="nome" from="${tipoPlanoInstance.constraints.nome.inList}" required="" value="${tipoPlanoInstance?.nome}" valueMessagePrefix="tipoPlano.nome"/>
</div>
</div>
<div class="section col s4">
<div class="fieldcontain ${hasErrors(bean: tipoPlanoInstance, field: 'qtdDependentes', 'error')} ">
	<label for="qtdDependentes">
		<g:message code="tipoPlano.qtdDependentes.label" default="Quantidade Dependentes: " />
		
	</label>
	<input name="qtdDependentes" type="number" max="5" value="${tipoPlanoInstance.qtdDependentes}"/>
</div>
</div>
</div>

