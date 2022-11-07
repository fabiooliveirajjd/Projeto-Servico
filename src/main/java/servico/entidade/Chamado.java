package servico.entidade;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import servico.enuns.Prioridade;
import servico.enuns.Status;


@Entity
public class Chamado implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idChamado;

	@Column
	private Prioridade prioridade;
	
	@Column
	private Status status;
	
	@Column
	private String observacoes;
	
	@Column
	private String titulo;
	
	//@JsonFormat(pattern = "dd/MM/yyyy")
	@Column
	private Date dataAbertura;
	
	//@JsonFormat(pattern = "dd/MM/yyyy")
	@Column
	private Date dataFechamento;

	@Column
	private Integer idTecnico;
	
	@Column
	private Integer idCliente;
	
	@Transient
	private String nomeCliente;
	@Transient
	private String nomeTecnico;
	
	@Column
	private BigDecimal valor;
	
	public Chamado() {
		super();
	}

	public Chamado(Integer idChamado, Prioridade prioridade, Status status, String observacoes, String titulo,  Integer idTecnico,
			Integer idCliente, BigDecimal valor) {
		super();
		this.idChamado = idChamado;
		this.prioridade = prioridade;
		this.status = status;
		this.observacoes = observacoes;
		this.titulo = titulo;
		this.idTecnico = idTecnico;
		this.idCliente = idCliente;
		this.valor = valor;
		
	}

	
	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public Integer getIdChamado() {
		return idChamado;
	}

	public void setIdChamado(Integer id) {
		this.idChamado = id;
	}

	public Date getDataAbertura() {
		return dataAbertura;
	}

	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public Date getDataFechamento() {
		return dataFechamento;
	}

	public void setDataFechamento(Date dataFechamento) {
		this.dataFechamento = dataFechamento;
	}

	public Prioridade getPrioridade() {
		return prioridade;
	}

	public void setPrioridade(Prioridade prioridade) {
		this.prioridade = prioridade;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Integer getIdCliente() {
		return idCliente;
		
	}

	public void setIdCliente(Integer idCliente) {
		this.idCliente = idCliente;
		
	}

	public Integer getIdTecnico() {
		return idTecnico;
		
	}

	public void setIdTecnico(Integer idTecnico) {
		this.idTecnico = idTecnico;
		
	}

	public String getNomeCliente() {
		return nomeCliente;
		
	}

	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
		
	}

	public String getNomeTecnico() {
		return nomeTecnico;
		
	}

	public void setNomeTecnico(String nomeTecnico) {
		this.nomeTecnico = nomeTecnico;
		
	}
	
	
}
