<%@page import="br.unit.web3.prova1.PacoteExistenteException"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap-responsive-min.css">
<script src="css/bootstrap/js/bootstrap.min.js"></script>
<title>Error !</title>
</head>
<body>
<form action = "index.jsp" > 
<%@ page isErrorPage = "true" %> 
<div style="text-align: center">
<img src="css/bootstrap/img/error.png">
<h3>Ocorreu um erro !</h3> 

 Erro: 
<%	if(exception instanceof NumberFormatException){ %>
		Existe(m) campo(s) vazio(s) ou invalido(s) no formulario!
<% } %>	
<br />
<br />
<button class="btn btn-danger" type="submit">Voltar</button>

</div>

</form>
</body>
</html>