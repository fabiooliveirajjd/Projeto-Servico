package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import servico.entidade.Cliente;

@Repository
@Transactional
@Component
public class ClienteDAO {

	public void salvar(Cliente cliente) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement("INSERT INTO servico.Cliente (nome, cpf, email, senha, dataCriacao) VALUES (?,?,?,?,?) ");
			
			ps.setString(1, cliente.getNome());
			ps.setString(2, cliente.getCpf());
			ps.setString(3, cliente.getEmail());
			ps.setString(4, cliente.getSenha());
			
			java.sql.Timestamp data = new Timestamp(cliente.getDataCriacao().getTime());
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
	
	public Cliente alterar(Cliente cliente) {
			
		return null;
	}

	public void deletar(Cliente cliente) {
	
	}

	public  List<Cliente> pesquisarAll() {
		return null;
	}
	
	public List<Cliente> pesquisarPorId(Long idCliente) {
		return null;
	}
}
