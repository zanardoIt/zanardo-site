package br.com.zanardo.site.zanardositebackend.dao;

import java.util.List;
import br.com.zanardo.site.zanardositebackend.dto.Usuario;

public interface UsuarioDao {
	
	public Usuario get(int id);
	
	List<Usuario> list();
	
	public boolean add(Usuario usuario);
	
	public boolean update(Usuario usuario);
	
	public boolean delete(int id);

}
