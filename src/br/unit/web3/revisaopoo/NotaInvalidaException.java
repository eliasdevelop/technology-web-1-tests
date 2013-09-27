package br.unit.web3.revisaopoo;

/**
 * Exceção lançada quando a nota for menor que 0
 * @author Humberto Elias
 *
 */
public class NotaInvalidaException extends Exception {
	
	private static final long serialVersionUID = 1L;

	public NotaInvalidaException(){
		super("Nota Invalida");
	}

}
