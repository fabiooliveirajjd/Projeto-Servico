package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import servico.entidade.Tecnico;

public class TecnicoDAO {

	public void salvar(Tecnico tecnico) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement(
					"INSERT INTO servico.Tecnico (nome, cpf, email, senha, dataCriacao) VALUES (?,?,?,?,?) ");

			ps.setString(1, tecnico.getNome());
			ps.setString(2, tecnico.getCpf());
			ps.setString(3, tecnico.getEmail());
			ps.setString(4, tecnico.getSenha());

			java.sql.Timestamp data = new Timestamp(tecnico.getDataCriacao().getTime());
			ps.setTimestamp(5, data);

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

	public Tecnico alterar(Tecnico tecnico) {

		return null;
	}

	public void deletar(Tecnico tecnico) {

	}

	public List<Tecnico> pesquisarAll() {
		return null;
	}

	public List<Tecnico> pesquisarPorId(Long idTecnico) {
		return null;
	}
}
