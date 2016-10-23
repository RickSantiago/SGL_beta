<%@ page import="sgl_beta.Cidade" %>

<div class="row">
    <div class="section col s4">
        <div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nome', 'error')} required">
            <label for="nome">
                <g:message code="cidade.nome.label" default="Nome" />
                <span class="required-indicator">*</span>
            </label>
            <input name="nome" id="nome" type="text" required class="validate" value="${cidadeInstance?.nome}"/>
        </div>
    </div>


    <div class="section col s2">
    <div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'estado', 'error')} required">
            <label for="estado">
                <g:message code="cidade.estado.label" default="Estado" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="estado" style="display: block" name="estado.id" from="${sgl_beta.Estado.listOrderByNome()}" optionKey="id" required="" value="${cidadeInstance?.estado?.id}"/>
        </div>

    </div>
</div>


%{--<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'pessoa', 'error')} ">--}%
	%{--<label for="pessoa">--}%
		%{--<g:message code="cidade.pessoa.label" default="Pessoa" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select name="pessoa" from="${sgl_beta.Pessoa.list()}" multiple="multiple" optionKey="id" size="5" value="${cidadeInstance?.pessoa*.id}" class="many-to-many"/>--}%

%{--</div>--}%

