package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import servico.entidade.Estoque;
import servico.enuns.Tipo;

public class EstoqueDAO {

	public void salvar(Estoque estoque) {

		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement("INSERT INTO Estoque " + "(descricao, quantidade, valorCompra, dataCompra, tipo)"
					+ " VALUES (?,?,?,?,?) ");

			ps.setString(1, estoque.getDescricao());
			ps.setInt(2, estoque.getQuantidade());
			ps.setBigDecimal(3, estoque.getValorCompra());
			java.sql.Timestamp dataCompra = new Timestamp(new Date().getTime());
			ps.setTimestamp(4, dataCompra);
			ps.setInt(5, estoque.getTipo().getCodigo());

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

	public void excluir(Estoque estoque) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("DELETE FROM estoque as c where c.idEstoque = ? ");
			ps.setInt(1, estoque.getIdEstoque());
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

	public List<Estoque> pesquisarTodoEstoque() {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("SELECT * FROM estoque");
			ResultSet rs = ps.executeQuery();

			List<Estoque> lista = new ArrayList<>();
			while (rs.next()) {
				Estoque estoque = new Estoque();

				estoque.setIdEstoque(rs.getInt("idEstoque"));
				estoque.setDescricao(rs.getString("descricao"));
				estoque.setQuantidade(rs.getInt("quantidade"));
				estoque.setValorCompra(rs.getBigDecimal("valorCompra"));
				estoque.setDataCompra(rs.getDate("dataCompra"));
				estoque.setTipo(Tipo.toEnum(rs.getInt("tipo")));
				
				lista.add(estoque);
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

	public void alterar(Estoque estoque) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;

			ps = con.prepareStatement("UPDATE Estoque SET descricao = ?, quantidade = ?, valorcompra = ?, datacompra = ?, tipo = ? WHERE idEstoque = ? ");
			
			ps.setString(1, estoque.getDescricao());
			ps.setInt(2, estoque.getQuantidade());
			ps.setBigDecimal(3, estoque.getValorCompra());
			java.sql.Timestamp dataCompra = new Timestamp(new Date().getTime());
			ps.setTimestamp(4, dataCompra);
			ps.setInt(5, estoque.getTipo().getCodigo());
			ps.setInt(6, estoque.getIdEstoque());
			
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
