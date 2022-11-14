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
	
	public void excluir(Cliente cliente) {
		dao.excluir(cliente);
	}
	
	public void alterar(Cliente cliente) {
		dao.alterar(cliente);
	}

	
	public List<Cliente> pesquisarTodosClientes() {
		return dao.pesquisarTodosClientes();
	}
	
	public List<Cliente> pesquisarPorNome(Cliente cliente) {
		return dao.pesquisarPorNome(cliente);
	}

	public String pesquisarPorId(Integer idCliente) {
		return dao.pesquisarPorId(idCliente);
	}

	public Integer pesquisarClientePorNome(Cliente cliente) {
		return dao.pesquisarClientePorNome(cliente);
	}

}
