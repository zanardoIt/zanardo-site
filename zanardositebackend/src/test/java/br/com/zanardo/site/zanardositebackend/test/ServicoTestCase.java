package br.com.zanardo.site.zanardositebackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import br.com.zanardo.site.zanardositebackend.dao.ServicoDao;
import br.com.zanardo.site.zanardositebackend.dto.Servico;

public class ServicoTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static ServicoDao servicoDao;
	private Servico servico;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("br.com.zanardo.site.zanardositebackend");
		context.refresh();
		servicoDao = (ServicoDao)context.getBean("ServicoDao");
	}
	
//	@Test
//	public void testAddServico() {
//		servico = new Servico();
//		servico.setDescricao("Quatro");
//		servico.setAtivo(false);
//		assertEquals("Sucesso", true, servicoDao.add(servico));
//	}
	
//	@Test
//	public void testGetServico() {
//		servico = servicoDao.get(2);
//		assertEquals("Sucesso", "Abertura de Empresas", servico.getDescricao());
//	}
	
//	@Test
//	public void testUpdateServico() {
//		servico = servicoDao.get(2);
//		servico.setDescricao("Aeeee");
//		servicoDao.update(servico);
//		
//		assertEquals("Sucesso", "Aeeee", servico.getDescricao());
//	}

//	@Test
//	public void testDeleteServico() {
//		boolean value = servicoDao.delete(3);
//		
//		assertEquals("Sucesso", true, value);
//	}

//	@Test
//	public void testListServico() {
//		int value = servicoDao.list().size();
//		
//		assertEquals("Sucesso", 2, value);
//	}
	
//	@Test
//	public void testAll() {
//		
//		servico = new Servico();
//		servico.setDescricao("Cinco");
//		servico.setAtivo(true);
//		assertEquals("Sucesso", true, servicoDao.add(servico));
//		
//		assertEquals("Sucesso", "Quatro", servicoDao.get(4).getDescricao());
//		
//		servico = servicoDao.get(2);
//		servico.setDescricao("Dois");
//		servicoDao.update(servico);
//		assertEquals("Sucesso", "Dois", servicoDao.get(2).getDescricao());
//		
//		assertEquals("Sucesso", true, servicoDao.delete(5));
//		
//		assertEquals("Sucesso", 2, servicoDao.list().size());
//	}
	
	
	
}
