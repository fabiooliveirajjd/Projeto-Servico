package servico.entidade;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Faturamento implements Serializable{
private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idFaturamento;
	
	@Column
	private BigDecimal valorTotal;
	
	@Column 
	private Long idCliente;
	
	@Column
	private Long idTecnico;
	
	@Column
	private Long idChamado;
	
	@Column
	private Date dataInicioFaturamento;
	
	@Column
	private Date dataFimFaturamento;
	
	

	public Faturamento() {
		super();
	}

	public Faturamento(Integer idFaturamento, BigDecimal valorTotal, Long idCliente, Long idTecnico, Long idChamado,
			Date dataInicioFaturamento, Date dataFimFaturamento) {
		super();
		this.idFaturamento = idFaturamento;
		this.valorTotal = valorTotal;
		this.idCliente = idCliente;
		this.idTecnico = idTecnico;
		this.idChamado = idChamado;
		this.dataInicioFaturamento = dataInicioFaturamento;
		this.dataFimFaturamento = dataFimFaturamento;
	}

	public Integer getIdFaturamento() {
		return idFaturamento;
	}

	public void setIdFaturamento(Integer idFaturamento) {
		this.idFaturamento = idFaturamento;
	}
	
	public BigDecimal getValorTotal() {
		return valorTotal;
	}

	
	public void setValorTotal(BigDecimal valorTotal) {
		this.valorTotal = valorTotal;
	}


	public Long getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(Long idCliente) {
		this.idCliente = idCliente;
	}

	public Long getIdTecnico() {
		return idTecnico;
	}

	public void setIdTecnico(Long idTecnico) {
		this.idTecnico = idTecnico;
	}

	public Long getIdChamado() {
		return idChamado;
	}

	public void setIdChamado(Long idChamado) {
		this.idChamado = idChamado;
	}

	public Date getDataInicioFaturamento() {
		return dataInicioFaturamento;
	}

	public void setDataInicioFaturamento(Date dataInicioFaturamento) {
		this.dataInicioFaturamento = dataInicioFaturamento;
	}

	public Date getDataFimFaturamento() {
		return dataFimFaturamento;
	}

	public void setDataFimFaturamento(Date dataFimFaturamento) {
		this.dataFimFaturamento = dataFimFaturamento;
	}
	
	
}
