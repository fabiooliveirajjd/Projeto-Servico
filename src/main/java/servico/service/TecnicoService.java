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
	
	public Tecnico alterar (Tecnico tecnico) {
		return dao.alterar(tecnico);
	}
	
	public void deletar (Tecnico tecnico) {
		dao.deletar(tecnico);
	}
	public List<Tecnico> pesquisarAll(){
		return dao.pesquisarAll();
	}
	public List<Tecnico> pesquisarporId(Long idTecnico){
		return pesquisarporId(idTecnico);
	}
	
}
