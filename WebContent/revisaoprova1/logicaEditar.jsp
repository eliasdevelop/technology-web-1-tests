<%@page import="br.unit.web3.revisaopoo.Aluno"%>
<%@page import="br.unit.web3.revisaopoo.Nota"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.unit.web3.revisaopoo.EstadoCivil"%>
<%@page import="br.unit.web3.revisaopoo.Sexo"%>
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
<%@ page errorPage = "error.jsp" %>
<%
	Matricula mat = new Matricula(request.getParameter("matricula"));
	String nome = request.getParameter("nome");
	Sexo sexo = new Sexo(Integer.parseInt(request.getParameter("sexo")));
	EstadoCivil civ = new EstadoCivil(Integer.parseInt(request.getParameter("estadoCivil")));
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyy");	
	Date data = sdf.parse(request.getParameter("dataDeNascimento"));
	Nota[] notas = new Nota[3];
	notas[0] = new Nota(Double.parseDouble(request.getParameter("nota1")));
	notas[1] = new Nota(Double.parseDouble(request.getParameter("nota2")));
	notas[2] = new Nota(Double.parseDouble(request.getParameter("nota3")));
	
	Aluno aluno = new Aluno(mat, nome, sexo, civ, data, notas);
	
	Turma turma = new Turma();
	
	turma.editarAluno(aluno);	
%>

<jsp:forward page="listaAlunos.jsp"></jsp:forward>
</body>
</html>