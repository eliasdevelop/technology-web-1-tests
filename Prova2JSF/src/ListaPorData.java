import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import br.prova2.entity.Porto;
import br.prova2.sessionBean.GerenciadorPortoLocal;


public class ListaPorData {
	
	private ExternalContext ex = FacesContext.getCurrentInstance().getExternalContext();
	@EJB
	private GerenciadorPortoLocal gerenciador;
	
	private List<Porto> listaDatas;
	
	private Date dataInicio;
	private Date dataFim;
	
	public List<Porto> getListaDatas() {	
		listaDatas = gerenciador.consultarPermanencia(dataInicio, dataFim);
		if(listaDatas == null){
			listaDatas = new ArrayList<Porto>();
		}
		return listaDatas;
	}	

	public void cbListarPorDataActionListener(ActionEvent event) throws IOException {
		dataInicio =  (Date) ex.getRequestMap().get("dataInicio");
		dataFim =  (Date) ex.getRequestMap().get("dataFim");	
	}
	
	
}
