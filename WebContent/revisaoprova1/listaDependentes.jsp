<%@page import="br.unit.web3.revisaoprova1.Matricula"%>
<%@page import="br.unit.web3.revisaoprova1.Dependente"%>
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
<title>Lista de Dependentes</title>
</head>
	<body>

		<h2 style="text-align: center">Lista de Dependentes</h2>
		<a href="listaFuncionarios.jsp"><button class="btn" type="button">Funcionarios</button></a>
	<%
		Principal principal = new Principal();
		String mat = request.getParameter("matricula");
	 %>
		<div style=" margin-left:10%; margin-top:60px">
			<table class="table table-striped" style="width: 80%;">
				<tr>
					<td style="text-align: center"> <a href="cadastroDependente.jsp?matricula=<%= mat %>"><img src="../css/bootstrap/img/add.png" style="width:25px"></a></td>
					<td style="text-align: center">Sequencia</td>
					<td style="text-align: center">Nome</td>
				</tr>
		<%
			if(principal.listarDependentes(mat) != null){
				for (Dependente item : principal.listarDependentes(mat)) {
		%>
					<tr>
						<td style="text-align: center"><a href="editarDependente.jsp?matricula=<%= item.getMatricula() %>&sequencia=<%= item.getSequencia() %>"><img src="../css/bootstrap/img/edit.png" style="width:25px"></a><span style="margin:5px"></span><a href="excluirDependente.jsp?matricula=<%=item.getMatricula()%>&sequencia=<%= item.getSequencia() %>"><img src="../css/bootstrap/img/delete.png" style="width:25px"></a></td>
						<td style="text-align: center"><%= item.getSequencia() %></td>
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