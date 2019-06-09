package br.com.zanardo.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = {"/","home","index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting","Olá malandro!");
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
