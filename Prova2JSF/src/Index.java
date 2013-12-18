import java.io.IOException;
import java.math.BigDecimal;

import javax.ejb.EJB;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import br.prova2.entity.Porto;
import br.prova2.sessionBean.GerenciadorPortoLocal;


public class Index {
	
	private ExternalContext ex = FacesContext.getCurrentInstance().getExternalContext();
	@EJB
	private GerenciadorPortoLocal gerenciador;

	public void cbRegistraMovimentoActionListener(ActionEvent event) throws IOException {
		Porto porto = new Porto();
		porto.setIdNavio(ex.getRequestMap().get("idNavio").toString());
		porto.setComandante(ex.getRequestMap().get("comandante").toString());
		porto.setNacionalidade(ex.getRequestMap().get("nacionalidade").toString());
		porto.setPreco((BigDecimal) ex.getRequestMap().get("preco"));
		Porto portoRetornado = gerenciador.registrarMovimento(porto);
		if(portoRetornado.getDataSaida() != null){
			//exibir mensagem "Saida de navio xxxx registrada em dd/mm/aaaa
			//exibir link para Emissao de Recibo passando idNavio e Sequencial
		}else{
			
		}
	}
}
