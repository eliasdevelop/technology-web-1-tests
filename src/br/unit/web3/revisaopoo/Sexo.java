package br.unit.web3.revisaopoo;

/**
 * Classe que armazena o Sexo
 * @author Humberto Elias
 *
 */
public class Sexo {
		
	/**
	 * Variavel que armazena o sexo.
	 * 1 - Masculino, 2 - Feminino
	 */
	private int sexo;
	
	/**
	 * Monta o objeto Sexo
	 * @param 1 - Masculino ou 2 - Feminino
	 */
	public Sexo(int sexo){
		this.sexo = sexo;
	}
	
	/**
	 * Metodo que retorna o sexo armazenado
	 * @return 1 - Masculino ou 2 - Feminino
	 */
	public int getSexo(){
		return this.sexo;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Sexo){
			Sexo sex = (Sexo)obj;
			return sex.sexo == this.sexo;
		}
		return false;
	}
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public String toString() {
		if(this.sexo == 1)
			return "Masculino";
		return "Feminino";
	}

}
