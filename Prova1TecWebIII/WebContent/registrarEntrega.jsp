<%@page import="br.unit.web3.prova1.Principal"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="br.unit.web3.prova1.Pacote"%>
<%@page import="br.unit.web3.prova1.TipoDePacote"%>
<%@page import="java.util.Date"%>
<%@page import="br.unit.web3.prova1.Apartamento"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>
<%@ page errorPage = "error.jsp" %>
<%
	String apartamento = request.getParameter("apartamento");
	int sequencial = Integer.parseInt(request.getParameter("sequencial"));
	
	Principal  principal = new Principal();
	
	principal.registrarEntrega(apartamento, sequencial);
	
	String tipoPacote = request.getParameter("tipoPacote");
	String remetente = request.getParameter("remetente");
	String destinatario = request.getParameter("destinatario");
	
%>

<jsp:forward page="registroEntregaSucesso.jsp?&tipoPacote=<%= tipoPacote %>&remetente=<%= remetente %>&destinatario=<%= destinatario %>"></jsp:forward>
</body>
</html>