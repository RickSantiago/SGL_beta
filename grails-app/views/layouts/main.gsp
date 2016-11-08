<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>SGL - Sistema de Gerenciamento e Levantamento</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Esse sistema é para auxilar a administração de uma empresa que trabalha planos especificos">
    <meta name="author" content="Ricardo Santiago Morais">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'materialize.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'materialize.min.css')}" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <g:layoutHead/>
</head>
<body>
<ul id="dropdownCadastro" class="dropdown-content">
    <li><g:link controller="Pessoa" action="create">Pessoa</g:link></li>
    <li class="divider"></li>
    <li><g:link controller="Pagamento" action="create">Pagamento</g:link></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li><g:link controller="Plano" action="create">Plano</g:link></li>
    <li class="divider"></li>
    <li><g:link controller="TipoPlano" action="create">Tipo de Plano</g:link></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li><g:link controller="Cidade" action="create">Cidade</g:link></li>
    <li class="divider"></li>
    <li><g:link controller="Estado" action="create">Estado</g:link></li>
</ul>
<ul id="dropdownListar" class="dropdown-content">
    <li><g:link controller="Pessoa" action="index">Clientes cadastrados</g:link></li>
    <li class="divider"></li>
    <li><g:link controller="Pagamento" action="index">Pagamentos Registrados</g:link></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li><g:link controller="Plano" action="index">Mostrar Planos</g:link></li>
    <li class="divider"></li>
    <li><g:link controller="TipoPlano" action="index">Tipos de Planos Cadastrados</g:link></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li class="divider"></li>
    <li><g:link controller="Cidade" action="index">Cidades Cadastradas</g:link></li>
    <li class="divider"></li>
    <li><g:link controller="Estado" action="index">Estados Cadastrados</g:link></li>
</ul>
<nav class="blue-grey" role="navigation" style="margin-top: 5px">
    <div class="nav-wrapper container">
        <ul class="left hide-on-med-and-down">
           <li><a id="logo-container" href="${createLink(uri: '/')}" class="brand-logo left">Inicio <img class="logo" src="${resource(dir: 'img', file: 'lighting.png')}" width="40" alt="logotipo da empresa" /></a></li>
        </ul>
        <ul class="right hide-on-med-and-down">
            <li><a class="dropdown-button" href="#!" data-activates="dropdownCadastro">Cadastro</a></li>
            <!-- Dropdown Trigger -->
            <li><a class="dropdown-button" href="#!" data-activates="dropdownListar">Listar</a></li>
            <li><a href="#contate_nos" class="active">Buscar</a></li>
        </ul>
    </div>
</nav><br>

<g:layoutBody/>
<footer class="page-footer blue-grey ">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Sistema de Levantamento e Acerto</h5>
                <p class="grey-text text-lighten-4">Trazendo agilidade, melhorando sua administração e otimizando seu trabalho.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Nos encontre</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Facebook</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Maps</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2016 Todos os direitos reservados - Criado Por: Ricardo Santiago Morais.
        </div>
    </div>
</footer>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<script src="${resource(dir:'js', file: 'jquery-2.1.1.min.js')}"></script>
<script src="${resource(dir:'js', file: 'jquery-1.9.1.js')}"></script>
<script src="${resource(dir:'js', file: 'materialize.js')}"></script>
<script src="${resource(dir:'js', file: 'materialize.min.js')}"></script>
</body>
</html>
