package br.unit.web3.revisaopoo;

/**
 * Exce��o lan�ada quando � cadastrado um aluno j� existente
 * @author Humberto Elias
 *
 */
public class AlunoExistenteException extends Exception {

	private static final long serialVersionUID = 1L;

	public AlunoExistenteException(){
		super("Aluno j� cadastrado");
	}
}
