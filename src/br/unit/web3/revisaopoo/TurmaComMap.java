package br.unit.web3.revisaopoo;

import java.util.ArrayList;

/**
 * Classe responsavel por amarzenar todos os alunos
 * @author Humberto Elias
 **
 */
public class TurmaComMap {
	/**
	 * Lista de Alunos salvos na Turma
	 */
	private static ArrayList<Aluno> listaAlunos = new ArrayList<Aluno>();
	
	/**
	 * Metodo responsavel por adicionar um aluno na turma
	 * @param Um Aluno
	 * @throws AlunoExistenteException exce??o lan?ada quando ? inserido
	 * 			um aluno com um numero de matricula a existente.
	 */
	public void adicionarAluno(Aluno a) throws AlunoExistenteException{
		Aluno aluno = pesquisarAluno(a.getMatricula());
		if(aluno == null)
			listaAlunos.add(a);
		else
			throw new AlunoExistenteException();
	}
	
	/**
	 * Metodo de pesquisa de alunos na turma
	 * @param O numero da matricula de um aluno
	 * @return Retorna o Aluno encontrado
	 */
	public Aluno pesquisarAluno(Matricula matricula){
		for (Aluno item : listaAlunos) {
			if(item.getMatricula().equals(matricula))
				return item;
		}
		return null;
	}
	
	/**
	 * Metodo responsavel por editar informa??es de um aluno da lista
	 * @param Um aluno
	 */
	public void editarAluno(Aluno a){
		Aluno aluno = pesquisarAluno(a.getMatricula());
		if (aluno != null)
		{
			int index = listaAlunos.indexOf(aluno);
			listaAlunos.remove(index);
			listaAlunos.add(index, a);
		}
	}
	
	/**
	 * Metodo para a exclus?o de um aluno adicionado na turma
	 * @param Um aluno
	 */
	public void excluirAluno(Aluno a){
		Aluno aluno = pesquisarAluno(a.getMatricula());
		if (aluno != null)
			listaAlunos.remove(aluno);
	}
	
	/**
	 * Metodo que retorna todos os alunos da turma
	 * @return Lista de alunos da turma
	 */
	public ArrayList<Aluno> listar(){
		return listaAlunos;
	}

}
