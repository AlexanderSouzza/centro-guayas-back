package com.atm.centroguayas.CONTROLADOR;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.atm.centroguayas.MODELO.ContenidosBD;
import com.atm.centroguayas.REPOSITORIO.ContenidosRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class Contenidos {
	@Autowired
	private ContenidosRepositorio repositorio;

	@RequestMapping("/Contenidos")
	public List<ContenidosBD> listaContenidos() {
		return repositorio.findAll();
	}
}
