import java.io.IOException;
import javax.ejb.EJB;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import br.prova2.entity.Porto;
import br.prova2.sessionBean.GerenciadorPortoLocal;


public class EmissaoRecibo {
	
	private ExternalContext ex = FacesContext.getCurrentInstance().getExternalContext();
	@EJB
	private GerenciadorPortoLocal gerenciador;
	
	private Porto portoReciboEmitido;
	
	public Porto getPortoReciboEmitido() {
		if (ex.getRequestMap().get("portoReciboEmitido") == null){
			portoReciboEmitido = new Porto();
		}else{
			portoReciboEmitido = (Porto) ex.getRequestMap().get("portoReciboEmitido");
		}
		return portoReciboEmitido;
	}
	
	public void cdEmitirReciboActionListener(ActionEvent event) throws IOException {
		Porto porto = (Porto)ex.getRequestMap().get("porto");	
		Porto portoReciboEmitido = gerenciador.obterDadosRecibo(porto.getIdNavio(), porto.getSequencial());
		ex.getRequestMap().put("portoReciboEmitido", portoReciboEmitido);	
	}

}



