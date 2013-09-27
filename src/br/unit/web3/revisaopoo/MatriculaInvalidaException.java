package br.unit.web3.revisaopoo;

/**
 * Exce��o lan�ada quando a Matricula informaad � invalida
 * @author Humberto Elias
 *
 */
public class MatriculaInvalidaException extends Exception {

	private static final long serialVersionUID = 1L;
	
	public MatriculaInvalidaException(){
		super("Matricula Invalida");
	}

}
