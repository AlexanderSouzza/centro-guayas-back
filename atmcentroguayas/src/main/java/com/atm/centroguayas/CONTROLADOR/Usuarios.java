package com.atm.centroguayas.CONTROLADOR;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.atm.centroguayas.MODELO.UsuariosBD;
import com.atm.centroguayas.REPOSITORIO.UsuariosRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class Usuarios {
	@Autowired
	private UsuariosRepositorio repositorio;

	@RequestMapping("/Usuarios")
	public List<UsuariosBD> listaUsuarios() {
		return repositorio.findAll();
	}
	
}
