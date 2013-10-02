package br.unit.web3.revisaoprova1;

/**
 * Exce??o lan?ada quando ? cadastrado um aluno j? existente
 * @author Humberto Elias
 *
 */
public class FuncionarioExistenteException extends Exception {

	private static final long serialVersionUID = 1L;

	public FuncionarioExistenteException(){
		super("Funcionario já cadastrado");
	}
}
