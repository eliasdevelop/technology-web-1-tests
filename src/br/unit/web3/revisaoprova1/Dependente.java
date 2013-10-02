package br.unit.web3.revisaoprova1;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Dependente {

	private Matricula matricula;
	private int sequencia;
	private String nome;
	private Sexo sexo;
	private Date dataDeNascimento;

	public Dependente(Matricula matricula, int sequencia, String nome,
			Sexo sexo, Date dataDeNascimento) {
		super();
		this.matricula = matricula;
		this.sequencia = sequencia;
		this.nome = nome;
		this.sexo = sexo;
		this.dataDeNascimento = dataDeNascimento;
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

	public int getSequencia() {
		return sequencia;
	}

	@Override
	public String toString() {
	
		return "Funcionario: " + nome + '\n' + matricula + '\n' + sequencia 
				+ '\n' + sexo  + '\n' + "Data de Nascimento: "
				+ dataDeNascimento;
	}
}
