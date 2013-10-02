package br.unit.web3.revisaoprova1;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Funcionario {

	private Matricula matricula;
	private String nome;
	private Sexo sexo;
	private EstadoCivil estadoCivil;
	private Cpf cpf;
	private Date dataDeNascimento;
	private Date dataDeAdmissao;
	private double salario;
	private String senha;
	

	public Funcionario(Matricula matricula, String nome, Sexo sexo,
			EstadoCivil estadoCivil, Cpf cpf, Date dataDeNascimento,
			Date dataDeAdmissao, double salario, String senha) {
		super();
		this.matricula = matricula;
		this.nome = nome;
		this.sexo = sexo;
		this.estadoCivil = estadoCivil;
		this.cpf = cpf;
		this.dataDeNascimento = dataDeNascimento;
		this.dataDeAdmissao = dataDeAdmissao;
		this.salario = salario;
		this.senha = senha;
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
	
	public EstadoCivil getEstadoCivil() {
		return this.estadoCivil;
	}

	public Cpf getCpf() {
		return cpf;
	}

	public double getSalario() {
		return salario;
	}

	public String getSenha() {
		return senha;
	}

	public String getDataDeAdmissao() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		return sdf.format(dataDeAdmissao);
	}

	@Override
	public String toString() {
	
		return "Funcionario: " + nome + '\n' + matricula + '\n' + cpf 
				+ '\n' + sexo + '\n' + estadoCivil + '\n' + salario + '\n' + "Data de Nascimento: "
				+ dataDeNascimento + '\n'+ "Data de Admissão: " + dataDeAdmissao;
	}
}
