package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.atm.centroguayas.MODELO.ProcesosBD;
import com.atm.centroguayas.REPOSITORIO.ProcesosRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class Procesos {
	@Autowired
	private ProcesosRepositorio repositorio;

	@RequestMapping("/Procesos")
	public List<ProcesosBD> listaProcesos() {
		return repositorio.findAll();
	};
}
