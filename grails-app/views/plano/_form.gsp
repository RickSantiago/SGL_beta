<%@ page import="sgl_beta.Plano" %>

<div class="section">
    <div style="display: block;" class="fieldcontain ${hasErrors(bean: planoInstance, field: 'dataInicio', 'error')} required">
        <label for="dataInicio">
            <g:message code="plano.dataInicio.label" default="Data do Cadastro: "/>
            <span class="required-indicator">*</span>
            <input placeholder="dd/mm/aaaa" type="text" class="datepicker" name="dataInicio" onkeyup="mascaraData(this.value,this)" value="${planoInstance?.dataInicio}"/>
        </label>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'valorPlanoMensal', 'error')} required">
    <label for="valorPlanoMensal">
        <g:message code="plano.valorPlanoMensal.label" default="Valor Plano Mensal: "/>
        <span class="required-indicator">*</span>
    </label>
    <input name="valorPlanoMensal" type="number" placeholder="30"
           value="${fieldValue(bean: planoInstance, field: 'valorPlanoMensal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'valorPlanoAnual', 'error')} required">
    <label for="valorPlanoAnual">
        <g:message code="plano.valorPlanoAnual.label" default="Valor Plano Anual: "/>
        <span class="required-indicator">*</span>
    </label>
    <input name="valorPlanoAnual" type="number" placeholder="1500"
           value="${fieldValue(bean: planoInstance, field: 'valorPlanoAnual')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'codigoPlano', 'error')} required">
    <label for="codigoPlano">
        <g:message code="plano.codigoPlano.label" default="Numero Plano: "/>
        <span class="required-indicator">*</span>
    </label>
    <input name="codigoPlano" type="number" placeholder="0001 ou 00001" maxlength="6"
           value="${planoInstance.codigoPlano}" required=""/>

</div>

%{--<div style="display: none;" class="fieldcontain ${hasErrors(bean: planoInstance, field: 'pessoa', 'error')} ">--}%
%{--<label for="pessoa">--}%
%{--<g:message code="plano.pessoa.label" default="Pessoa"/>--}%

%{--</label>--}%

%{--<ul class="one-to-many">--}%
%{--<g:each in="${planoInstance?.pessoa ?}" var="p">--}%
%{--<li><g:link controller="pessoa" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="pessoa" action="create"--}%
%{--params="['plano.id': planoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pessoa.label', default: 'Pessoa')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%

%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'tpPlano', 'error')} required">
    <label for="tpPlano">
        <g:message code="plano.tpPlano.label" default="Tipo do Plano: "/>
        <span class="required-indicator">*</span>
    </label>
    <g:select style="display: block;" id="tpPlano" name="tpPlano.id" from="${sgl_beta.TipoPlano.listOrderByNome()}" optionKey="id" required=""
              value="${planoInstance?.tpPlano?.id}" class="many-to-one"/>

</div>

<script type="text/javascript">

    document.getElementById('dataInicio').style.display = 'block';

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
