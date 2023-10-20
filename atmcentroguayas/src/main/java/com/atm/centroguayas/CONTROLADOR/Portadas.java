package com.atm.centroguayas.CONTROLADOR;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.atm.centroguayas.MODELO.PortadasBD;
import com.atm.centroguayas.REPOSITORIO.PortadasRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class Portadas {
	@Autowired
	private PortadasRepositorio repositorio;

	@RequestMapping("/Portadas")
	public List<PortadasBD> listaPortadas() {
		return repositorio.findAll();
	};
}
