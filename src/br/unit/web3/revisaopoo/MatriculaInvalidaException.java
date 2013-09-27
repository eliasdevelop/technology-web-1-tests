package br.unit.web3.revisaopoo;

/**
 * Exceção lançada quando a Matricula informaad é invalida
 * @author Humberto Elias
 *
 */
public class MatriculaInvalidaException extends Exception {

	private static final long serialVersionUID = 1L;
	
	public MatriculaInvalidaException(){
		super("Matricula Invalida");
	}

}
