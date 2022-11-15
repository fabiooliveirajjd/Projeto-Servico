package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import servico.entidade.Chamado;
import servico.entidade.Faturamento;
import servico.enuns.Prioridade;
import servico.enuns.Status;

public class FaturamentoDAO {

	public void salvar(Faturamento faturamento) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement(
					"INSERT INTO Faturamento (id_Tecnico, id_Cliente, dataInicioFaturamento, dataFimFaturamento, valorTotal)"
							+ " VALUES (?,?,?,?,?)");

			ps.setInt(1, faturamento.getIdTecnico());
			ps.setInt(2, faturamento.getIdCliente());
			java.sql.Date inicio = new java.sql.Date(faturamento.getDataInicioFaturamento().getTime());
			ps.setDate(3, inicio);
			java.sql.Date fim = new java.sql.Date(faturamento.getDataFimFaturamento().getTime());
			ps.setDate(4, fim);
			ps.setBigDecimal(5, faturamento.getValorTotal());

			ps.executeUpdate();

		} catch (SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public List<Chamado> calcular(Faturamento faturamento) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement("SELECT dataabertura, id_cliente, id_tecnico, valor " + "FROM chamado "
					+ "	where id_tecnico = ?  and dataabertura BETWEEN ? AND ? ");
			ps.setInt(1, Integer.parseInt(faturamento.getIdTecnico().toString()));
			java.sql.Date dataInicio = new java.sql.Date(faturamento.getDataInicioFaturamento().getTime());
			ps.setDate(2, dataInicio);
			java.sql.Date dataFim = new java.sql.Date(faturamento.getDataFimFaturamento().getTime());
			ps.setDate(3, dataFim);
			ResultSet rs = ps.executeQuery();

			List<Chamado> lista = new ArrayList<>();
			while (rs.next()) {
				Chamado chamado = new Chamado();
				chamado.setDataAbertura(rs.getDate("dataAbertura"));
				chamado.setIdCliente(rs.getInt("id_Cliente"));
				chamado.setIdTecnico(rs.getInt("id_Tecnico"));
				chamado.setValor(rs.getBigDecimal("valor"));

				lista.add(chamado);
			}
			return lista;
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public List<Faturamento> pesquisarTodosFaturamentos() {

		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("SELECT * FROM faturamento");
			ResultSet rs = ps.executeQuery();

			List<Faturamento> lista = new ArrayList<>();
			while (rs.next()) {
				Faturamento faturamento = new Faturamento();

				faturamento.setIdFaturamento(rs.getInt("idFaturamento"));
				faturamento.setIdTecnico(rs.getInt("id_Tecnico"));
				faturamento.setIdCliente(rs.getInt("id_Cliente"));
				faturamento.setDataInicioFaturamento(rs.getDate("dataInicioFaturamento"));
				faturamento.setDataFimFaturamento(rs.getDate("dataFimFaturamento"));
				faturamento.setValorTotal(rs.getBigDecimal("valorTotal"));

				lista.add(faturamento);
			}
			return lista;
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public void excluir(Faturamento faturamento) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("DELETE FROM faturamento as c where c.idFaturamento = ? ");
			ps.setInt(1, faturamento.getIdFaturamento());
			ps.executeUpdate();

		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
	}

	public List<Faturamento> pesquisarPorDataInicioEFim(Faturamento fat) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("SELECT idFaturamento, id_Tecnico, id_Cliente, dataInicioFaturamento, dataFimFaturamento, valorTotal  " + "FROM faturamento "
					+ "	where dataInicioFaturamento BETWEEN ? AND ? ");
			
			java.sql.Date dataInicio = new java.sql.Date(fat.getDataInicioFaturamento().getTime());
			ps.setDate(1, dataInicio);
			java.sql.Date dataFim = new java.sql.Date(fat.getDataFimFaturamento().getTime());
			ps.setDate(2, dataFim);
			ResultSet rs = ps.executeQuery();

			List<Faturamento> lista = new ArrayList<>();
			while (rs.next()) {
				Faturamento faturamento = new Faturamento();

				faturamento.setIdFaturamento(rs.getInt("idFaturamento"));
				faturamento.setIdTecnico(rs.getInt("id_Tecnico"));
				faturamento.setIdCliente(rs.getInt("id_Cliente"));
				faturamento.setDataInicioFaturamento(rs.getDate("dataInicioFaturamento"));
				faturamento.setDataFimFaturamento(rs.getDate("dataFimFaturamento"));
				faturamento.setValorTotal(rs.getBigDecimal("valorTotal"));

				lista.add(faturamento);
			}
			return lista;
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	}


