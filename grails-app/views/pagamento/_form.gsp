<%@ page import="sgl_beta.Pagamento" %>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'dataPagamento', 'error')} required">
	<label for="dataPagamento">
		<g:message code="pagamento.dataPagamento.label" default="Data Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<input placeholder="dd/mm/aaaa" type="text" class="datepicker" name="dataPagamento" onkeyup="mascaraData(this.value,this)"  value="${formatDate(format:'dd/MM/yyyy', date:pagamentoInstance?.dataPagamento)}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'dataVencimento', 'error')} required">
	<label for="dataVencimento">
		<g:message code="pagamento.dataVencimento.label" default="Data Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<input placeholder="dd/mm/aaaa" type="text" class="datepicker" name="dataVencimento" onkeyup="mascaraData(this.value,this)"   value="${formatDate(format:'dd/MM/yyyy', date:pagamentoInstance?.dataVencimento)}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'valorPago', 'error')} required">
	<label for="valorPago">
		<g:message code="pagamento.valorPago.label" default="Valor Pago" />
		<span class="required-indicator">*</span>
	</label>
	<input type="text" name="valorPago" value="${fieldValue(bean: pagamentoInstance, field: 'valorPago')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'pessoa', 'error')} required">
	<label for="pessoa">
		<g:message code="pagamento.pessoa.label" default="Pessoa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select style="display: block;" id="pessoa" name="pessoa.id" from="${sgl_beta.Pessoa.listOrderByNome()}" optionKey="id" required="" value="${pagamentoInstance?.pessoa?.id}" class="many-to-one"/>

</div>

<script type="text/javascript">

	function mascaraData(Data, campo) {
		var data = '';
		data = data + Data;
		if (data.length == 2) {
			data = data + '/';
			campo.value = data;
		}
		if (data.length == 5) {
			data = data + '/';
			campo.value = data;
		}

	}

</script>