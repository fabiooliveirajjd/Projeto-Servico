package servico.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import servico.DAO.ChamadoDAO;
import servico.entidade.Chamado;


@Service
public class ChamdoService {

	@Inject
	private ChamadoDAO dao;

	public void salvar(Chamado chamado) {
		dao.salvar(chamado);
	}
	
	public void excluir(Chamado chamado) {
		dao.excluir(chamado);
		
	}
	
	public void alterar(Chamado chamado) {
		    dao.alterar(chamado);
	}
	
	public List<Chamado> pesquisarTodosChamados(){
		return dao.pesquisarTodosChamados();
		
	}

	public List<Chamado> pesquisarPorTecnico(Integer idTecnico) {
		return dao.pesquisarPorTecnico(idTecnico);
		
	}
	
//	public List<Chamado> pesquisarPorId(Long idChamado) {
//		return dao.pesquisarPorId(idChamado);
//	}

}