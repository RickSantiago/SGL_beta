<%@ page import="sgl_beta.Pagamento" %>



<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'dataPagamento', 'error')} required">
	<label for="dataPagamento">
		<g:message code="pagamento.dataPagamento.label" default="Data Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataPagamento" precision="day"  value="${pagamentoInstance?.dataPagamento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'dataVencimento', 'error')} required">
	<label for="dataVencimento">
		<g:message code="pagamento.dataVencimento.label" default="Data Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataVencimento" precision="day"  value="${pagamentoInstance?.dataVencimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'valorPago', 'error')} required">
	<label for="valorPago">
		<g:message code="pagamento.valorPago.label" default="Valor Pago" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorPago" value="${fieldValue(bean: pagamentoInstance, field: 'valorPago')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'pessoa', 'error')} required">
	<label for="pessoa">
		<g:message code="pagamento.pessoa.label" default="Pessoa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pessoa" name="pessoa.id" from="${sgl_beta.Pessoa.listOrderByNome()}" optionKey="id" required="" value="${pagamentoInstance?.pessoa?.id}" class="many-to-one"/>

</div>

