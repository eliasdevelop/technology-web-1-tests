<%@page import="br.unit.web3.exerciciostream.ProgressoTexto"%>
<%@page import="java.io.IOException"%>
<%@page import="br.unit.web3.exerciciostream.ProgressoWeb"%>
<%@page import="br.unit.web3.exerciciostream.Copia"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<title>Lista de Alunos</title>
</head>
	<body>
		<% 
		final Copia copia = new Copia("/Users/humbertoelias/Desktop/Projetos.zip", "/Users/humbertoelias/Desktop/Projetos2.zip");
		copia.setProgresso(new ProgressoWeb());
			new Thread(){
				public void run()  {
					try{
						copia.copiar();
					}catch(IOException e){
						e.printStackTrace();
					}
				}
			}.start();
		%>		
	</body>
	<script src="../css/bootstrap/js/bootstrap.min.js"></script>
	<jsp:forward page="loader.jsp"></jsp:forward>
</html>