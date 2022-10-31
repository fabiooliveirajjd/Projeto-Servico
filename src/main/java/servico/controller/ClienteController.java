package servico.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import servico.entidade.Cliente;
import servico.service.ClienteService;

@SessionScoped
@ManagedBean(name = "clienteController")
public class ClienteController implements Serializable {
	private static final long serialVersionUID = 1L;

	private static final String CONSULTAR = "/paginas/configurarCliente/pesquisarCliente.xhtml";
	private static final String INCLUIR = "/paginas/configurarCliente/configurarCliente.xhtml";
	private static final String ALTERAR = "/paginas/configurarCliente/alterarCliente.xhtml";

	private Cliente cliente = new Cliente();
	private List<Cliente> clientes;

	@Inject
	private ClienteService clienteService;

	@PostConstruct
	public void init() {
		cliente = new Cliente();
		clientes = new ArrayList<>();
	}

	public String salvar() {
		
			
//		Cliente c = clienteService.pesquisarPorCpf(cliente.getCpf());
//		if(c != null) {
//			//popup "cpf ja existe, coloque outro"
//		}
		
		clienteService.salvar(cliente);
		cliente = new Cliente();
		clientes = new ArrayList<>();
		return CONSULTAR;
	}

	public String excluir(Cliente cliente) {
		clienteService.excluir(cliente);
		cliente = new Cliente();
		pesquisarTodosClientes();
		return CONSULTAR;
	}

	public String alterar() {
		clienteService.alterar(cliente);
		cliente = new Cliente();
		clientes = new ArrayList<>();
		return CONSULTAR;
	}

	public String voltar() {
		cliente = new Cliente();
		clientes = new ArrayList<>();
		return CONSULTAR;
	}

	public String incluir() {
		cliente = new Cliente();
		clientes = new ArrayList<>();
		return INCLUIR;
	}

	public String redirecionaAlterar(Cliente cliente) {
		setCliente(cliente);
		return ALTERAR;
	}

	public String pesquisarTodosClientes() {
		clientes = new ArrayList<>();
		if(cliente != null && !cliente.getNome().equals("")) {
			pesquisarPorNome(cliente);
		}else {
			clientes = clienteService.pesquisarTodosClientes();
		}
		
		return "";

	}

	public String pesquisarPorNome(Cliente cliente) {
		clientes = clienteService.pesquisarPorNome(cliente);
		return "";

	}

	public Cliente getCliente() {
		return cliente;

	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;

	}

	public List<Cliente> getClientes() {
		return clientes;

	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;

	}

}
