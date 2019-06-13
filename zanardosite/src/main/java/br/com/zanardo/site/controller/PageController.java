package br.com.zanardo.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.zanardo.site.exception.ProductNotFoundException;
import br.com.zanardo.site.zanardositebackend.dao.ServicoDao;

@Controller
public class PageController {
	
	@Autowired
	private ServicoDao servicoDao; 

	@RequestMapping(value = {"/","home","index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","- Home");
		mv.addObject("clickHome",true);
		return mv;
	}
	
	@RequestMapping(value = {"orcamento"})
	public ModelAndView orcamento() throws Exception /*throws ProductNotFoundException*/ {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","- Orçamentos");
		mv.addObject("clickOrcamento",true);
		//mv.addObject("servicos", servicoDao.list());
		
		//if(servicoDao.get(7) == null) throw new ProductNotFoundException();
		if(servicoDao.get(7) == null) throw new Exception();
		
		mv.addObject("servicos", servicoDao.get(7));
		
		//ProductNotFoundException
		return mv;
	}
	
//	@RequestMapping(value = {"test"})
//	public ModelAndView test(@RequestParam(value="param", required = false) String value) {
//		ModelAndView mv = new ModelAndView("page");
//		if (value == null) {
//			value = "A Variável estava vázia";
//		}
//		mv.addObject("greeting",value);
//		return mv;
//	}
		
	@RequestMapping(value = {"test/{variable}"})
	public ModelAndView test(@PathVariable("variable") String value) {
		ModelAndView mv = new ModelAndView("page");
		if (value == null) {
			value = "A Variável estava vázia";
		}
		mv.addObject("greeting",value);
		return mv;
	}
	
}
