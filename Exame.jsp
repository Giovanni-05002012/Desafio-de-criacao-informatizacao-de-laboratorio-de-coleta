<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@page import="dataAtual.Data"%>
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
<h2 id="titpag">Confirmação de Cadastro do Exame do Paciênte</h2>

<nav>
<ul>
<li><a href="Index.jsp">Cadastro de Paciêntes</a></li>
</ul>
</nav>
</header>

<form>

<div>
<%
String nome = request.getParameter("nome");
String idade = request.getParameter("idade");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
String numCod1 = request.getParameter("numCod1");
String numCod2 = request.getParameter("numCod2");
String numCod3 = request.getParameter("numCod3");
String numCod4 = request.getParameter("numCod4");
String nomeProce1 = request.getParameter("nomeProce1");
String nomeProce2 = request.getParameter("nomeProce2");
String nomeProce3 = request.getParameter("nomeProce3");
String nomeProce4 = request.getParameter("nomeProce4");
String prazo1 = request.getParameter("prazo1");
String prazo2 = request.getParameter("prazo2");
String prazo3 = request.getParameter("prazo3");
String prazo4 = request.getParameter("prazo4");
int confPrazo = 0;
int i = 0;

out.print("<h2>Os dados cadastrados a seguir foram armazenados com sucesso!:</h2>" + "<br/>");
out.print("Nome: " + nome + "<br/>");
out.print("cpf: " + cpf + "<br/>");
out.print("idade: " + idade + "<br/>");
out.print("email: " + email + "<br/><br/>");
out.print("Código do processo 1: " + numCod1 + "<br/>");
out.print("Nomde do Processo: " + nomeProce1 + "<br/>");
out.print("Prazo: " + prazo1 + "<br/><br/>");

out.print("Código do Processo 2: " + numCod2 + "<br/>");
out.print("Nome do Processo: " + nomeProce2 + "<br/>");
out.print("Prazo: " + prazo2 + "<br/><br/>");

out.print("Código do Processo 3: " + numCod3 + "<br/>");
out.print("Nome do Processo: " + nomeProce3 + "<br/>");
out.print("Prazo: " + prazo3 + "<br/><br/>");

out.print("Código do Processo 4: " + numCod4 + "<br/>");
out.print("Nome do Processo: " + nomeProce4 + "<br/>");
out.print("Prazo: " + prazo4 + "<br/><br/>");

if(confPrazo < Integer.parseInt(prazo1)){
	confPrazo = Integer.parseInt(prazo1);
}else if(confPrazo < Integer.parseInt(prazo2)){
	confPrazo = Integer.parseInt(prazo2);
}else if(confPrazo < Integer.parseInt(prazo3)){
	confPrazo = Integer.parseInt(prazo3);
}else if (confPrazo < Integer.parseInt(prazo4)){
	confPrazo = Integer.parseInt(prazo4);
}else{
	confPrazo = confPrazo;
}
%>
<br/><br/><br/>
O prazo máximo esperado para a entrega do(s) exame(s) é de <%=confPrazo%> após a data atual (<%=Data.dateAtual()%>)


</div>

</form>

</body>
</html>