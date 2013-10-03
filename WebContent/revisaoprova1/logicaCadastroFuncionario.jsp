<%@page import="br.unit.web3.revisaoprova1.Cpf"%>
<%@page import="br.unit.web3.revisaoprova1.Principal"%>
<%@page import="br.unit.web3.revisaoprova1.Funcionario"%>
<%@page import="br.unit.web3.revisaoprova1.EstadoCivil"%>
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
	String nome = request.getParameter("nome");
	Sexo sexo = new Sexo(Integer.parseInt(request.getParameter("sexo")));
	Cpf cpf = new Cpf(request.getParameter("cpf"));
	EstadoCivil civ = new EstadoCivil(Integer.parseInt(request.getParameter("estadoCivil")));
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");	
	Date dataNasc = sdf.parse(request.getParameter("dataDeNascimento"));
	Date dataAdmis = sdf.parse(request.getParameter("dataDeAdmissao"));
	double salario = Double.parseDouble(request.getParameter("salario"));
	String senha = request.getParameter("senha");
	
	Funcionario funcionario = new Funcionario(mat, nome, sexo, civ, cpf, dataNasc, dataAdmis, salario, senha);
	
	Principal principal = new Principal();
	
	principal.adicionarFuncionario(funcionario);
	
%>

<jsp:forward page="listaFuncionarios.jsp"></jsp:forward>
</body>
</html>