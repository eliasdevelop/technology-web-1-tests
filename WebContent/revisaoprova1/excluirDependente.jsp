<%@page import="br.unit.web3.revisaoprova1.Dependente"%>
<%@page import="br.unit.web3.revisaoprova1.Matricula"%>
<%@page import="br.unit.web3.revisaoprova1.Principal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<script src="../css/bootstrap/js/bootstrap.min.js"></script>
	<title>Excluir Dependente</title>
</head>
<body>
	<%
		Principal principal = new Principal();
		Matricula mat = new Matricula(request.getParameter("matricula").toString());
		Dependente dependente =  principal.pesquisarDependente(mat, Integer.parseInt(request.getParameter("sequencia")));
	%>
	
	<form action="logicaExcluirDependente.jsp" method="post" class="form-horizontal">
		<h2 style="text-align: center">Excluir Dependente</h2>
		<div class="control-group">
			<label class="radio">
				Deseja realmente excluir o funcionario?
			</label>	
		</div>
		<div class="control-group">
			<label class="control-label">Matricula: </label>
			<div class="controls">
				<input type="text" name="matricula" value="<%= dependente.getMatricula() %>" style="display: none;"/>
				<label><%= dependente.getMatricula() %></label>	
			</div>					
		</div>
		<div class="control-group">
			<label class="control-label">Sequencia: </label>
			<div class="controls">
				<input type="text" name="sequencia" value="<%= dependente.getSequencia() %>" style="display: none;"/>
				<label><%= dependente.getSequencia() %></label>	
			</div>					
		</div>
		<div class="control-group">
			<label class="control-label">Nome: </label>
			<label class="control-label"><%= dependente.getNome() %></label>
		</div>
		<div class="control-group">
			<label class="control-label">Sexo: </label>
			<label class="control-label"><%=dependente.getSexo() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Data de Nascimento: </label>
			<label class="control-label"><%=dependente.getDataDeNascimento() %></label>	
		</div>
		
		<div style="text-align: center;">
			<button class="btn btn-success" type="submit">Salvar</button>
			<a href="listaDependentes.jsp?matricula=<%= mat.getMatricula() %>"><button class="btn btn-danger" type="button">Cancelar</button></a>
		</div>
	</form>
</body>
</html>