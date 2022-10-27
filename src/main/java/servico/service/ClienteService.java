package servico.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import servico.DAO.ClienteDAO;
import servico.entidade.Cliente;

@Service
public class ClienteService {
	
	@Inject
	private ClienteDAO dao;
	
	public void salvar(Cliente cliente) {
		dao.salvar(cliente);
	}
	
	public Cliente alterar(Cliente cliente) {
		return dao.alterar(cliente);
	}

	public void deletar(Cliente cliente) {
		dao.deletar(cliente);
	}

	public  List<Cliente> pesquisarAll() {
		return dao.pesquisarAll();
	}
	
	public List<Cliente> pesquisarPorId(Long idCliente) {
		return dao.pesquisarPorId(idCliente);
	}

}
