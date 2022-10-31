package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
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
			ps = con.prepareStatement(
					"INSERT INTO Cliente (nome, cpf, email, senha, dataCriacao)" + " VALUES (?,?,?,?,?) ");

			ps.setString(1, cliente.getNome());
			ps.setString(2, cliente.getCpf());
			ps.setString(3, cliente.getEmail());
			ps.setString(4, cliente.getSenha());

//			java.sql.Timestamp data = new Timestamp(cliente.getDataCriacao().getTime());
			java.sql.Timestamp data = new Timestamp(new Date().getTime());
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

	public List<Cliente> pesquisarTodosClientes(){
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			
			ps = con.prepareStatement("SELECT * FROM cliente");
			ResultSet rs = ps.executeQuery();
			
			List<Cliente> lista = new ArrayList<>();
			while (rs.next()) {
				Cliente cliente  = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setCpf(rs.getString("cpf"));  
				cliente.setEmail(rs.getString("email"));
				cliente.setSenha(null);
					
				lista.add(cliente);
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
	
	public void excluir(Cliente cliente) {
			
			Connection con = null;
			try {
				con = ConectaPostgres.criarConexao();
		        PreparedStatement ps = null;
		        
		            ps = con.prepareStatement("DELETE FROM cliente as c where c.id = ? ");
		            ps.setLong(1, cliente.getId());
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

	public void alterar(Cliente cliente) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
	        PreparedStatement ps = null;
	        
	            ps = con.prepareStatement("UPDATE Cliente SET nome = ? , cpf = ?, email = ?, senha = ? "
	            		+ "WHERE id = ? ");
	            
	            ps.setString(1, cliente.getNome());
				ps.setString(2, cliente.getCpf());
				ps.setString(3, cliente.getEmail());
				ps.setString(4, cliente.getSenha());
				ps.setLong(5, cliente.getId());
				
	            
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

	public List<Cliente> pesquisarPorNome(Cliente cliente	) {
		
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
	        PreparedStatement ps = null;
	        
	            ps = con.prepareStatement("select c.id, c.nome, c.cpf, c.email  from cliente as c where c.nome = ? ");
	            ps.setString(1, cliente.getNome());
	            ResultSet rs = ps.executeQuery();
	            
	            List<Cliente> lista = new ArrayList<>();
	            
				while (rs.next()) {
					Cliente cliente1  = new Cliente();
					cliente1.setId(rs.getInt("id"));
					cliente1.setNome(rs.getString("nome"));
					cliente1.setCpf(rs.getString("cpf"));  
					cliente1.setEmail(rs.getString("email"));
				
					
					lista.add(cliente1);
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
	

