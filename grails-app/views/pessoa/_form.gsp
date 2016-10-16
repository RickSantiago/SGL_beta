<%@ page import="sgl_beta.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="pessoa.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${pessoaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="pessoa.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${pessoaInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="pessoa.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rg" required="" value="${pessoaInstance?.rg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'dataNascimento', 'error')} ">
	<label for="dataNascimento">
		<g:message code="pessoa.dataNascimento.label" default="Data Nascimento" />
		
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${pessoaInstance?.dataNascimento}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="pessoa.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${pessoaInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'bairro', 'error')} ">
	<label for="bairro">
		<g:message code="pessoa.bairro.label" default="Bairro" />
		
	</label>
	<g:textField name="bairro" value="${pessoaInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'complemento', 'error')} ">
	<label for="complemento">
		<g:message code="pessoa.complemento.label" default="Complemento" />
		
	</label>
	<g:textField name="complemento" value="${pessoaInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="pessoa.numero.label" default="Numero" />
		
	</label>
	<g:field name="numero" type="number" value="${pessoaInstance.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pessoaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'pagamento', 'error')} ">
	<label for="pagamento">
		<g:message code="pessoa.pagamento.label" default="Pagamento" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pessoaInstance?.pagamento?}" var="p">
    <li><g:link controller="pagamento" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pagamento" action="create" params="['pessoa.id': pessoaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pagamento.label', default: 'Pagamento')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'plano', 'error')} required">
	<label for="plano">
		<g:message code="pessoa.plano.label" default="Plano" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plano" name="plano.id" from="${sgl_beta.Plano.listOrderByCodigoPlano()}" optionKey="id" required="" value="${pessoaInstance?.plano?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${pessoaInstance?.telefone}"/>

</div>

