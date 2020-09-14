<%@ page language="java" contentType="text/html; charset= utf-8"
    pageEncoding="UTF-8"%>
    
<%@
page import="dataAtual.Data" 
%>


<!DOCTYPE html>
<html ng-app="interacao">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Estilo.css">
<script src="resourse/angular.js"></script>
<script>
	angular.module("interacao", []);
	angular.module("interacao").controller("interacaoCtrl", function ($scope) {
		
	});
</script>
</head>
<body ng-controller="interacaoCtrl">

<header>
<h2 id="titpag">Cadastro de Processo(s) do(s) Paciênte(s)</h2>
</header>
<form action="Exame.jsp" method="post">
<fieldset class="paciente">

<legend>Informações do Paciênte</legend>

<p><label for="nomePacient">Nome:</label></p>
<input type="text" id="nomePacient" placeholder="  Digite aqui o nome do paciênte" ng-model="nome" name="nome">

<p><label for="cpfPacient">CPF:</label></p>
<input type="number" id="cpfPacient" placeholder="  Digite aqui o CPF do paciênte" min="0" ng-model="cpf" name="cpf">

<p><label for="idadePacient">Idade:</label></p>
<input type="number" id="idadePacient" placeholder="  Digite a idade do Paciênte (anos)" ng-model="idade" name="idade">

<p><label for="emailPacient">E-mail:</label></p>
<input type="email" id="emailPacient" placeholder="  Digite o e-mail para contato do paciênte" ng-model="email" name="email">

</fieldset>

<br/><br/>

<fieldset class="paciente">

<legend>Informações do(s) Procedimento(s)</legend>
<span>Atenção:<br/>digite apenas o código, nome e prazo de pelo menos um procedimento, e, se desejar, pode pressionar a tecla "enter"" ou clicar em "cadastrar" para finalizar a operação.</span>
<br/><br/>
<p><label for="numCod1">Código do Procedimento:</label></p>
<input type="number" id="numCod1" placeholder="  Digite aqui o número do código" ng-model="numCod1" name="numCod1">

<p><label for="nomProce1">Nome do Procedimento:</label></p>
<input type="text" id="nomProce1" placeholder="  Digite aqui o nome do procedimento" min="0" ng-model="nomeProce1" name="nomeProce1">

<p><label for="prazo1">Prazo:</label></p>
<input type="number" id="prazo1" placeholder="  Digite o prazo máximo para a análise (em dias)" ng-model="prazo1" name="prazo1">

<br/><br/>

<p><label for="numCod2">Código do Procedimento:</label></p>
<input type="number" id="numCod2" placeholder="  Digite aqui o número do código" name="numCod2">

<p><label for="nomProce2">Nome do Procedimento:</label></p>
<input type="text" id="nomProce2" placeholder="  Digite aqui o nome do procedimento" min="0" name="nomeProce2">

<p><label for="prazo2">Prazo:</label></p>
<input type="number" id="prazo2" placeholder="  Digite o prazo máximo para a análise (em dias)" name="prazo2">

<br/><br/>

<p><label for="numCod3">Código do Procedimento:</label></p>
<input type="number" id="numCod3" placeholder="  Digite aqui o número do código" name="numCod3">
 
<p><label for="nomProce3">Nome do Procedimento:</label></p>
<input type="text" id="nomProce3" placeholder="  Digite aqui o nome do procedimento" min="0" name="nomeProce3">

<p><label for="prazo3">Prazo:</label></p>
<input type="number" id="prazo3" placeholder="  Digite o prazo máximo para a análise (em dias)" name="prazo3">

<br/><br/>

<p><label for="numCod4">Código do Procedimento:</label></p>
<input type="number" id="numCod4" placeholder="  Digite aqui o número do código" name="numCod4">

<p><label for="nomProce4">Nome do Procedimento:</label></p>
<input type="text" id="nomProce4" placeholder="  Digite aqui o nome do procedimento" min="0" name="nomeProce4">

<p><label for="prazo4">Prazo:</label></p>
<input type="number" id="prazo4" placeholder="  Digite o prazo máximo para a análise (em dias)" name="prazo4">

<br/><br/><br/>

<p><label>Data de Envio da(s) Coleta(s):</label></p>
<p><%= Data.dateAtual()%></p>

</fieldset>

<br/>

<button type="submit" class="botao" ng-model="button" ng-Disabled="!(nome && cpf && idade && email && numCod1 && nomeProce1 && prazo1)">Cadastrar</button>

<br/>

</form>
</body>
</html>