package br.com.zanardo.site.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import br.com.zanardo.site.zanardositebackend.dao.UsuarioDao;
import br.com.zanardo.site.zanardositebackend.dto.Usuario;

@Component
public class UserHandler {

	@Autowired
	private UsuarioDao usuarioDao; 
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	public void addUser(Usuario user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		usuarioDao.add(user);
	}
	
}
