<%@ page import="sgl_beta.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
    <label for="nome">
        <g:message code="pessoa.nome.label" default="Nome: "/>
        <span class="required-indicator">*</span>
    </label>
    <input type="text" name="nome" required="" placeholder="Exemplo: José da Silva Santos" value="${pessoaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')}">
    <label for="email">
        <g:message code="pessoa.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <input type="email" placeholder="Exemplo: cliente@algo.com" name="email" value="${pessoaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} required">
    <label for="cpf">
        <g:message code="pessoa.cpf.label" default="Cpf"/>
        <span class="required-indicator">*</span>
    </label>
    <input name="cpf" placeholder="Exemplo: 000.000.000-00" required="" value="${pessoaInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} required">
    <label for="rg">
        <g:message code="pessoa.rg.label" default="Rg"/>
        <span class="required-indicator">*</span>
    </label>
    <input name="rg" placeholder="Exemplo: 000.000 ou 0000.0000" required="" value="${pessoaInstance?.rg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'dataNascimento', 'error')} ">
    <label for="dataNascimento">
        <g:message code="pessoa.dataNascimento.label" default="Data Nascimento"/>

    </label>
    <input placeholder="dd/mm/aaaa" type="text" class="datepicker" name="dataNascimento" onkeyup="mascaraData(this.value,this)"  value="${pessoaInstance?.dataNascimento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'logradouro', 'error')} required">
    <label for="logradouro">
        <g:message code="pessoa.logradouro.label" default="Logradouro"/>
        <span class="required-indicator">*</span>
    </label>
    <input name="logradouro" required="" type="text" placeholder="Exemplos: Rua 00, Avenida José, Travessa Maria, Fazenda São João..." value="${pessoaInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'bairro', 'error')} ">
    <label for="bairro">
        <g:message code="pessoa.bairro.label" default="Bairro"/>

    </label>
    <input name="bairro" type="text" placeholder="Exemplos: Centro, Correntinho, Região Norte..." value="${pessoaInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'complemento', 'error')} ">
    <label for="complemento">
        <g:message code="pessoa.complemento.label" default="Complemento"/>

    </label>
    <input type="text" placeholder="Exemplo: Proximo ao Mercado Paulista" name="complemento" value="${pessoaInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'numero', 'error')} ">
    <label for="numero">
        <g:message code="pessoa.numero.label" default="Numero"/>

    </label>
    <input name="numero" type="number" placeholder="Exemplos: 000, 0000, 00000..." value="${pessoaInstance.numero}"/>

</div>

<div style="display: none;" class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'pagamento', 'error')} ">
    <label for="pagamento">
        <g:message code="pessoa.pagamento.label" default="Pagamento"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${pessoaInstance?.pagamento ?}" var="p">
            <li><g:link controller="pagamento" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="pagamento" action="create"
                    params="['pessoa.id': pessoaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pagamento.label', default: 'Pagamento')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'plano', 'error')} required">
    <label for="plano">
        <g:message code="pessoa.plano.label" default="Plano"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select style="display: block;" id="plano" name="plano.id" from="${sgl_beta.Plano.listOrderByCodigoPlano()}" optionKey="id" required=""
              value="${pessoaInstance?.plano?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
    <label for="telefone">
        <g:message code="pessoa.telefone.label" default="Telefone"/>
        <span class="required-indicator">*</span>
    </label>
    <input type="tel" name="telefone" required="" placeholder="Exemplo: 063 99980-9090" value="${pessoaInstance?.telefone}"/>

</div>


<script type="text/javascript">

    document.getElementById('dataNascimento').style.display = 'block';

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
