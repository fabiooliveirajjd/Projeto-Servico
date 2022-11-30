package servico.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import servico.DAO.EstoqueDAO;
import servico.entidade.Estoque;

@Service
public class EstoqueService {
	
	@Inject
	private EstoqueDAO dao;
	
	public void salvar(Estoque estoque) {
		dao.salvar(estoque);
	}
	
	public void excluir(Estoque estoque) {
		dao.excluir(estoque);
		
	}
	
	public void alterar(Estoque estoque) {
	    dao.alterar(estoque);
}
	
	public List<Estoque> pesquisarTodoEstoque(){
		return dao.pesquisarTodoEstoque();
		
	}
	

}
