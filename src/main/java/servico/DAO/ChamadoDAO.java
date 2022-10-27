package servico.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import servico.entidade.Chamado;
import servico.entidade.Cliente;

public class ChamadoDAO {
	
//	public void salvar(Chamado chamdo) {
//		Connection con = null;
	//	try {
	//		con = ConectaPostgres.criarConexao();
//			PreparedStatement ps = null;
//			ps = con.prepareStatement("INSERT INTO servico.Chamado (id,observacoes, titulo) VALUES (?,?,?) ");
			
	//		ps.setLong(1, chamdo.getId());
			//ps.setString(2,chamdo.getPrioridade());
			//ps.setString(3, chamdo.getStatus()); 
//			ps.setString(4, chamdo.getObservacoes());
//			ps.setString(5, chamdo.getTitulo());
			//ps.setString(6, chamdo.getTecnico();
			//ps.setString(7, chamdo.getCliente());
			
			
//			java.sql.Timestamp data = new Timestamp(chamdo.getDataAbertura().getTime());
//			ps.setTimestamp(8, data);
//			
//			ps.executeUpdate();
//			java.sql.Timestamp daTimestamp = new Timestamp(chamdo.getDataFechamento().getTime());
//			ps.setTimestamp(9, daTimestamp);
			
	//		ps.executeUpdate();
			
//		} catch (SQLException | ClassNotFoundException e) {
//			throw new RuntimeException(e);
	//	} finally {
	//		try {
	//			con.close();
	//		} catch (SQLException e) {
	//			e.printStackTrace();
	//		}
	//	}
//	}
	
// Chamado alterar(Chamado chamdo) {
			
	//	return null;
//	}

//	public void deletar(Chamado chamdo) {
	
//	}

//	public  List<Chamado> pesquisarAll() {
	//	return null;
//	}
	
//	public List<Chamado> pesquisarPorId(Long idChamado) {
//		return null;
//	}

}
