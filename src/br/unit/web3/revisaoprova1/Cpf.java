package br.unit.web3.revisaoprova1;

public class Cpf {

	private String cpf;

	public Cpf(String matricula){
		this.cpf = matricula;
	}
	
	
	public String getCpf(){
		return this.cpf;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Cpf){
			Cpf mat = (Cpf)obj;
			return this.cpf.equals(mat.cpf);
		}
		return false;
	}
	
	@Override
	public String toString() {
		return  this.cpf;
	}
	
	@Override
	public int hashCode() {
		int hash = 0;
		for (int i = 0; i < cpf.length(); i++) {
			hash*= cpf.indexOf(i);
		}
		return hash;
	}

}
