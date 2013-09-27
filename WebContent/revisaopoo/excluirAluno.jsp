<%@page import="br.unit.web3.revisaopoo.Matricula"%>
<%@page import="br.unit.web3.revisaopoo.Turma"%>
<%@page import="br.unit.web3.revisaopoo.Aluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<script src="../css/bootstrap/js/bootstrap.min.js"></script>
	<title>Excluir Aluno</title>
</head>
<body>
	<%
	Turma turma = new Turma();
	Matricula mat = new Matricula(request.getParameter("matricula").toString());
	Aluno aluno =  turma.pesquisarAluno(mat);
	%>
	
	<form action="logicaExcluir.jsp" method="post" class="form-horizontal">
		<h2 style="text-align: center">Excluir Aluno</h2>
		<div class="control-group">
			<label class="radio">
				Deseja realmente excluir o aluno?
			</label>	
		</div>
		<div class="control-group">
			<label class="control-label">Matricula: </label>
			<div class="controls">
				<input type="text" name="matricula" value="<%= aluno.getMatricula() %>" style="display: none;"/>
				<label><%= aluno.getMatricula() %></label>	
			</div>					
		</div>
		<div class="control-group">
			<label class="control-label">Nome: </label>
			<label class="control-label"><%= aluno.getNome() %></label>
		</div>
		<div class="control-group">
			<label class="control-label">Sexo: </label>
			<label class="control-label"><%=aluno.getSexo() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Estado Civil: </label>
			<label class="control-label"><%= aluno.getEstadoCivil() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Data de Nascimento: </label>
			<label class="control-label"><%=aluno.getDataDeNascimento() %></label>	
		</div>
		<div class="control-group">
			<label class="control-label">Notas: </label>
		</div>
		<div class="control-group" style="margin-left: 5%">
			<div class="control-group">
				<label class="control-label">1ª Nota: </label>
				<label class="control-label"><%= aluno.getNotas()[0].getNota()%></label>	
			</div>
			<div class="control-group">
				<label class="control-label">2ª Nota: </label>
				<label class="control-label"><%= aluno.getNotas()[1].getNota()%></label>	
			</div>
			<div class="control-group">
				<label class="control-label">3ª Nota: </label>
				<label class="control-label"><%= aluno.getNotas()[2].getNota()%></label>	
			</div>
		</div>
		<div style="text-align: center;">
			<button class="btn btn-success" type="submit">Salvar</button>
			<a href="listaAlunos.jsp"><button class="btn btn-danger" type="button">Cancelar</button></a>
		</div>
	</form>
</body>
</html>