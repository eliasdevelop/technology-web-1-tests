<%@page import="br.unit.web3.prova1.Pacote"%>
<%@page import="br.unit.web3.prova1.Principal"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap-responsive-min.css">
<script src="css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<h2 style="text-align: center">Lista de Pacotes Pendentes</h2>
	<a href="index.jsp"><button class="btn" type="button">Voltar</button></a>
	<%
		Principal principal = new Principal();
		String apartamento = request.getParameter("bloco") + request.getParameter("ap");
	 %>
		<div style=" margin-left:10%; margin-top:60px">
			<table class="table table-striped" style="width: 80%;">
				<tr>
					<td style="text-align: center"></td>
					<td style="text-align: center">Remetente</td>
					<td style="text-align: center">Destinatario</td>
					<td style="text-align: center">Data de Registro</td>
					<td style="text-align: center">Tipo de Pacote</td>
					<td style="text-align: center">Valor</td>
				</tr>
		<%
			if(principal.listarPacotes(apartamento) != null){
				for (Pacote item : principal.listarPacotes(apartamento)) {
		%>
					<tr>
						<td style="text-align: center"><a href="registrarEntrega.jsp?apartamento=<%= apartamento %>&sequencial=<%= item.getSequencial() %>&tipoPacote=<%= item.getTipoDePacote().toString() %>&remetente=<%= item.getRemetente() %>&destinatario=<%= item.getDestinatario() %>"><button class="btn" type="button">Registrar entrega</button></a></td>
						<td style="text-align: center"><%= item.getRemetente() %></td>
						<td style="text-align: center"><%= item.getDestinatario() %></td>
						<td style="text-align: center"><%= item.getDataDeRegistro() %></td>
						<td style="text-align: center"><%= item.getTipoDePacote().toString() %></td>
						<td style="text-align: center"><%= item.getValor() %></td>
					</tr>
		<%
				}
			} else	{	
		%>
					<tr>
						<td colspan="3" style="text-align: center">Não há dados para exibição</td>
					</tr>
		<%
			}	
		%>
			</table>
		</div>

</body>
</html>