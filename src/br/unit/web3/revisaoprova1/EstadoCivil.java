package br.unit.web3.revisaoprova1;

/**
 * Classe que armazena o Estado Civil
 * @author Humberto Elias
 *
 */
public class EstadoCivil {
	
	/**
	 * Variavel que armazena o Estado Civil.
	 * 1 - Solteiro, 2 - Casado, 3 - Divorciado, 4 - Viuvo, 0 - N?o Informado
	 */
	private int estadoCivil;
	
	/**
	 * Monta o objeto EstadoCivil
	 * @param 1 - Solteiro, 2 - Casado, 3 - Divorciado, 4 - Viuvo, 0 - N?o Informado
	 */
	public EstadoCivil(int estadoCivil){
		this.estadoCivil = estadoCivil;
	}
	
	/**
	 * Metodo que retorna o estado civil armazenado
	 * @return 1 - Masculino ou 2 - Feminino
	 */
	public int getEstadoCivil(){
		return this.estadoCivil;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof EstadoCivil){
			EstadoCivil est = (EstadoCivil)obj;
			return est.estadoCivil == this.estadoCivil;
		}
		return false;
	}
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public String toString() {
		switch (estadoCivil) {
		case 1:
			return "Solteiro";
		case 2:
			return "Casado";
		case 3:
			return "Divorciado";
		case 4:
			return "Viuvo";
		default:
			return "N?o informado";
		}
	}

}
