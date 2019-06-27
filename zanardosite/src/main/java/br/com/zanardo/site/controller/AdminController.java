package br.com.zanardo.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.zanardo.site.zanardositebackend.dto.Usuario;
import br.com.zanardo.site.zanardositebackend.dao.UsuarioDao;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	UsuarioDao usuarioDao;
	
	@RequestMapping(value = {"","index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("admin/painel");
		mv.addObject("title","- Área administrativa");
		mv.addObject("painelClick",true);
		return mv;
	}
	
	@GetMapping("/senha")
	public ModelAndView trocarSenha(ModelMap model) {
		Usuario usuario = new Usuario();
		usuario = usuarioDao.get(1);
		usuario.setPassword("");
		model.addAttribute("usuario", usuario);
		
		ModelAndView mv = new ModelAndView("admin/painel", model);
		mv.addObject("senhaClick",true);
		return mv;
	}

	
	
}
