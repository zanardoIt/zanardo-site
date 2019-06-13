package br.com.zanardo.site.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle","Página não encontrada.");
		mv.addObject("errorDescription","A página que você procura não está disponível");
		mv.addObject("title","404 - Erro de pagina");
		return mv;
	}
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundException() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle","Produto não encontrado.");
		mv.addObject("errorDescription","O produto que você procura não está disponível");
		mv.addObject("title","Erro de produto");
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception ex) {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle","Error ao executar operação.");
		mv.addObject("errorDescription",ex.toString());
		mv.addObject("title","Erro");
		return mv;
	}
	
}
