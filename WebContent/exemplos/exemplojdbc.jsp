<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>
<%
	Context ctx = new InitialContext();
	DataSource ds = (DataSource) ctx.lookup("java:jboss/datasources/ScaDS");
	Connection conn = ds.getConnection();
	
	/* int mat = Integer.parseInt(request.getParameter("mat"));
	String nome = request.getParameter("nome"); */
	
	String sql1 = "CREATE TABLE aluno ( matricula INTEGER NOT NULL PRIMARY KEY, nome VARCHAR(40) NOT NULL, NASCIMENTO DATE)";
	//String sql1 = "INSERT INTO aluno (matricula, nome) VALUES (?, ?)";
	//String sql1 = "SELECT * FROM aluno";
	Statement stmt1 = conn.createStatement();
	//stmt1.setInt(1, mat);
	//stmt1.setString(2, nome);
	/* ResultSet rslt = stmt1.executeQuery();
	while(rslt.next()){
		int matricula = rslt.getInt(1);
		String nomeAluno = rslt.getString(2);
		Date nascimento = rslt.getDate(3); */
	
	/* } */
	
	stmt1.executeUpdate(sql1);
	stmt1.close();
	
	conn.close();
 %>Tabela Criada.
</body>
</html>