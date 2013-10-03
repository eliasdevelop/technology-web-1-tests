<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<script src="../css/bootstrap/js/bootstrap.min.js"></script>
<title>Cadastro Funcionario</title>
</head>
	<body>		
		<form class="form-horizontal" action="logicaCadastroFuncionario.jsp" method="post">
			<h1 style="text-align: center">Cadastro de Funcionarios</h1>
			<div style="margin-top: 50px">
				<div class="control-group">
					<label class="control-label">Matricula: </label>
					<div class="controls">
						<input type="text" name="matricula"/>
					</div>							
				</div>
				<div class="control-group">
					<label class="control-label">Nome: </label>
					<div class="controls">
						<input type="text" name="nome"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Sexo: </label>
					<div class="controls">
						<label class="radio inline">
							<input type="radio" name="sexo" value="1" />Masculino
						</label>
						<label class="radio inline">
							<input type="radio" name="sexo" value="2" />Feminino
						</label>		
					</div>						
				</div>
				<div class="control-group">
					<label class="control-label">Estado Civil: </label>
					<div class="controls">
						<select name="estadoCivil">
						<option value="0" selected="selected">N�o Informado</option>
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
						<input type="text" name="cpf"/>
					</div>							
				</div>
				<div class="control-group">
					<label class="control-label">Data de Nascimento:</label>
					<div class="controls">
						<input type="text" name="dataDeNascimento"/>
					</div>
				</div>	
				<div class="control-group">
					<label class="control-label">Data de Admissao:</label>
					<div class="controls">
						<input type="text" name="dataDeAdmissao"/>
					</div>
				</div>	
				<div class="control-group">
					<label class="control-label">Salario: </label>
					<div class="controls">
						<input type="text" name="salario"/>
					</div>							
				</div>
				<div class="control-group">
					<label class="control-label">Senha: </label>
					<div class="controls">
						<input type="text" name="senha"/>
					</div>							
				</div>
				
				<div style="text-align: center;">
					<button class="btn btn-success" type="submit">Salvar</button>
					<a href="listaFuncionarios.jsp"><button class="btn btn-danger" type="button">Cancelar</button></a>
				</div>
			</div>
		</form>
	</body>
</html>