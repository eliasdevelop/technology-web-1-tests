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
	Apartamento apartamento = new Apartamento(request.getParameter("bloco"), Integer.parseInt(request.getParameter("ap")));
	String remetente = request.getParameter("remetente");
	String destinatario = request.getParameter("destinatario");
	TipoDePacote tipoDePacote = new TipoDePacote(Integer.parseInt(request.getParameter("tipoDePacote")));
	BigDecimal valor = new BigDecimal(0);
	if(tipoDePacote.getTipoPacote() == 5){
		valor = new BigDecimal(request.getParameter("valor"));
	}
	Pacote pacote = new Pacote(apartamento, remetente, destinatario, tipoDePacote, valor);
	
	Principal  principal = new Principal();
	
	principal.adicionarPacote(pacote);
	
%>

<jsp:forward page="listarPacotesPendentes.jsp"></jsp:forward>
</body>
</html>