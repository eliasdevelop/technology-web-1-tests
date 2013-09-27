<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">

<title>Copia de Arquivos</title>
</head>
	<body>

		<h2>Copia de Arquivos</h2>
		<form class="form-vertical" action="transferencia.jsp" method="post" style="margin-left:20px">
			<div class="control-group">
				<input name="origem" type="text" placeholder="Origem" value="/Users/humbertoelias/Desktop/Projetos.zip"/>
			</div>
			<div class="control-group">
				<input name="destino" type="text" placeholder="Destino" value="/Users/humbertoelias/Desktop/ProjetosCOPIA.zip"/>
			</div>	
			<button class="btn btn-success" type="submit">Copiar!</button>
		</form>
	</body>
	<script src="../css/bootstrap/js/bootstrap.min.js"></script>
	<script src="../css/bootstrap/js/bootstrap.js"></script>
</html>