<%@page import="br.unit.web3.exerciciostream.ProgressoWeb"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Refresh" content="1;url=loader.jsp">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<title>Lista de Alunos</title>
</head>
<body>
	<h2>Copia de Arquivos</h2>
	<div id="msg"></div>
	<div class="progress progress-striped active">
	  	<div id="barra" class="bar" style="width: <%= ProgressoWeb.getPorcento() %>%;"></div>
	</div>
	<script type="text/javascript">
	console.log( <%= ProgressoWeb.getPorcento() %>);
	</script>
</body>
</html>