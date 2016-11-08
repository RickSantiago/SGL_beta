<!DOCTYPE html>
<html>
<head>
    <title><g:if env="development">Ocorreu algum problema</g:if><g:else>Erro:</g:else></title>
    <meta name="layout" content="main">
    <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>

<body>
<div class="container">
    <div class="section">
        <g:if env="development">
            <g:renderException exception="${exception}"/>
        </g:if>
        <g:else>
            <ul class="errors collection">
                <li class="collection-item">Desculpe o transtorno, mas ocorreu um erro, entre em contato:</li>
                <li class="collection-item">email: santhiagoxp7@gmail.com</li>
            </ul>
        </g:else>
    </div>
</div>
</body>
</html>
