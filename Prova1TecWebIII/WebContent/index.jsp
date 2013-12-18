<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap-responsive-min.css">
<script src="css/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h2 style="text-align: center">Pagina Inicial</h2>
	
	<form class="form-horizontal" action="listarPacotesPendentes.jsp" method="post">
			<h1 style="text-align: center">Dados do Apartamento</h1>
			<div style="margin-top: 50px">
				<div class="control-group">
					<label class="control-label">Bloco: </label>
					<div class="controls">
						<input type="text" name="bloco" MAXLENGTH="1"/>
					</div>							
				</div>
				<div class="control-group">
					<label class="control-label">Apartamento: </label>
					<div class="controls">
						<input type="text" name="ap" MAXLENGTH="4"/>
					</div>
				</div>
				<div style="text-align: center;">
					<button class="btn btn-success" type="submit">Listar pacotes pendentes</button>
					<a href="cadastrarNovoPacote.jsp"><button class="btn" type="button">Novo pacote</button></a>
					<a href="listarPacotesEntregues.jsp"><button class="btn" type="button">Listar pacotes entregues</button></a>
				</div>
			</div>
	</form>			
</body>
</html>