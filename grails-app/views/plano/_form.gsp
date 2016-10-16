<%@ page import="sgl_beta.Plano" %>



<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'valorPlanoMensal', 'error')} required">
	<label for="valorPlanoMensal">
		<g:message code="plano.valorPlanoMensal.label" default="Valor Plano Mensal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorPlanoMensal" value="${fieldValue(bean: planoInstance, field: 'valorPlanoMensal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'valorPlanoAnual', 'error')} required">
	<label for="valorPlanoAnual">
		<g:message code="plano.valorPlanoAnual.label" default="Valor Plano Anual" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorPlanoAnual" value="${fieldValue(bean: planoInstance, field: 'valorPlanoAnual')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'codigoPlano', 'error')} required">
	<label for="codigoPlano">
		<g:message code="plano.codigoPlano.label" default="Numero Plano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigoPlano" type="number" value="${planoInstance.codigoPlano}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="plano.dataInicio.label" default="Data Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${planoInstance?.dataInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'pessoa', 'error')} ">
	<label for="pessoa">
		<g:message code="plano.pessoa.label" default="Pessoa" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${planoInstance?.pessoa?}" var="p">
    <li><g:link controller="pessoa" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pessoa" action="create" params="['plano.id': planoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pessoa.label', default: 'Pessoa')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'tpPlano', 'error')} required">
	<label for="tpPlano">
		<g:message code="plano.tpPlano.label" default="Tp Plano" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tpPlano" name="tpPlano.id" from="${sgl_beta.TipoPlano.list()}" optionKey="id" required="" value="${planoInstance?.tpPlano?.id}" class="many-to-one"/>

</div>

