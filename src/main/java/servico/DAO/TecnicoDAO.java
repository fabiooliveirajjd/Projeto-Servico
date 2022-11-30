package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import servico.entidade.Tecnico;

public class TecnicoDAO {

	public void salvar(Tecnico tecnico) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			ps = con.prepareStatement(
					"INSERT INTO tecnico (nome, cpf, email, senha, dataCriacao)" + " VALUES (?,?,?,?,?) ");

			ps.setString(1, tecnico.getNome());
			ps.setString(2, tecnico.getCpf());
			ps.setString(3, tecnico.getEmail());
			ps.setString(4, tecnico.getSenha());

//			java.sql.Timestamp data = new Timestamp(tecnico.getDataCriacao().getTime());
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
	
	public List<Tecnico> pesquisarTodosTecnicos(){
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
			PreparedStatement ps = null;
			
			ps = con.prepareStatement("SELECT * FROM tecnico");
			ResultSet rs = ps.executeQuery();
			
			List<Tecnico> lista = new ArrayList<>();
			while (rs.next()) {
				Tecnico tecnico  = new Tecnico();
				tecnico.setIdTecnico(rs.getInt("idTecnico"));
				tecnico.setNome(rs.getString("nome"));
				tecnico.setCpf(rs.getString("cpf"));  
				tecnico.setEmail(rs.getString("email"));
				tecnico.setSenha(null);
					
				lista.add(tecnico);
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
	
	public void excluir(Tecnico tecnico) {
			
			Connection con = null;
			try {
				con = ConectaPostgres.criarConexao();
		        PreparedStatement ps = null;
		        
		            ps = con.prepareStatement("DELETE FROM tecnico as c where c.idTecnico = ? ");
		            ps.setLong(1, tecnico.getIdTecnico());
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

	public void alterar(Tecnico tecnico) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
	        PreparedStatement ps = null;
	        
	            ps = con.prepareStatement("UPDATE Tecnico SET nome = ? , cpf = ?, email = ?, senha = ? "
	            		+ "WHERE idTecnico = ? ");
	            
	            ps.setString(1, tecnico.getNome());
				ps.setString(2, tecnico.getCpf());
				ps.setString(3, tecnico.getEmail());
				ps.setString(4, tecnico.getSenha());
				ps.setLong(5, tecnico.getIdTecnico());
				
	            
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

	public List<Tecnico> pesquisarPorNome(Tecnico tecnico	) {
		
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
	        PreparedStatement ps = null;
	        
	            ps = con.prepareStatement("select t.idTecnico, t.nome, t.cpf, t.email  from tecnico as t where t.nome = ? ");
	            ps.setString(1, tecnico.getNome());
	            ResultSet rs = ps.executeQuery();
	            
	            List<Tecnico> lista = new ArrayList<>();
	            
				while (rs.next()) {
					Tecnico tecnico1  = new Tecnico();
					tecnico1.setIdTecnico(rs.getInt("idTecnico"));
					tecnico1.setNome(rs.getString("nome"));
					tecnico1.setCpf(rs.getString("cpf"));  
					tecnico1.setEmail(rs.getString("email"));
				
					
					lista.add(tecnico1);
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

	public String pesquisarPorId(Integer idTecnico) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
	        PreparedStatement ps = null;
	        
	            ps = con.prepareStatement("select t.nome from tecnico as t where t.idTecnico = ? ");
	            ps.setInt(1, idTecnico);
	            ResultSet rs = ps.executeQuery();
	            
	            Tecnico tecnico1  = new Tecnico();
				while (rs.next()) {
					tecnico1.setNome(rs.getString("nome"));
	            } 
				return tecnico1.getNome();
	            
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


	public Integer pesquisarTecnicoPorNome(Tecnico tecnico) {
		Connection con = null;
		try {
			con = ConectaPostgres.criarConexao();
	        PreparedStatement ps = null;
	        
	            ps = con.prepareStatement("select  c.idTecnico from tecnico as c where c.nome = ? ");
	            ps.setString(1, tecnico.getNome());
	            ResultSet rs = ps.executeQuery();
	            
	            Tecnico cliente1  = new Tecnico();
				while (rs.next()) {
					cliente1.setIdTecnico(rs.getInt("idTecnico"));
	            } 
				return cliente1.getIdTecnico();
	            
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




}}