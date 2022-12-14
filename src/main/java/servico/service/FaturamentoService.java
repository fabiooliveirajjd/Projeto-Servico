package servico.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import servico.DAO.FaturamentoDAO;
import servico.entidade.Chamado;
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
	
	public List<Chamado> calcular(Faturamento faturamento) {
		return dao.calcular(faturamento);
	}
	
	public void excluir(Faturamento faturamento) {
		dao.excluir(faturamento);
		
	}

	public List<Faturamento> pesquisarPorDataInicioEFim(Faturamento faturamento) {
		return dao.pesquisarPorDataInicioEFim(faturamento);
	}
	
	
	
	

//	public List<Chamado> pesquisarPorTecnico(Integer idTecnico) {
//		return dao.pesquisarPorTecnico(idTecnico);
//		
//	}




}
