<%@page import="br.unit.web3.revisaoprova1.Funcionario"%>
<%@page import="br.unit.web3.revisaoprova1.Principal"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<script src="../css/bootstrap/js/bootstrap.min.js"></script>
<title>Lista de Funcionarios</title>
</head>
	<body>

		<h2 style="text-align: center">Lista de Funcionarios</h2>

	<%
		Principal principal = new Principal();
	 %>
		<div style=" margin-left:10%; margin-top:60px">
			<table class="table table-striped" style="width: 80%;">
				<tr>
					<td style="text-align: center"> <a href="cadastroFuncionario.jsp"><img src="../css/bootstrap/img/add.png" style="width:25px"></a></td>
					<td style="text-align: center">Matricula</td>
					<td style="text-align: center">Nome</td>
				</tr>
		<%
			if(principal.listarFuncionarios() != null){
				for (Funcionario item : principal.listarFuncionarios()) {
		%>
					<tr>
						<td style="text-align: center"><a href="editarFuncionario.jsp?matricula=<%= item.getMatricula() %>"><img src="../css/bootstrap/img/edit.png" style="width:25px"></a><span style="margin:5px"></span><a href="excluirFuncionario.jsp?matricula=<%=item.getMatricula()%>"><img src="../css/bootstrap/img/delete.png" style="width:25px"></a><span style="margin:5px"></span><a href="listaDependentes.jsp?matricula=<%=item.getMatricula()%>"><img src="../css/bootstrap/img/more.png" style="width:25px"></a></td>
						<td style="text-align: center"><%= item.getMatricula() %></td>
						<td style="text-align: center"><%= item.getNome() %></td>
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