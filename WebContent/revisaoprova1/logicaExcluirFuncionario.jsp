<%@page import="br.unit.web3.revisaoprova1.Principal"%>
<%@page import="br.unit.web3.revisaoprova1.Funcionario"%>
<%@page import="br.unit.web3.revisaoprova1.Matricula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Matricula mat = new Matricula(request.getParameter("matricula"));
	Funcionario funcionario = new Funcionario(mat, null, null, null,  null, null, null, 0, null);
	Principal principal = new Principal();
	
	principal.excluirFuncionario(funcionario);	
%>
<jsp:forward page="listaFuncionarios.jsp"></jsp:forward>
</body>
</html>