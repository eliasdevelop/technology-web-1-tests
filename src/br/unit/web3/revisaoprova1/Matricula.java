package br.unit.web3.revisaoprova1;

/**
 * classe que armazena a matricula
 * @author Humberto Elias
 *
 */

public class Matricula {

	private String matricula;

	/**
	 * Monta um objeto do tipo Matricula
	 * @param matricula
	 * @throws MatriculaInvalidaException 
	 */
	public Matricula(String matricula) throws MatriculaInvalidaException{
		if(Integer.parseInt(matricula) < 0)
			throw new MatriculaInvalidaException();
		this.matricula = matricula;
	}
	
	
	/**
	 * Retorna a matricula
	 * @return matricula
	 */
	public String getMatricula(){
		return this.matricula;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Matricula){
			Matricula mat = (Matricula)obj;
			return this.matricula.equals(mat.matricula);
		}
		return false;
	}
	
	@Override
	public String toString() {
		return  this.matricula;
	}
	
	@Override
	public int hashCode() {
		int hash = 0;
		for (int i = 0; i < matricula.length(); i++) {
			hash*= matricula.indexOf(i);
		}
		return hash;
	}

}
