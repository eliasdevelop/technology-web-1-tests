<%@page import="java.util.ArrayList"%>
<%@page import="br.unit.web3.revisaopoo.Turma"%>
<%@page import="br.unit.web3.revisaopoo.Aluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive-min.css">
<script src="../css/bootstrap/js/bootstrap.min.js"></script>
<title>Lista de Alunos</title>
</head>
	<body>

		<h2 style="text-align: center">Lista de Alunos</h2>

	<%
		Turma turma = new Turma();
	 %>
		<div style=" margin-left:10%; margin-top:60px">
			<table class="table table-striped" style="width: 80%;">
				<tr>
					<td style="text-align: center"> <a href="cadastroAluno.jsp"><img src="../css/bootstrap/img/add.png" style="width:25px"></a></td>
					<td style="text-align: center">Matricula</td>
					<td style="text-align: center">Nome</td>
				</tr>
		<%
			if(turma.listar() != null){
				for (Aluno item : turma.listar()) {
		%>
					<tr>
						<td style="text-align: center"><a href="editarAluno.jsp?matricula=<%=item.getMatricula()%>"><img src="../css/bootstrap/img/edit.png" style="width:25px"></a><span style="margin:5px"></span><a href="excluirAluno.jsp?matricula=<%=item.getMatricula()%>"><img src="../css/bootstrap/img/delete.png" style="width:25px"></a></td>
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