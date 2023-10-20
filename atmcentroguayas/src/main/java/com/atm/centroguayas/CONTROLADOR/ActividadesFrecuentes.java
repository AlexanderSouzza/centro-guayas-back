package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.atm.centroguayas.MODELO.ActividadesFrecuentesBD;
import com.atm.centroguayas.REPOSITORIO.ActividadesFrecuentesRepositorio;

@RestController
@RequestMapping("/api/v1/") /// C
public class ActividadesFrecuentes {
	@Autowired
	private ActividadesFrecuentesRepositorio repositorio;
	@RequestMapping("/ActividadesFrecuentes")
	public List<ActividadesFrecuentesBD> listaActividadesFrecuentes() {
		return repositorio.findAll();
	};
}
