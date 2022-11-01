package servico.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import javax.inject.Inject;

import servico.entidade.Tecnico;
import servico.service.TecnicoService;

@SessionScoped
@ManagedBean(name = "tecnicoController")
public class TecnicoController implements Serializable {
	private static final long serialVersionUID = 1L;

	private static final String CONSULTAR = "/paginas/configurarTecnico/pesquisarTecnico.xhtml";
	private static final String INCLUIR = "/paginas/configurarTecnico/incluirTecnico.xhtml";
	private static final String ALTERAR = "/paginas/configurarTecnico/alterarTecnico.xhtml";

	private Tecnico tecnico = new Tecnico();
	private List<Tecnico> tecnicos;

	@Inject
	private TecnicoService tecnicoService;

	@PostConstruct
	public void init() {
		tecnico = new Tecnico();
		tecnicos = new ArrayList<>();
	}

	public String salvar() {
		tecnicoService.salvar(tecnico);
		tecnico = new Tecnico();
		tecnicos = new ArrayList<>();
		return CONSULTAR;
	}

	public String excluir(Tecnico tecnico) {
		tecnicoService.excluir(tecnico);
		tecnico = new Tecnico();
		pesquisarTodosTecnicos();
		return CONSULTAR;
	}

	public String alterar() {
		tecnicoService.alterar(tecnico);
		tecnico = new Tecnico();
		tecnicos = new ArrayList<>();
		return CONSULTAR;
	}

	public String voltar() {
		tecnico = new Tecnico();
		tecnicos = new ArrayList<>();
		return CONSULTAR;
	}

	public String incluir() {
		tecnico = new Tecnico();
		tecnicos = new ArrayList<>();
		return INCLUIR;
	}

	public String redirecionaAlterar(Tecnico tecnico) {
		setTecnico(tecnico);
		return ALTERAR;
	}

	public String pesquisarTodosTecnicos() {
		tecnicos = new ArrayList<>();
		if (tecnico != null && !tecnico.getNome().equals("")) {
			pesquisarPorNome(tecnico);
		} else {
			tecnicos = tecnicoService.pesquisarTodosTecnicos();
		}

		return "";

	}

	public String pesquisarPorNome(Tecnico tecnico) {
		tecnicos = tecnicoService.pesquisarPorNome(tecnico);
		return "";

	}

	public Tecnico getTecnico() {
		return tecnico;

	}

	public void setTecnico(Tecnico tecnico) {
		this.tecnico = tecnico;

	}

	public List<Tecnico> getTecnicos() {
		return tecnicos;

	}

	public void setTecnicos(List<Tecnico> tecnicos) {
		this.tecnicos = tecnicos;

	}

	public TecnicoService getTecnicoService() {
		return tecnicoService;

	}

}