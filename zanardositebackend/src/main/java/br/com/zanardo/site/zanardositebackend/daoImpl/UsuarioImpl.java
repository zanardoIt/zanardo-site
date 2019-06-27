package br.com.zanardo.site.zanardositebackend.daoImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import br.com.zanardo.site.zanardositebackend.dao.UsuarioDao;
import br.com.zanardo.site.zanardositebackend.dto.Usuario;

@Repository("UsuarioDao")
@Transactional
public class UsuarioImpl implements UsuarioDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	@Transactional(readOnly = true)
	public Usuario get(int id) {
		try {
			String jpql = "from Usuario u where u.id = :id";
			TypedQuery<Usuario> query = entityManager.createQuery(jpql, Usuario.class);
			query.setParameter("id", id);
			return query.getSingleResult();
		}
		catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Usuario> list() {
		try {
			String jpql = "select u from Usuario u";
			TypedQuery<Usuario> query = entityManager.createQuery(jpql, Usuario.class);
			return query.getResultList();
		}
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean add(Usuario usuario) {
		try {
			entityManager.persist(usuario);
			return true;
		}
		catch (Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Usuario usuario) {
		try {
			entityManager.merge(usuario);
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
			entityManager.remove(entityManager.getReference(Usuario.class, id));
			return true;
		}
		catch (Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

}
