package br.ufsm.ceesp.beans;

import br.ufsm.ceesp.model.Equipe;
import br.ufsm.ceesp.model.OrdemServico;
import br.ufsm.ceesp.model.Rota;
import br.ufsm.ceesp.model.teste.Servico;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;

/**
 * Created by politecnico on 22/04/2016.
 */
@Repository
public class PlanejDinamicoDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public Equipe findEquipeByNumero(Long numero) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Equipe.class);
        criteria.add(Restrictions.eq("numero", numero));
        return (Equipe) criteria.uniqueResult();
    }

    @Transactional
    public OrdemServico findOrdemServicoByNumero(String numero) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(OrdemServico.class);
        criteria.add(Restrictions.eq("numero", numero));
        return (OrdemServico) criteria.uniqueResult();
    }

    @Transactional
    public Equipe findByCodigo(Long numero) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Equipe.class);
        criteria.add(Restrictions.eq("numero", numero));
        return (Equipe) criteria.uniqueResult();
    }

    @Transactional
    public Collection<Equipe> findEquipes() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Equipe.class);
        return criteria.list();
    }

    @Transactional
    public Collection<Rota> findRotasByEquipe(Long idEquipe) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Rota.class);
        criteria.add(Restrictions.eq("equipe.id", idEquipe));
        return criteria.list();
    }

    @Transactional
    public Servico findServicoById(Long id) {
        return (Servico) sessionFactory.getCurrentSession().get(Servico.class, id);
    }


    @Transactional
    public Collection<Rota> findRotaByIdPlanejada(Long idEquipe) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Rota.class);
        criteria.add(Restrictions.eq("equipe.id", idEquipe));
        criteria.add(Restrictions.eq("arquivoSaida.tipo", "Planejada"));
        return criteria.list();
    }

    @Transactional
    public Collection<Rota> findRotaByIdExecutada(Long idEquipe) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Rota.class);
        criteria.add(Restrictions.eq("equipe.id", idEquipe));
        criteria.add(Restrictions.eq("arquivosaida.tipo", "Executada"));
        return criteria.list();
    }
}
