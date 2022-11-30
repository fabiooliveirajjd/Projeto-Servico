package servico.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import servico.entidade.Estoque;
import servico.enuns.Tipo;
import servico.service.EstoqueService;

@SessionScoped
@ManagedBean(name = "estoqueController")
public class EstoqueController implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private static final String CONSULTAR = "/paginas/configurarEstoque/pesquisarEstoque.xhtml";
	private static final String INCLUIR = "/paginas/configurarEstoque/incluirEstoque.xhtml";
	private static final String ALTERAR = "/paginas/configurarEstoque/alterarEstoque.xhtml";
	
	private Estoque estoque = new Estoque();
	private List<Estoque> estoques;
	private Tipo[] tipos = null;
	private Tipo tipo;
	
	@Inject
	private EstoqueService estoqueService;
	
	@PostConstruct
	public void init() {
		estoque = new Estoque();
		estoques = new ArrayList<>();
		setTipos(Tipo.values());
		tipo = null;
	}
	
	public String salvar() {

		estoque.setTipo(tipo);
		estoqueService.salvar(estoque);
		limpar();
		return CONSULTAR;
	}
	

	public String excluir(Estoque estoque) {
		estoqueService.excluir(estoque);
		estoque = new Estoque();
		pesquisarTodoEstoque();
		return CONSULTAR;
	}
	
	public void pesquisarTodoEstoque() {
		estoques = new ArrayList<>();
		estoques = estoqueService.pesquisarTodoEstoque();
	}
	
	public String alterar() {
		estoque.setTipo(getTipo());
		estoqueService.alterar(estoque);
		estoque = new Estoque();
		estoques = new ArrayList<>();
		return CONSULTAR;
	}
	
	public String redirecionaAlterar(Estoque estoque) {
		setTipo(estoque.getTipo());
		setEstoque(estoque);
		return ALTERAR;
	}
	
	public String voltar() {
		estoque = new Estoque();
		estoques = new ArrayList<>();
		return CONSULTAR;
		
	}
	
	public String incluir() {
		estoque = new Estoque();
		estoques = new ArrayList<>();
		return INCLUIR;
	}
	
	public void limpar() {
		estoque = new Estoque();
		estoques= new ArrayList<>();
		tipo = null;
	}
	
	

	
	

	public Estoque getEstoque() {
		return estoque;
		
	}

	public void setEstoque(Estoque estoque) {
		this.estoque = estoque;
		
	}

	public List<Estoque> getEstoques() {
		return estoques;
		
	}

	public void setEstoques(List<Estoque> estoques) {
		this.estoques = estoques;
		
	}

	public Tipo[] getTipos() {
		return tipos;
		
	}

	public void setTipos(Tipo[] tipos) {
		this.tipos = tipos;
		
	}

	public Tipo getTipo() {
		return tipo;
		
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
		
	}
	
	
	
}
