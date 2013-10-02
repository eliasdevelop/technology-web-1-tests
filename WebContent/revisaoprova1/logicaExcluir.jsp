<%@page import="br.unit.web3.revisaopoo.Aluno"%>
<%@page import="br.unit.web3.revisaopoo.Matricula"%>
<%@page import="br.unit.web3.revisaopoo.Turma"%>
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
	Aluno aluno = new Aluno(mat, null, null, null, null, null);	
	Turma turma = new Turma();
	
	turma.excluirAluno(aluno);	
%>
<jsp:forward page="listaAlunos.jsp"></jsp:forward>
</body>
</html>