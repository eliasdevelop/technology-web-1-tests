package br.unit.web3.revisaopoo;

/**
 * Exceção lançada quando é cadastrado um aluno já existente
 * @author Humberto Elias
 *
 */
public class AlunoExistenteException extends Exception {

	private static final long serialVersionUID = 1L;

	public AlunoExistenteException(){
		super("Aluno já cadastrado");
	}
}
