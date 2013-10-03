<%@page import="br.unit.web3.revisaoprova1.Funcionario"%>
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
	<title>Excluir Funcionario</title>
</head>
<body>
	<%
		Principal principal = new Principal();
		Matricula mat = new Matricula(request.getParameter("matricula").toString());
		Funcionario funcionario =  principal.pesquisarFuncionario(mat);
	%>
	
	<form action="logicaExcluirFuncionario.jsp" method="post" class="form-horizontal">
		<h2 style="text-align: center">Excluir Funcionario</h2>
		<div class="control-group">
			<label class="radio">
				Deseja realmente excluir o funcionario?
			</label>	
		</div>
		<div class="control-group">
			<label class="control-label">Matricula: </label>
			<div class="controls">
				<input type="text" name="matricula" value="<%= funcionario.getMatricula() %>" style="display: none;"/>
				<label><%= funcionario.getMatricula() %></label>	
			</div>					
		</div>
		<div class="control-group">
			<label class="control-label">Nome: </label>
			<label class="control-label"><%= funcionario.getNome() %></label>
		</div>
		<div class="control-group">
			<label class="control-label">Sexo: </label>
			<label class="control-label"><%=funcionario.getSexo() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Estado Civil: </label>
			<label class="control-label"><%= funcionario.getEstadoCivil() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Cpf: </label>
			<label class="control-label"><%=funcionario.getCpf() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Data de Nascimento: </label>
			<label class="control-label"><%=funcionario.getDataDeNascimento() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Data de Admissao: </label>
			<label class="control-label"><%=funcionario.getDataDeAdmissao() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Salario: </label>
			<label class="control-label"><%=funcionario.getSalario() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Senha: </label>
			<label class="control-label"><%=funcionario.getSenha() %></label>	
		</div>
		
		<div style="text-align: center;">
			<button class="btn btn-success" type="submit">Salvar</button>
			<a href="listaFuncionarios.jsp"><button class="btn btn-danger" type="button">Cancelar</button></a>
		</div>
	</form>
</body>
</html>