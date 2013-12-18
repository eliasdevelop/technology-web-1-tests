package br.prova2.sessionBean;

import br.prova2.entity.Porto;
import br.prova2.entity.PortoPK;

import java.util.Date;
import java.util.List;

import javax.ejb.Local;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 * Session Bean implementation class GerenciadorPortoLocal
 */
@Stateless
@Local(GerenciadorPorto.class)
@LocalBean
public class GerenciadorPortoLocal implements GerenciadorPorto {

	
	@PersistenceContext
	private EntityManager em;
	
    /**
     * Default constructor. 
     */
    public GerenciadorPortoLocal() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see GerenciadorPorto#consultarPermanencia(Date, Date)
     */
    public List<Porto> consultarPermanencia(Date dataInicio, Date dataFim) {
    	 TypedQuery<Porto> query = em.createNamedQuery("Porto.localizarPermanencias", Porto.class);
    	 query.setParameter("dataInicio", dataInicio);
    	 query.setParameter("dataFim", dataFim);
		 return query.getResultList();
    }

	/**
     * @see GerenciadorPorto#obterDadosRecibo(String, int)
     */
    public Porto obterDadosRecibo(String idNavio, int sequencial) {
    	PortoPK portoPK = new PortoPK();
    	portoPK.setIdNavio(idNavio);
    	portoPK.setSequencial(sequencial);
		Porto porto = em.find(Porto.class, portoPK);
        if (porto != null){
        	porto.setReciboEmitido(true);
        }
		return porto;
    }

	/**
     * @see GerenciadorPorto#registrarMovimento(Porto)
     */
    public Porto registrarMovimento(Porto porto) {
    	 TypedQuery<Porto> query = em.createNamedQuery("Porto.localizarNavio", Porto.class);
    	 query.setParameter("idNavio", porto.getIdNavio());
    	 List<Porto> listPorto = query.getResultList();
    	 if(listPorto.isEmpty()){
    		 porto.setSequencial(1);
    		 porto.setDataEntrada(new Date());
    		 porto.setReciboEmitido(false);
    		 em.persist(porto);
    		 return porto;
    	 }else{
    		 listPorto.get(0).setDataSaida(new Date());
    		 listPorto.get(0).setPreco(porto.getPreco());
    		 return listPorto.get(0);
    	 }
    }

}
