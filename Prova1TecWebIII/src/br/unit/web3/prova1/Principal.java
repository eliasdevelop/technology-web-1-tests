package br.unit.web3.prova1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Principal {
	
	
	
	public Principal() {
	}

	private Connection getConexao() throws SQLException, NamingException{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:jboss/datasources/ScaDS");
		Connection conn = ds.getConnection();
		return conn;
	}
	
	
	public void adicionarPacote(Pacote a) throws SQLException, NamingException{
		
			Connection conx = getConexao(); 
			String sql1 = "INSERT INTO pacotes (apartamento, remetente, destinatario, dataDeRegistro, tipoDePacote, valor) VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, a.getApartamento().toString());
				stmt1.setString(2, a.getRemetente());
				stmt1.setString(3, a.getDestinatario());
				stmt1.setDate(4, new java.sql.Date(a.getDataDeRegistro().getTime()));
				stmt1.setInt(5, a.getTipoDePacote().getTipoPacote());
				stmt1.setBigDecimal(6, a.getValor());
			stmt1.executeUpdate();
			stmt1.close();
			conx.close();	
	}
	
	public ArrayList<Pacote> listarPacotes(String apartamento){
		ArrayList<Pacote> listaPacotes = new ArrayList<Pacote>();
		
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM pacotes WHERE apartamento=?";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);	
				stmt1.setString(1, apartamento);
			ResultSet rslt = stmt1.executeQuery();
			while(rslt.next()){
				Apartamento apart = new Apartamento(rslt.getString(1).substring(1), Integer.parseInt(rslt.getString(1).substring(2,5)));
				Pacote pacote = new Pacote(apart, rslt.getInt(2), rslt.getString(3), rslt.getString(4), rslt.getDate(5), rslt.getDate(6), new TipoDePacote(rslt.getInt(7)), rslt.getBigDecimal(8));
				if(pacote.getDataDeEntrega() == null){
					listaPacotes.add(pacote);
				}
			}
			stmt1.close();
			conx.close();
			return listaPacotes;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<Pacote> listarPacotesEntregues(){
		ArrayList<Pacote> listaPacotes = new ArrayList<Pacote>();
		
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM pacotes";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);	
			ResultSet rslt = stmt1.executeQuery();
			while(rslt.next()){
				Apartamento apart = new Apartamento(rslt.getString(1).substring(1), Integer.parseInt(rslt.getString(1).substring(2,5)));
				Pacote pacote = new Pacote(apart, rslt.getInt(2), rslt.getString(3), rslt.getString(4), rslt.getDate(5), rslt.getDate(6), new TipoDePacote(rslt.getInt(7)), rslt.getBigDecimal(8));
				if(pacote.getDataDeEntrega() != null){
					listaPacotes.add(pacote);
				}
			}
			stmt1.close();
			conx.close();
			return listaPacotes;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public void registrarEntrega(String apartamento, int sequencial){
		try{
			Connection conx = getConexao(); 
			String sql1 = "UPDATE pacotes SET dataDeEntrega=? WHERE apartamento=? AND sequencial=?";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				Date data = new Date();
				stmt1.setDate(1, new java.sql.Date(data.getTime()));
				stmt1.setString(2, apartamento);
				stmt1.setInt(3, sequencial);
			stmt1.executeUpdate();
			stmt1.close();
			conx.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
