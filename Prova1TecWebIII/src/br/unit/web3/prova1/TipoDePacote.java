package br.unit.web3.prova1;

public class TipoDePacote {
	
	/**
	 * Variavel que armazena o Tipo de Pacote.
	 * 1 - Envelope, 2 - Caixa, 3 - Saco, 4 - Sacola, 5 - Dinheiro, 6 - Chaves
	 * 7 - Outro, 0 - Não Informado
	 */
	private int tipoPacote;

	public TipoDePacote(int tipoPacote) {
		super();
		this.tipoPacote = tipoPacote;
	}

	public int getTipoPacote() {
		return tipoPacote;
	}
	
	@Override
	public String toString() {
		switch (tipoPacote) {
		case 1:
			return "Envelope";
		case 2:
			return "Caixa";
		case 3:
			return "Saco";
		case 4:
			return "Sacola";
		case 5:
			return "Dinheiro";
		case 6:
			return "Chaves";
		case 7:
			return "Outro";
		default:
			return "Não informado";
		}
	}

}
