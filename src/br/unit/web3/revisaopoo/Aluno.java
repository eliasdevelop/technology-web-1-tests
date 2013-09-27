package br.unit.web3.revisaopoo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Aluno {

	private Matricula matricula;
	private String nome;
	private Sexo sexo;
	private EstadoCivil estadoCivil;
	private Date dataDeNascimento;
	private Nota[] notas;

	public Aluno(Matricula matricula, String nome, Sexo sexo,
			EstadoCivil estadoCivil, Date dataDeNascimento, Nota[] notas) {
		this.matricula = matricula;
		this.nome = nome;
		this.sexo = sexo;
		this.estadoCivil = estadoCivil;
		this.dataDeNascimento = dataDeNascimento;
		this.notas = new Nota[3]; 
		this.notas = notas;
	}

	public String getNome() {
		return this.nome;
	}

	public String getDataDeNascimento() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		return sdf.format(dataDeNascimento);
	}
	
	public Matricula getMatricula() {
		return this.matricula;
	}
	
	public Sexo getSexo() {
		return this.sexo;
	}
	
	public Nota[] getNotas() {
		return this.notas;
	}
	
	public EstadoCivil getEstadoCivil() {
		return this.estadoCivil;
	}
	
	public Nota getMedia() throws NotaInvalidaException{
		return new Nota((this.notas[0].getNota() + this.notas[1].getNota() +this. notas[2].getNota()) / 3);
	}

	@Override
	public String toString() {
		String retorno = "Aluno: " + nome + '\n' + matricula
				+ '\n' + sexo + '\n' + estadoCivil + '\n' + "Data de Nascimento: "
				+ dataDeNascimento + '\n';
		String nota = "";
		for (int i = 0; i < notas.length; i++) {
			nota += (i + 1) + "ª " + notas[i] + '\n';
		}
		try {
			return retorno + nota + "Media: " + getMedia();
		} catch (NotaInvalidaException e) {
			return e.getMessage();
		}
	}
}
