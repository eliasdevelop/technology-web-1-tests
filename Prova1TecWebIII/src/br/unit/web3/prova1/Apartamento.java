package br.unit.web3.prova1;

public class Apartamento {
	
	private String bloco;
	private int ap;
	
	public Apartamento(String bloco, int ap) {
		super();
		this.bloco = bloco;
		this.ap = ap;
	}

	public void setBloco(String bloco) {
		this.bloco = bloco;
	}

	public void setAp(int ap) {
		this.ap = ap;
	}
	
	@Override
	public String toString() {
		return bloco + ap;
	}

}
