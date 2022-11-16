package servico.controller;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import servico.entidade.Chamado;
import servico.entidade.Cliente;
import servico.entidade.Faturamento;
import servico.entidade.Tecnico;
import servico.service.ChamdoService;
import servico.service.ClienteService;
import servico.service.FaturamentoService;
import servico.service.TecnicoService;

@SessionScoped
@ManagedBean(name = "faturamentoController")
public class FaturamentoController implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String CONSULTAR = "/paginas/configurarFaturamento/pesquisarFaturamento.xhtml";
	private static final String INCLUIR = "/paginas/configurarFaturamento/incluirFaturamento.xhtml";
	
	
	private Chamado chamado = new Chamado();
	private List<Chamado> chamados;
	private Faturamento faturamento;
	private List<Faturamento> faturamentos;
	private List<Cliente> clientes = new ArrayList<Cliente>();
	private List<Tecnico> tecnicos = new ArrayList<Tecnico>();
	private Cliente cliente;
	private Tecnico tecnico;

	
	@Inject
	private ChamdoService chamadoService;
	@Inject
	private FaturamentoService faturamentoService;
	@Inject
	private ClienteService clienteService;
	@Inject
	private TecnicoService tecnicoService;

	@PostConstruct
	public void init() {
		setChamado(new Chamado());
		setChamados(new ArrayList<>());
		faturamento = new Faturamento();
		faturamentos = new ArrayList<>();
		clientes = clienteService.pesquisarTodosClientes();
		tecnicos = tecnicoService.pesquisarTodosTecnicos();
		cliente = new Cliente();
		tecnico = new Tecnico();
	}

	public void calcular() {
		
		BigDecimal vatorTotal = new BigDecimal(0);

		List<Chamado> listaChamados = faturamentoService.calcular(faturamento);
		for (Chamado item : listaChamados) {
			vatorTotal = vatorTotal.add(item.getValor());
		}

		getFaturamento().setValorTotal(vatorTotal);
	}

	public String salvar() {

		faturamentoService.salvar(faturamento);
		limpar();
		return CONSULTAR;
	}

	public void limpar() {
		setChamado(new Chamado());
		setChamados(new ArrayList<>());
		faturamento = new Faturamento();
		faturamentos = new ArrayList<>();
		clientes = clienteService.pesquisarTodosClientes();
		tecnicos = tecnicoService.pesquisarTodosTecnicos();
		cliente = new Cliente();
		tecnico = new Tecnico();
		
	}

	public void pesquisarTodosFaturamentos() {
		faturamentos = new ArrayList<>();
		faturamentos = faturamentoService.pesquisarTodosFaturamentos();
	}
	
	public void pesquisarPorDataInicioEFim (){
		
		Boolean verifica = true;
		if(faturamento.getDataInicioFaturamento() == null ) {
			verifica = false;
		}
		if(faturamento.getDataFimFaturamento() == null ) {
			verifica = false;
		}

		if(verifica) {
		
			faturamentos = new ArrayList<>();
			faturamentos = faturamentoService.pesquisarPorDataInicioEFim(faturamento);
			
			for (Faturamento item : faturamentos) {
	
				item.setNomeCliente(clienteService.pesquisarPorId(item.getIdCliente()));
				item.setNomeTecnico(tecnicoService.pesquisarPorId(item.getIdTecnico()));
			}
		}else {
			//lancar msg de obrigadorio
		}
		
		
	}
		
	
	public String incluir() {
		faturamento = new Faturamento();
		faturamentos = new ArrayList<>();
		return INCLUIR;
	}
	
	public String excluir(Faturamento faturamento) {
		faturamentoService.excluir(faturamento);
		faturamento = new Faturamento();
		pesquisarPorDataInicioEFim();
		return CONSULTAR;
	}
	
	

	public List<Faturamento> getFaturamentos() {
		return faturamentos;

	}

	public void setFaturamentos(List<Faturamento> faturamentos) {
		this.faturamentos = faturamentos;

	}

	public Faturamento getFaturamento() {
		return faturamento;
	}

	public void setFaturamento(Faturamento faturamento) {
		this.faturamento = faturamento;
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

	public Chamado getChamado() {
		return chamado;
		
	}

	public void setChamado(Chamado chamado) {
		this.chamado = chamado;
		
	}

	public List<Chamado> getChamados() {
		return chamados;
		
	}

	public void setChamados(List<Chamado> chamados) {
		this.chamados = chamados;
		
	}

	public ChamdoService getChamadoService() {
		return chamadoService;
		
	}

	public void setChamadoService(ChamdoService chamadoService) {
		this.chamadoService = chamadoService;
		
	}

}
