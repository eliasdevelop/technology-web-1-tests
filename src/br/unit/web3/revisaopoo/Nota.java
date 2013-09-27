package br.unit.web3.revisaopoo;

/**
 * Classe que armazena uma Nota
 * @author Humberto Elias
 *
 */
public class Nota implements Comparable<Nota>{
	
	/**
	 * Variavel que armazena uma Nota.
	 */
	private double valor;
	
	/**
	 * Monta o objeto Nota
	 * @param Valor da nota
	 * @throws NotaInvalidaException exceção quando a nota é menor que 0
	 */
	public Nota(double valor) throws NotaInvalidaException{
		if(valor < 0)
			throw new NotaInvalidaException();
		this.valor = valor;
	}
	
	/**
	 * Metodo que retorna a nota
	 * @return Valor da nota
	 */
	public double getNota(){
		return this.valor;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Nota){
			Nota nota = (Nota)obj;
			return nota.valor == this.valor;
		}
		return false;
	}
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	
	@Override
	public int compareTo(Nota n) {
		if (n.valor > this.valor)
			return 1;
		else if (this.valor > n.valor)
			return -1;
		else
			return 0;
	}
	
	@Override
	public String toString() {
		return String.format("%.2f",this.valor);
	}
	
}
