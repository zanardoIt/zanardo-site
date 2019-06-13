package br.com.zanardo.site.zanardositebackend.dao;

import java.util.List;

import br.com.zanardo.site.zanardositebackend.dto.Servico;

public interface ServicoDao {

	public Servico get(int id);
	
	List<Servico> list();
	
	public boolean add(Servico servico);
	
	public boolean update(Servico servico);
	
	public boolean delete(int id);
	
}
