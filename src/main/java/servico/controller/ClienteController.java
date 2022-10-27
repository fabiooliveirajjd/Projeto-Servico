package servico.controller;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import servico.entidade.Cliente;
import servico.service.ClienteService;

@SessionScoped
@ManagedBean(name = "clienteController")
public class ClienteController {
	
	@Inject
	private ClienteService clienteService;
	
	private Cliente cliente = null;
	
	@PostConstruct
	public void init() {
		cliente = new Cliente();
	
	}
	
	public void salvar() {
		clienteService.salvar(cliente);
	}

	public Cliente getCliente() {
		return cliente;
		
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
		
	}

}
