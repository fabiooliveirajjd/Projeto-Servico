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
import servico.enuns.Prioridade;
import servico.enuns.Status;

public class ChamadoDAO {

	public void salvar(Chamado chamado) {

		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement("INSERT INTO Chamado "
					+ "(id_cliente, id_tecnico, prioridade, status, observacoes, titulo, valor, dataAbertura )"
					+ " VALUES (?,?,?,?,?,?,?,?) ");

			ps.setInt(1, chamado.getIdCliente());
			ps.setInt(2, chamado.getIdTecnico());
			ps.setInt(3, chamado.getPrioridade().getCodigo());
			ps.setInt(4, chamado.getStatus().getCodigo());
			ps.setString(5, chamado.getObservacoes());
			ps.setString(6, chamado.getTitulo());
			ps.setBigDecimal(7, chamado.getValor());
			java.sql.Timestamp dataAbertura = new Timestamp(new Date().getTime());
			ps.setTimestamp(8, dataAbertura);

			// java.sql.Timestamp dataFechamento = new Timestamp(new Date().getTime());
			// ps.setTimestamp(8, dataFechamento);

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

	public List<Chamado> pesquisarTodosChamados() {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("SELECT * FROM chamado");
			ResultSet rs = ps.executeQuery();

			List<Chamado> lista = new ArrayList<>();
			while (rs.next()) {
				Chamado chamado = new Chamado();

				chamado.setIdChamado(rs.getInt("idChamado"));
				chamado.setIdCliente(rs.getInt("id_Cliente"));
				chamado.setIdTecnico(rs.getInt("id_Tecnico"));

				chamado.setPrioridade(Prioridade.toEnum(rs.getInt("prioridade")));
				chamado.setStatus(Status.toEnum(rs.getInt("status")));
//				chamado.setDataAbertura(rs.getDate("dataAbertura"));

				chamado.setObservacoes(rs.getString("observacoes"));
				chamado.setTitulo(rs.getString("titulo"));
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

	public List<Chamado> pesquisarPorTecnico(Integer idTecnico) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			StringBuilder sql = new StringBuilder();
			sql.append("select * from chamado as c ");

			if (idTecnico != null) {
				sql.append("where c.id_tecnico  = ? ");
			}

			ps = con.prepareStatement(sql.toString());

			if (idTecnico != null) {
				ps.setInt(1, idTecnico);
			}

			ResultSet rs = ps.executeQuery();

			List<Chamado> lista = new ArrayList<>();

			while (rs.next()) {
				Chamado chamado = new Chamado();
				chamado.setIdChamado(rs.getInt("idChamado"));
				chamado.setIdCliente(rs.getInt("id_Cliente"));
				chamado.setIdTecnico(rs.getInt("id_Tecnico"));
				chamado.setDataAbertura(rs.getDate("dataAbertura"));
				chamado.setDataFechamento(rs.getDate("dataFechamento"));
				chamado.setPrioridade(Prioridade.toEnum(rs.getInt("prioridade")));
				chamado.setStatus(Status.toEnum(rs.getInt("status")));
//					chamado.setObservacoes(rs.getString("observacoes"));
				chamado.setTitulo(rs.getString("titulo"));
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

	public void excluir(Chamado chamado) {

		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("DELETE FROM chamado as c where c.idChamado = ? ");
			ps.setInt(1, chamado.getIdChamado());
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

	public void alterar(Chamado chamado) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("UPDATE Chamado  SET status = ?, dataFechamento = ?" + " WHERE idChamado = ? ");

			ps.setInt(1, chamado.getStatus().getCodigo());

			if (chamado.getDataFechamento() != null) {
				java.sql.Date dataSql = new java.sql.Date(chamado.getDataFechamento().getTime());
				ps.setDate(2, dataSql);
			} else {
				ps.setDate(2, null);
			}

			ps.setInt(3, chamado.getIdChamado());

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
}
