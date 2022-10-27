package servico.controller;

import servico.entidade.Tecnico;

public class TecnicoController {

private Tecnico tecnico = new Tecnico();
	
	public void salvar() {
		System.out.println("eitaaa");
	}

	public Tecnico getCliente() {
		return tecnico;
		
	}

	public void setTecnico(Tecnico tecnico) {
		this.tecnico = tecnico;
		
	}

}
