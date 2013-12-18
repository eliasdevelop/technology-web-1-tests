package br.prova2.sessionBean;

import java.util.Date;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import br.prova2.entity.Porto;

/**
 * Session Bean implementation class GerenciadorPorto
 */
@Stateless
@LocalBean
public interface GerenciadorPorto {

    public Porto registrarMovimento(Porto porto);
    
    public List<Porto> consultarPermanencia(Date dataInicio, Date dataFim);
    
    public Porto obterDadosRecibo(String idNavio, int sequencial);

}
