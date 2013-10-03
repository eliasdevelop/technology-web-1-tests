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
	<title>Editar Funcionario</title>
</head>
<body>
	<%
		Principal principal = new Principal();
		Matricula mat = new Matricula(request.getParameter("matricula").toString());
		Funcionario funcionario =  principal.pesquisarFuncionario(mat);
	%>

	<form action="logicaEditarFuncionario.jsp" method="post" class="form-horizontal">
		<h2 style="text-align: center">Editar Funcionario</h2>
		<div class="control-group" style="margin-top: 5%">
			<label class="control-label">Matricula: </label>
			<input type="text" name="matricula" value="<%= funcionario.getMatricula() %>" style="display: none;"/>
			<div class="controls">
				<label><%= funcionario.getMatricula() %></label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Nome: </label>
			<div class="controls">
				<input type="text" name="nome" value="<%= funcionario.getNome() %>" />	
			</div>					
		</div>
		<div class="control-group">
			<label class="control-label">Sexo: </label>
			<div class="controls">
				<label class="radio inline">
					<input type="radio" name="sexo" value="1" <% if(funcionario.getSexo().getSexo() == 1){ %> checked="checked" <% }%>/>Masculino	
				</label>
				<label class="radio inline">
					<input type="radio" name="sexo" value="2" <% if(funcionario.getSexo().getSexo() == 2){ %> checked="checked" <% }%>/>Feminino		
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
					<label class="control-label">Cpf: </label>
					<div class="controls">
						<input type="text" name="cpf" value="<%= funcionario.getCpf() %>"/>
					</div>							
				</div>
		<div class="control-group">
			<label class="control-label">Data de Nascimento:</label>
			<div class="controls">
				<input type="text" name="dataDeNascimento" value="<%=funcionario.getDataDeNascimento() %>"/>	
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Data de Admissão:</label>
			<div class="controls">
				<input type="text" name="dataDeAdmissao" value="<%=funcionario.getDataDeAdmissao() %>"/>	
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Salario: </label>
			<div class="controls">
				<input type="text" name="salario" value="<%=funcionario.getSalario() %>"/>
			</div>							
		</div>
		<div class="control-group">
			<label class="control-label">Senha: </label>
			<div class="controls">
				<input type="text" name="senha" value="<%=funcionario.getSenha() %>"/>
			</div>							
		</div>
		
		<div style="text-align: center;">
			<button class="btn btn-success" type="submit">Salvar</button>
			<a href="listaFuncionarios.jsp"><button class="btn btn-danger" type="button">Cancelar</button></a>
		</div>
	</form>
</body>
</html>