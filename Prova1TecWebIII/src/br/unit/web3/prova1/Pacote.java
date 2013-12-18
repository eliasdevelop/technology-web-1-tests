package br.unit.web3.prova1;
import java.math.BigDecimal;
import java.util.Date;

public class Pacote {
	
	private Apartamento apartamento;
	private int sequencial;
	private String remetente;
	private String destinatario;
	private Date dataDeRegistro;
	private Date dataDeEntrega;
	private TipoDePacote tipoDePacote;
	private BigDecimal valor;
	
	public Pacote(Apartamento apartamento, String remetente, String destinatario, TipoDePacote tipoDePacote, BigDecimal valor) {
		super();
		this.apartamento = apartamento;
		this.remetente = remetente;
		this.destinatario = destinatario;
		this.dataDeRegistro = new Date();
		this.tipoDePacote = tipoDePacote;
		this.valor = valor;
	}

	public Pacote(Apartamento apartamento, int sequencial, String remetente,
			String destinatario, Date dataDeRegistro, Date dataDeEntrega,
			TipoDePacote tipoDePacote, BigDecimal valor) {
		super();
		this.apartamento = apartamento;
		this.sequencial = sequencial;
		this.remetente = remetente;
		this.destinatario = destinatario;
		this.dataDeRegistro = dataDeRegistro;
		this.dataDeEntrega = dataDeEntrega;
		this.tipoDePacote = tipoDePacote;
		this.valor = valor;
	}



	public Apartamento getApartamento() {
		return apartamento;
	}

	public int getSequencial() {
		return sequencial;
	}

	public String getRemetente() {
		return remetente;
	}

	public String getDestinatario() {
		return destinatario;
	}

	public Date getDataDeRegistro() {
		return dataDeRegistro;
	}

	public Date getDataDeEntrega() {
		return dataDeEntrega;
	}

	public TipoDePacote getTipoDePacote() {
		return tipoDePacote;
	}

	public BigDecimal getValor() {
		return valor;
	}
}
