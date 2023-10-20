package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.atm.centroguayas.MODELO.TipoUsuariosBD;
import com.atm.centroguayas.REPOSITORIO.TipoUsuariosRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class TipoUsuarios {
	@Autowired
	private TipoUsuariosRepositorio repositorio;

	@RequestMapping("/TipoUsuarios")
	public List<TipoUsuariosBD> listaTipoUsuarios() {
		return repositorio.findAll();
	}
}
