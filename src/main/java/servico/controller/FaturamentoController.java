package servico.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import servico.entidade.Chamado;
import servico.entidade.Faturamento;
import servico.service.ChamdoService;
import servico.service.ClienteService;
import servico.service.FaturamentoService;
import servico.service.TecnicoService;

@SessionScoped
@ManagedBean(name = "faturamentoController")
public class FaturamentoController implements Serializable{
	private static final long serialVersionUID = 1L;

	private static final String CONSULTAR = "/paginas/configurarFaturamento/pesquisarFaturamento.xhtml";
//	private static final String INCLUIR = "/paginas/configurarFaturamento/incluirFaturamento.xhtml";
	
	private Faturamento faturamento = new Faturamento();
	private List<Faturamento> faturamentos;

	@Inject
	private FaturamentoService faturamentoService;
	@Inject
	private ChamdoService chamadoService;
	@Inject
	private ClienteService clienteService;
	@Inject
	private TecnicoService tecnicoService;
	
	@PostConstruct
	public void init() {
		faturamento = new Faturamento();
		faturamentos = new ArrayList<>();
	}
	
	public String salvar() {
		faturamentoService.salvar(faturamento);
		limpar();
		return CONSULTAR;
	}
	
	public void limpar() {
		faturamento = new Faturamento();
		faturamentos = new ArrayList<>();
	}
	
	

	public List<Faturamento> getFaturamentos() {
		return faturamentos;
		
	}

	public void setFaturamentos(List<Faturamento> faturamentos) {
		this.faturamentos = faturamentos;
		
	}

	public ChamdoService getChamadoService() {
		return chamadoService;
		
	}

	public void setChamadoService(ChamdoService chamadoService) {
		this.chamadoService = chamadoService;
		
	}

	public ClienteService getClienteService() {
		return clienteService;
		
	}

	public void setClienteService(ClienteService clienteService) {
		this.clienteService = clienteService;
		
	}

	public TecnicoService getTecnicoService() {
		return tecnicoService;
		
	}

	public void setTecnicoService(TecnicoService tecnicoService) {
		this.tecnicoService = tecnicoService;
		
	}

}
