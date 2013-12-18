package br.prova2.entity;

import java.io.Serializable;
import java.lang.String;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Porto
 *
 */
@Entity
 
@IdClass(PortoPK.class)
@Table(catalog = "H2", schema = "PUBLIC", name = "PORTO")
@NamedQueries({
		
	@NamedQuery(name = "Porto.localizarNavio", query = "SELECT o FROM Porto o WHERE o.idNavio = :idNavio AND o.dataSaida is null"),
		
	@NamedQuery(name = "Porto.localizarPermanencias", query = "SELECT o FROM Porto o WHERE o.dataEntrada > :dataInicio AND o.dataEntrada < :dataFim") 
})
public class Porto implements Serializable {

	   
	@Id
	@Column(name = "IDNAVIO")
	private String idNavio;   
	@Id
	@Column(name = "SEQUENCIAL")
	private int sequencial;
	@Column(name = "DATAENTRADA")
	private Date dataEntrada;
	@Column(name = "DATASAIDA")
	private Date dataSaida;
	@Column(name = "COMANDANTE")
	private String comandante;
	@Column(name = "NACIONALIDADE")
	private String nacionalidade;
	@Column(name = "PRECO")
	private BigDecimal preco;
	@Column(name = "RECIBOEMITIDO")
	private boolean reciboEmitido;
	private static final long serialVersionUID = 1L;

	public Porto() {
		super();
	}   
	public String getIdNavio() {
		return this.idNavio;
	}

	public void setIdNavio(String idNavio) {
		this.idNavio = idNavio;
	}   
	public int getSequencial() {
		return this.sequencial;
	}

	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}   
	public Date getDataEntrada() {
		return this.dataEntrada;
	}

	public void setDataEntrada(Date dataEntrada) {
		this.dataEntrada = dataEntrada;
	}   
	public Date getDataSaida() {
		return this.dataSaida;
	}

	public void setDataSaida(Date dataSaida) {
		this.dataSaida = dataSaida;
	}   
	public String getComandante() {
		return this.comandante;
	}

	public void setComandante(String comandante) {
		this.comandante = comandante;
	}   
	public String getNacionalidade() {
		return this.nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}   
	public BigDecimal getPreco() {
		return this.preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}   
	public boolean getReciboEmitido() {
		return this.reciboEmitido;
	}

	public void setReciboEmitido(boolean reciboEmitido) {
		this.reciboEmitido = reciboEmitido;
	}
   
}
