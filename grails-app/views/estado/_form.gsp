<%@ page import="sgl_beta.Estado" %>

<div class="container">
    <div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'nome', 'error')} required">
        <div class="row">
            <div class="input-field col s12">
                <input value="${estadoInstance?.nome}" name="nome" id="nome" type="text" required class="validate large">
                <label for="nome">
                    <g:message code="estado.nome.label" default="Nome"/>
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </div>

    </div>

    <div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'uf', 'error')} required">
        <div class="row">
            <div class="input-field col s12">
                <input value="${estadoInstance?.uf}" name="uf" id="uf" type="text" class="validate large">
                <label for="uf">
                    <g:message code="estado.uf.label" default="UF"/>
                    <span class="required-indicator">*</span>
                </label>
            </div>
        </div>
</div>
