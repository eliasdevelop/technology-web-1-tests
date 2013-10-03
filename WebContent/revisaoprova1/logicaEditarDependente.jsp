<%@page import="br.unit.web3.revisaoprova1.Dependente"%>
<%@page import="br.unit.web3.revisaoprova1.Principal"%>
<%@page import="br.unit.web3.revisaoprova1.Sexo"%>
<%@page import="br.unit.web3.revisaoprova1.Matricula"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page errorPage = "error.jsp" %>
<%
	Matricula mat = new Matricula(request.getParameter("matricula"));
	int sequencia = Integer.parseInt(request.getParameter("sequencia"));
	String nome = request.getParameter("nome");
	Sexo sexo = new Sexo(Integer.parseInt(request.getParameter("sexo")));
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");	
	Date dataNasc = sdf.parse(request.getParameter("dataDeNascimento"));
	
	Dependente dependente = new Dependente(mat, sequencia, nome, sexo, dataNasc);
	
	Principal principal = new Principal();
	
	principal.editarDependente(dependente);	
%>

<jsp:forward page="listaDependentes.jsp?matricula=<%= mat.getMatricula() %>"></jsp:forward>
</body>
</html>