<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Cadastrar novo pacote</title>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap-responsive-min.css">
<script src="css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<form class="form-horizontal" action="logicaCadastroNovoPacote.jsp" method="post">
		<h1 style="text-align: center">Cadastro de Pacote</h1>
		<div style="margin-top: 50px">
			<div class="control-group">
				<label class="control-label">Apartamento: </label>
				<div class="controls">
					<input type="text" name="bloco" placeholder="Bloco" maxlength="1"/>
					<input type="text" name="ap" placeholder="AP" maxlength="4"/>
				</div>							
			</div>
			<div class="control-group">
				<label class="control-label">Remetente: </label>
				<div class="controls">
					<input type="text" name="remetente"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Destinatario: </label>
				<div class="controls">
					<input type="text" name="destinatario"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Tipo do Pacote: </label>
				<div class="controls">
					<select name="tipoDePacote">
					<option value="1" >Envelope</option>
					<option value="2" >Caixa</option>
					<option value="3" >Saco</option>
					<option value="4" >Sacola</option>
					<option value="5" >Dinheiro</option>
					<option value="6" >Chaves</option>
					<option value="7" selected="selected">Outro</option>
				</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Valor: </label>
				<div class="controls">
					<input type="number" name="valor"/>
				</div>							
			</div>
			
			<div style="text-align: center;">
				<button class="btn btn-success" type="submit">Salvar</button>
				<a href="index.jsp"><button class="btn btn-danger" type="button">Voltar</button></a>
			</div>
		</div>
	</form>

</body>
</html>