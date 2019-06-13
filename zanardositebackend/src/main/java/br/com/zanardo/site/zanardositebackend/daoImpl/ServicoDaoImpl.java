package br.com.zanardo.site.zanardositebackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.zanardo.site.zanardositebackend.dao.ServicoDao;
import br.com.zanardo.site.zanardositebackend.dto.Servico;

@Repository("ServicoDao")
@Transactional
public class ServicoDaoImpl implements ServicoDao {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	@Transactional(readOnly = true)
	public Servico get(int id) {
		try {
			String jpql = "from Servico s where s.id = :id";
			TypedQuery<Servico> query = entityManager.createQuery(jpql, Servico.class);
			query.setParameter("id", id);
			return query.getSingleResult();
		}
		catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Servico> list() {
		try {
			String jpql = "select s from Servico s";
			TypedQuery<Servico> query = entityManager.createQuery(jpql, Servico.class);
			return query.getResultList();
		}
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean add(Servico servico) {
		try {
			entityManager.persist(servico);
			return true;
		}
		catch (Exception ex){
			ex.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean update(Servico servico) {
		try {
			entityManager.merge(servico);
			return true;
		}
		catch (Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int id) {
		try {
			entityManager.remove(entityManager.getReference(Servico.class, id));
			return true;
		}
		catch (Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

}
