package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import servico.entidade.Faturamento;


public class FaturamentoDAO {

	public void salvar(Faturamento faturamento) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement("INSERT INTO Faturamento (valorTotal, id_Cliente, id_Tecnico, id_Chamado, dataInicioFaturamento)"
			+ " VALUES (?,?,?,?,?)");

			ps.setBigDecimal(1, faturamento.getValorTotal());
			ps.setLong(2, faturamento.getIdCliente());
			ps.setLong(3, faturamento.getIdTecnico());
			ps.setLong(4, faturamento.getIdChamado());
			java.sql.Timestamp dataInicioFaturamento = new Timestamp(new Date().getTime());
			ps.setTimestamp(5, dataInicioFaturamento);

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
				faturamento.setValorTotal(rs.getBigDecimal("valorTotal"));
				faturamento.setIdCliente(rs.getLong("id_Cliente"));
				faturamento.setIdTecnico(rs.getLong("id_Tecnico"));
				faturamento.setIdChamado(rs.getLong("id_Chamado"));
				
				
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
		}}	}
	