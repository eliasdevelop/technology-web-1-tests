<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<script src="../css/bootstrap/js/bootstrap.min.js"></script>
<title>Cadastro Dependente</title>
</head>
	<body>		
		<%
			String mat = request.getParameter("matricula");
		 %>
		<form class="form-horizontal" action="logicaCadastroDependente.jsp?matricula=<%= mat %>" method="post">
			<h1 style="text-align: center">Cadastro de Dependente</h1>
			<div style="margin-top: 50px">
				<div class="control-group">
					<label class="control-label">Sequencia: </label>
					<div class="controls">
						<input type="text" name="sequencia"/>
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
					<label class="control-label">Data de Nascimento:</label>
					<div class="controls">
						<input type="text" name="dataDeNascimento"/>
					</div>
				</div>	
				
				<div style="text-align: center;">
					<button class="btn btn-success" type="submit">Salvar</button>
					<a href="listaDependentes.jsp"><button class="btn btn-danger" type="button">Cancelar</button></a>
				</div>
			</div>
		</form>
	</body>
</html>