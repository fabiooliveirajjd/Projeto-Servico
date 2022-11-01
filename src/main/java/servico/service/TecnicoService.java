package servico.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import servico.DAO.TecnicoDAO;
import servico.entidade.Tecnico;


@Service
public class TecnicoService {
	
	
	@Inject
	private TecnicoDAO dao;
	
	public void salvar (Tecnico tecnico) {
		dao.salvar(tecnico);	
	}
	public void excluir(Tecnico tecnico) {
		dao.excluir(tecnico);
	}
	
	public void alterar(Tecnico tecnico) {
		dao.alterar(tecnico);
	}

	
	public List<Tecnico> pesquisarTodosTecnicos() {
		return dao.pesquisarTodosTecnicos();
	}
	
	public List<Tecnico> pesquisarPorNome(Tecnico tecnico) {
		return dao.pesquisarPorNome(tecnico);
	}

}
