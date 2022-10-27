package servico.util;

import java.sql.SQLException;
import java.util.Date;

import servico.DAO.ConectaPostgres;
import servico.controller.ClienteController;
import servico.entidade.Cliente;

public class testeCliente {

	public static void main(String[] args) {
		
		try {
			ConectaPostgres.criarConexao();
			
			Cliente c = new Cliente();
			c.setNome("fabio");
			c.setCpf("83668549141");
			c.setEmail("fabio@gmail.com");
			c.setSenha("12345");
			c.setDataCriacao(new Date());
			
			ClienteController controller = new ClienteController();
    		controller.salvar();
			
			
			
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

	}

}
