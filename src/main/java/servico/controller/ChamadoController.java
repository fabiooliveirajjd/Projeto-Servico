package servico.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import servico.entidade.Chamado;
import servico.entidade.Cliente;
import servico.entidade.Tecnico;
import servico.enuns.Prioridade;
import servico.enuns.Status;
import servico.service.ChamdoService;
import servico.service.ClienteService;
import servico.service.TecnicoService;

@SessionScoped
@ManagedBean(name = "chamadoController")
public class ChamadoController implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private static final String CONSULTAR = "/paginas/configurarChamado/pesquisarChamado.xhtml";
	private static final String INCLUIR = "/paginas/configurarChamado/incluirChamado.xhtml";

	private Chamado chamado = new Chamado();
	private List<Chamado> chamados;
	private Prioridade[] prioridades = null;
	private Prioridade prioridade;
	private Status[] listStatus = null;
	private Status status;
	private List<Cliente> clientes = new ArrayList<Cliente>();
	private List<Tecnico> tecnicos = new ArrayList<Tecnico>();
	private Cliente cliente;
	private Tecnico tecnico;

	@Inject
	private ChamdoService chamadoService;
	@Inject
	private ClienteService clienteService;
	@Inject
	private TecnicoService tecnicoService;

	@PostConstruct
	public void init() {
		chamado = new Chamado();
		chamados = new ArrayList<>();
		clientes = clienteService.pesquisarTodosClientes();
		tecnicos = tecnicoService.pesquisarTodosTecnicos();
		setPrioridades(Prioridade.values());
		setListStatus(Status.values());
		cliente = new Cliente();
		tecnico = new Tecnico();

	}

	public String salvar() {
		
	//	if() {
			
	//	}
		
		chamado.setPrioridade(prioridade);
		chamado.setStatus(status);
		chamadoService.salvar(chamado);
		limpar();
		return CONSULTAR;
	}

	public void limpar() {
		chamado = new Chamado();
		chamados = new ArrayList<>();
		prioridade = null;
		status = null;

	}

	public String excluir(Chamado chamado) {
		chamadoService.excluir(chamado);
		chamado = new Chamado();
		pesquisarTodosChamados();
		return CONSULTAR;
	}
	
	public void pesquisarTodosChamados() {
		chamados = new ArrayList<>();
		chamados = chamadoService.pesquisarTodosChamados();
		
		for (Chamado item : chamados) {
			item.setNomeCliente(clienteService.pesquisarPorId(item.getIdCliente()));
			item.setNomeTecnico(tecnicoService.pesquisarPorId(item.getIdTecnico()));
		}
	}
	
	public void pesquisarPorTecnicoEClinte() {
		
//		chamado.setIdCliente(clienteService.pesquisarClientePorNome(cliente));
//		chamado.setIdTecnico(tecnicoService.pesquisarTecnicoPorNome(tecnico));
		
		chamados = chamadoService.pesquisarPorTecnico(chamado.getIdTecnico());
		
		for (Chamado item : chamados) {
			item.setNomeCliente(clienteService.pesquisarPorId(item.getIdCliente()));
			item.setNomeTecnico(tecnicoService.pesquisarPorId(item.getIdTecnico()));
		}
		
		
	}
	
	public String incluir() {
		chamado = new Chamado();
		chamados = new ArrayList<>();
		return INCLUIR;
	}

	
	public Chamado getChamado() {
		return chamado;
	}

	public void setChamado(Chamado chamado) {
		this.chamado = chamado;
	}

	public ChamdoService getChamadoService() {
		return chamadoService;
	}

	public void setChamadoService(ChamdoService chamadoService) {
		this.chamadoService = chamadoService;
	}

	public Prioridade[] getPrioridades() {
		return prioridades;

	}

	public void setPrioridades(Prioridade[] prioridades) {
		this.prioridades = prioridades;

	}

	public Prioridade getPrioridade() {
		return prioridade;

	}

	public void setPrioridade(Prioridade prioridade) {
		this.prioridade = prioridade;

	}

	public Status[] getListStatus() {
		return listStatus;

	}

	public void setListStatus(Status[] listStatus) {
		this.listStatus = listStatus;

	}

	public Status getStatus() {
		return status;

	}

	public void setStatus(Status status) {
		this.status = status;

	}

	public List<Cliente> getClientes() {
		return clientes;

	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;

	}

	public List<Tecnico> getTecnicos() {
		return tecnicos;

	}

	public void setTecnicos(List<Tecnico> tecnicos) {
		this.tecnicos = tecnicos;

	}

	public List<Chamado> getChamados() {
		return chamados;

	}

	public void setChamados(List<Chamado> chamados) {
		this.chamados = chamados;

	}

	public Cliente getCliente() {
		return cliente;
		
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
		
	}

	public Tecnico getTecnico() {
		return tecnico;
		
	}

	public void setTecnico(Tecnico tecnico) {
		this.tecnico = tecnico;
		
	}

}
