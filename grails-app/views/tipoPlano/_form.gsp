<%@ page import="sgl_beta.TipoPlano" %>



<div class="fieldcontain ${hasErrors(bean: tipoPlanoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tipoPlano.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nome" from="${tipoPlanoInstance.constraints.nome.inList}" required="" value="${tipoPlanoInstance?.nome}" valueMessagePrefix="tipoPlano.nome"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tipoPlanoInstance, field: 'qtdDependentes', 'error')} ">
	<label for="qtdDependentes">
		<g:message code="tipoPlano.qtdDependentes.label" default="Qtd Dependentes" />
		
	</label>
	<g:field name="qtdDependentes" type="number" max="5" value="${tipoPlanoInstance.qtdDependentes}"/>

</div>

