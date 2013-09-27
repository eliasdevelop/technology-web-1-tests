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
	<title>Editar Aluno</title>
</head>
<body>
	<%
	Turma turma = new Turma();
	Matricula mat = new Matricula(request.getParameter("matricula").toString());
	Aluno aluno =  turma.pesquisarAluno(mat);
	%>

	<form action="logicaEditar.jsp" method="post" class="form-horizontal">
		<h2 style="text-align: center">Editar Aluno</h2>
		<div class="control-group" style="margin-top: 5%">
			<label class="control-label">Matricula: </label>
			<input type="text" name="matricula" value="<%= aluno.getMatricula() %>" style="display: none;"/>
			<div class="controls">
				<label><%= aluno.getMatricula() %></label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Nome: </label>
			<div class="controls">
				<input type="text" name="nome" value="<%= aluno.getNome() %>" />	
			</div>					
		</div>
		<div class="control-group">
			<label class="control-label">Sexo: </label>
			<div class="controls">
				<label class="radio inline">
					<input type="radio" name="sexo" value="1" <% if(aluno.getSexo().getSexo() == 1){ %> checked="checked" <% }%>/>Masculino	
				</label>
				<label class="radio inline">
					<input type="radio" name="sexo" value="2" <% if(aluno.getSexo().getSexo() == 2){ %> checked="checked" <% }%>/>Feminino		
				</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Estado Civil: </label>
			<div class="controls">
				<select name="estadoCivil">
					<option value="0" selected="selected">Não Informado</option>
					<option value="1" >Solteiro</option>
					<option value="2" >Casado</option>
					<option value="3" >Divorciado</option>
					<option value="4" >Viuvo</option>
				</select>	
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Data de Nascimento:</label>
			<div class="controls">
				<input type="text" name="dataDeNascimento" value="<%=aluno.getDataDeNascimento() %>"/>	
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Notas: </label>
		</div>
		<div class="control-group" style="margin-left: 5%">
			<div class="control-group">
				<label class="control-label">1ª Nota: </label>
				<div class="controls">
					<input type="text" name="nota1" value="<%= aluno.getNotas()[0].getNota()%>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">2ª Nota: </label>
				<div class="controls">
					<input type="text" name="nota2" value="<%= aluno.getNotas()[1].getNota()%>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">3ª Nota: </label>
				<div class="controls">
					<input type="text" name="nota3" value="<%= aluno.getNotas()[2].getNota()%>"/>
				</div>	
			</div>
		</div>
		<div style="text-align: center;">
			<button class="btn btn-success" type="submit">Salvar</button>
			<a href="listaAlunos.jsp"><button class="btn btn-danger" type="button">Cancelar</button></a>
		</div>
	</form>
</body>
</html>