package br.unit.web3.revisaopoo;

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

/**
 * Classe responsavel por amarzenar todos os alunos
 * @author Humberto Elias
 **
 */
public class Turma {

	
//	public Turma() throws SQLException, NamingException {
//		Connection conx = getConexao(); 
//		String sql1 = "CREATE TABLE turma ( matricula VARCHAR(20) NOT NULL PRIMARY KEY, nome VARCHAR(40) NOT NULL, sexo INTEGER, estadoCivil INTEGER, dataNascimento VARCHAR(10), nota1 FLOAT, nota2 FLOAT, nota3 FLOAT)";
//		Statement stmt1 = conx.createStatement();
//		stmt1.executeUpdate(sql1);
//		stmt1.close();
//		conx.close();	
//	}

	private Connection getConexao() throws SQLException, NamingException{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:jboss/datasources/ScaDS");
		Connection conn = ds.getConnection();
		return conn;
	}
	
	/**
	 * Metodo responsavel por adicionar um aluno na turma
	 * @param Um Aluno
	 * @throws AlunoExistenteException exce��o lan�ada quando � inserido
	 * 			um aluno com um numero de matricula a existente.
	 */
	public void adicionarAluno(Aluno a) throws AlunoExistenteException{
		try{
			Connection conx = getConexao(); 
			String sql1 = "INSERT INTO turma (matricula, nome, sexo, estadoCivil, dataNascimento, nota1, nota2, nota3) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, a.getMatricula().getMatricula());
				stmt1.setString(2, a.getNome());
				stmt1.setInt(3, a.getSexo().getSexo());
				stmt1.setInt(4, a.getEstadoCivil().getEstadoCivil());
				stmt1.setString(5, a.getDataDeNascimento());
				Nota notas[] = a.getNotas();
				stmt1.setDouble(6, notas[0].getNota());
				stmt1.setDouble(7, notas[1].getNota());
				stmt1.setDouble(8, notas[2].getNota());
			stmt1.executeUpdate();
			stmt1.close();
			conx.close();
			
		}catch(Exception e){
			throw new AlunoExistenteException();
		}
		
	}
	
	/**
	 * Metodo de pesquisa de alunos na turma
	 * @param O numero da matricula de um aluno
	 * @return Retorna o Aluno encontrado
	 */
	public Aluno pesquisarAluno(Matricula matricula){
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM turma WHERE matricula=?";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);
				stmt1.setString(1, matricula.getMatricula());	
			
			ResultSet rslt = stmt1.executeQuery();
			if(rslt.next()){
				Nota[] nota = new Nota[3];
				nota[0] = new Nota(rslt.getDouble(6));
				nota[1] = new Nota(rslt.getDouble(7));
				nota[2] = new Nota(rslt.getDouble(8));
				Aluno aluno = new Aluno(new Matricula(rslt.getString(1)), rslt.getString(2), new Sexo(rslt.getInt(3)), new EstadoCivil(rslt.getInt(4)), new Date(rslt.getString(5)), nota);
				stmt1.close();
				conx.close();
				return aluno;	
			}else{
				stmt1.close();
				conx.close();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * Metodo responsavel por editar informa��es de um aluno da lista
	 * @param Um aluno
	 */
	public void editarAluno(Aluno a){
		Aluno aluno = pesquisarAluno(a.getMatricula());
		if (aluno != null)
		{
			try{
				Connection conx = getConexao(); 
				String sql1 = "UPDATE turma SET nome=?, sexo=?, estadoCivil=?, dataNascimento=?, nota1=?, nota2=?, nota3=? WHERE matricula=?";
				PreparedStatement stmt1 = conx.prepareStatement(sql1);
					stmt1.setString(1, a.getNome());
					stmt1.setInt(2, a.getSexo().getSexo());
					stmt1.setInt(3, a.getEstadoCivil().getEstadoCivil());
					stmt1.setString(4, a.getDataDeNascimento());
					Nota notas[] = a.getNotas();
					stmt1.setDouble(5, notas[0].getNota());
					stmt1.setDouble(6, notas[1].getNota());
					stmt1.setDouble(7, notas[2].getNota());
					stmt1.setString(8, a.getMatricula().getMatricula());
				stmt1.executeUpdate();
				stmt1.close();
				conx.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * Metodo para a exclus�o de um aluno adicionado na turma
	 * @param Um aluno
	 */
	public void excluirAluno(Aluno a){
		Aluno aluno = pesquisarAluno(a.getMatricula());
		if (aluno != null)
			try{
				Connection conx = getConexao(); 
				String sql1 = "DELETE turma WHERE matricula=?";
				PreparedStatement stmt1 = conx.prepareStatement(sql1);
					stmt1.setString(1, a.getMatricula().getMatricula());
				stmt1.executeUpdate();
				stmt1.close();
				conx.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
	}
	
	/**
	 * Metodo que retorna todos os alunos da turma
	 * @return Lista de alunos da turma
	 */
	public ArrayList<Aluno> listar(){
		ArrayList<Aluno> listaAlunos = new ArrayList<Aluno>();
		
		try{
			Connection conx = getConexao(); 
			String sql1 = "SELECT * FROM turma";
			PreparedStatement stmt1 = conx.prepareStatement(sql1);	
			
			ResultSet rslt = stmt1.executeQuery();
			while(rslt.next()){
				Nota[] nota = new Nota[3];
				nota[0] = new Nota(rslt.getDouble(6));
				nota[1] = new Nota(rslt.getDouble(7));
				nota[2] = new Nota(rslt.getDouble(8));
				Aluno aluno = new Aluno(new Matricula(rslt.getString(1)), rslt.getString(2), new Sexo(rslt.getInt(3)), new EstadoCivil(rslt.getInt(4)), new Date(rslt.getString(5)), nota);
				listaAlunos.add(aluno);
			}
			stmt1.close();
			conx.close();
			return listaAlunos;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
