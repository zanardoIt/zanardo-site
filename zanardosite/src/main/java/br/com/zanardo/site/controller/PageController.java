package br.com.zanardo.site.controller;

import javax.resource.spi.work.SecurityContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.zanardo.site.exception.ProductNotFoundException;
import br.com.zanardo.site.zanardositebackend.dao.ServicoDao;
import br.com.zanardo.site.zanardositebackend.dao.UsuarioDao;
import br.com.zanardo.site.zanardositebackend.dto.Usuario;

@Controller
@RequestMapping(value = "/")
public class PageController {
	
	@Autowired
	private ServicoDao servicoDao; 
		
	@Autowired
	private UsuarioDao usuarioDao; 
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value = {"","/home","/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","- Home");
		mv.addObject("clickHome",true);
		return mv;
	}
	
	@RequestMapping(value = {"/orcamento"})
	public ModelAndView orcamento() throws Exception {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","- Orçamentos");
		mv.addObject("clickOrcamento",true);
		mv.addObject("servicos", servicoDao.list());
		mv.addObject("servicos", servicoDao.get(7));
		return mv;
	}
	
	@RequestMapping(value = {"/login"})
	public ModelAndView login(@RequestParam(name="error", required = false) String error, 
			@RequestParam(name="logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("login");
		
		if(error != null) {
			mv.addObject("error","Login e senha inválidos.");
		}
		
		if(logout != null) {
			mv.addObject("logout","Desconectado com sucesso.");
		}
		
		mv.addObject("title","- Login");
		return mv;
	}
	
	@RequestMapping(value = {"/access-denied"})
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("title","403 - Nao autorizado.");
		mv.addObject("errorTitle","Falha de autorização para acessar a página.");
		mv.addObject("errorDescription","Você não está autorizado a acessar esta página.");
		return mv;
	}
	
	@RequestMapping(value = {"/logout"})
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if(auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:login?logout";
	}
	
	@RequestMapping(value = {"/test/{variable}"})
	public ModelAndView test(@PathVariable("variable") String value) {
		ModelAndView mv = new ModelAndView("page");
		if (value == null) {
			value = "A Variável estava vázia";
		}
		mv.addObject("greeting",value);
		return mv;
	}
	
	
	public static class EmailJsonResponse {
		private String nome;
		private String email;
		private String telefone;
		private String mensagem;
		
		/*
		public EmailJsonResponse(String nome) {
			this.nome = nome;
		}
		*/
		
		public EmailJsonResponse() {
	        super();
	    }
		
		public void setNome(String value) {
			this.nome = value;
		}
		
		public String getNome() {
			return this.nome;
		}
		
		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getTelefone() {
			return telefone;
		}

		public void setTelefone(String telefone) {
			this.telefone = telefone;
		}

		public String getMensagem() {
			return mensagem;
		}

		public void setMensagem(String mensagem) {
			this.mensagem = mensagem;
		}

		@Override
		public String toString() {
			return "EmailJsonResponse [nome=" + nome + ", email=" + email + ", telefone=" + telefone + ", mensagem="
					+ mensagem + "]";
		}
	}
	
	@PostMapping(value = "sendMessage", consumes = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody EmailJsonResponse sendMessage(@RequestBody  EmailJsonResponse obj) {
		EmailJsonResponse response = new EmailJsonResponse();
		response.setNome(obj.getNome());
		response.setEmail(obj.getEmail());
		response.setTelefone(obj.getTelefone());
		response.setMensagem(obj.getMensagem() + "entrou");
		
		return response;
	}

	/*
	public ModelAndView sendMessage(
	@RequestParam("nome") String nome, @RequestParam("email") String email, 
	@RequestParam("telefone") String telefone, @RequestParam("mensagem") String mensagem) {
	*/
	/*
	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public ModelAndView sendMessage(@RequestBody test obj) {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("sent","Mensagem enviada com sucesso." + obj.getNome());
		mv.addObject("clickHome",true);
		
		return mv;
	}
	*/	
	
//	@RequestMapping(value = {"test"})
//	public ModelAndView test(@RequestParam(value="param", required = false) String value) {
//		ModelAndView mv = new ModelAndView("page");
//		if (value == null) {
//			value = "A Variável estava vázia";
//		}
//		mv.addObject("greeting",value);
//		return mv;
//	}
	
}
