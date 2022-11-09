package servico.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import servico.DAO.FaturamentoDAO;
import servico.entidade.Faturamento;

@Service
public class FaturamentoService {
	
	@Inject
	private FaturamentoDAO dao;
	
	public void salvar(Faturamento faturamento) {
		dao.salvar(faturamento);
	}
	
	public List<Faturamento> pesquisarTodosFaturamentos() {
		return dao.pesquisarTodosFaturamentos();
	}

}
