package br.unit.web3.revisaoprova1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Principal {
	
	
	
	public Principal() throws SQLException, NamingException {
//		Connection conx = getConexao(); 
//		String sql1 = "CREATE TABLE funcionarios ( matricula VARCHAR(20) NOT NULL PRIMARY KEY, nome VARCHAR(40) NOT NULL, sexo INTEGER, estadoCivil INTEGER, cpf VARCHAR(12) NOT NULL, dataNascimento VARCHAR(10), dataAdmissao VARCHAR(10), salario FLOAT, senha VARCHAR(20))";
//		String sql2 = "CREATE TABLE dependentes ( matricula VARCHAR(20) NOT NULL, sequencia INTEGER, nome VARCHAR(40) NOT NULL, sexo INTEGER, dataNascimento VARCHAR(10), PRIMARY KEY (matricula, sequencia))";
//		Statement stmt1 = conx.createStatement();
//		stmt1.executeUpdate(sql1);
//		stmt1.executeUpdate(sql2);
//		stmt1.close();
//		conx.close();	
	}

	private Connection getConexao() throws SQLException, NamingException{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:jboss/datasources/ScaDS");
		Connection conn = ds.getConnection();
		return conn;
	}
	
	
	public void adicionarFuncionario(Funcionario a) throws FuncionarioExistenteException{
		try{
			Connection conx = getConexao(); 
			String sql1 = "INSERT INTO funcionarios (matricula, nome, sexo, estadoCivil, cpf, dataNascimento, dataAdmissao, salario, senha) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, a.getMatricula().getMatricula());
				stmt1.setString(2, a.getNome());
				stmt1.setInt(3, a.getSexo().getSexo());
				stmt1.setInt(4, a.getEstadoCivil().getEstadoCivil());
				stmt1.setString(5, a.getCpf().getCpf());
				stmt1.setString(6, a.getDataDeNascimento());
				stmt1.setString(7, a.getDataDeAdmissao());
				stmt1.setDouble(8, a.getSalario());
				stmt1.setString(9, a.getSenha());
			stmt1.executeUpdate();
			stmt1.close();
			conx.close();
			
		}catch(Exception e){
			throw new FuncionarioExistenteException();
		}
		
	}
	
	public void adicionarDependente(Dependente a) throws FuncionarioExistenteException{
		try{
			Connection conx = getConexao(); 
			String sql1 = "INSERT INTO dependentes (matricula, nome, sexo, dataNascimento, sequencia) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, a.getMatricula().getMatricula());
				stmt1.setString(2, a.getNome());
				stmt1.setInt(3, a.getSexo().getSexo());
				stmt1.setString(4, a.getDataDeNascimento());
				stmt1.setInt(5, a.getSequencia());
			stmt1.executeUpdate();
			stmt1.close();
			conx.close();
			
		}catch(Exception e){
			throw new FuncionarioExistenteException();
		}
		
	}
	

	public Funcionario pesquisarFuncionario(Matricula matricula){
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM funcionarios WHERE matricula=?";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, matricula.getMatricula());	
			
			ResultSet rslt = stmt1.executeQuery();
			if(rslt.next()){
				Funcionario funcionario = new Funcionario(new Matricula(rslt.getString(1)), rslt.getString(2), new Sexo(rslt.getInt(3)), new EstadoCivil(rslt.getInt(4)), new Cpf(rslt.getString(5)), new Date(rslt.getString(6)), new Date(rslt.getString(7)), rslt.getDouble(8), rslt.getString(9));
				stmt1.close();
				conx.close();
				return funcionario;	
			}else{
				stmt1.close();
				conx.close();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public Dependente pesquisarDependente(Matricula matricula, int sequencia){
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM dependentes WHERE matricula=? AND sequencia=?";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, matricula.getMatricula());
				stmt1.setInt(2, sequencia);
			
			ResultSet rslt = stmt1.executeQuery();
			if(rslt.next()){
				Dependente dependente = new Dependente(new Matricula(rslt.getString(1)), rslt.getInt(2), rslt.getString(3), new Sexo(rslt.getInt(4)), new Date(rslt.getString(5)));
				stmt1.close();
				conx.close();
				return dependente;	
			}else{
				stmt1.close();
				conx.close();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public void editarFuncionario(Funcionario a){
		Funcionario funcionario = pesquisarFuncionario(a.getMatricula());
		if (funcionario != null)
		{
			try{
				Connection conx = getConexao(); 
				String sql1 = "UPDATE funcionarios SET nome=?, sexo=?, estadoCivil=?, cpf=?,  dataNascimento=?, dataAdmissao=?, salario=?, senha=? WHERE matricula=?";
				PreparedStatement stmt1 = conx.prepareStatement(sql1);
					stmt1.setString(1, a.getNome());
					stmt1.setInt(2, a.getSexo().getSexo());
					stmt1.setInt(3, a.getEstadoCivil().getEstadoCivil());
					stmt1.setString(4, a.getCpf().getCpf());
					stmt1.setString(5, a.getDataDeNascimento());
					stmt1.setString(6, a.getDataDeAdmissao());
					stmt1.setDouble(7, a.getSalario());
					stmt1.setString(8,a.getSenha());
					stmt1.setString(9, a.getMatricula().getMatricula());
				stmt1.executeUpdate();
				stmt1.close();
				conx.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	public void editarDependente(Dependente a){
		Dependente dependente = pesquisarDependente(a.getMatricula(), a.getSequencia());
		if (dependente != null)
		{
			try{
				Connection conx = getConexao(); 
				String sql1 = "UPDATE dependentes SET nome=?, sexo=?, dataNascimento=? WHERE matricula=? AND sequencia=?";
				PreparedStatement stmt1 = conx.prepareStatement(sql1);
					stmt1.setString(1, a.getNome());
					stmt1.setInt(2, a.getSexo().getSexo());
					stmt1.setString(3, a.getDataDeNascimento());
					stmt1.setString(4, a.getMatricula().getMatricula());
					stmt1.setInt(5, a.getSequencia());
				stmt1.executeUpdate();
				stmt1.close();
				conx.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	public void excluirFuncionario(Funcionario a){
		Funcionario funcionario = pesquisarFuncionario(a.getMatricula());
		if (funcionario != null)
			try{
				Connection conx = getConexao(); 
				String sql1 = "DELETE funcionarios WHERE matricula=?";
				PreparedStatement stmt1 = conx.prepareStatement(sql1);
					stmt1.setString(1, a.getMatricula().getMatricula());
				stmt1.executeUpdate();
				stmt1.close();
				conx.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
	}
	
	public void excluirDependente(Dependente a){
		Dependente dependente = pesquisarDependente(a.getMatricula(), a.getSequencia());
		if (dependente != null)
			try{
				Connection conx = getConexao(); 
				String sql1 = "DELETE dependentes WHERE matricula=? AND sequencia=?";
				PreparedStatement stmt1 = conx.prepareStatement(sql1);
					stmt1.setString(1, a.getMatricula().getMatricula());
					stmt1.setInt(2, a.getSequencia());
				stmt1.executeUpdate();
				stmt1.close();
				conx.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
	}
	
	public ArrayList<Funcionario> listarFuncionarios(){
		ArrayList<Funcionario> listaFuncionarios = new ArrayList<Funcionario>();
		
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM funcionarios";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);	
			
			ResultSet rslt = stmt1.executeQuery();
			while(rslt.next()){
				Funcionario funcionario = new Funcionario(new Matricula(rslt.getString(1)), rslt.getString(2), new Sexo(rslt.getInt(3)), new EstadoCivil(rslt.getInt(4)), new Cpf(rslt.getString(5)), new Date(rslt.getString(6)), new Date(rslt.getString(7)), rslt.getDouble(8), rslt.getString(9));
				listaFuncionarios.add(funcionario);
			}
			stmt1.close();
			conx.close();
			return listaFuncionarios;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<Dependente> listarDependentes(String matricula){
		ArrayList<Dependente> listaDependentes = new ArrayList<Dependente>();
		
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM dependentes WHERE matricula=?";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);	
				stmt1.setString(1, matricula);
			ResultSet rslt = stmt1.executeQuery();
			while(rslt.next()){
				Dependente dependente = new Dependente(new Matricula(rslt.getString(1)), rslt.getInt(2), rslt.getString(3), new Sexo(rslt.getInt(4)), new Date(rslt.getString(5)));
				listaDependentes.add(dependente);
			}
			stmt1.close();
			conx.close();
			return listaDependentes;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
