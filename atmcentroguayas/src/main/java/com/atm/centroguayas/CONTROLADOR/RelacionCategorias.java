package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.atm.centroguayas.MODELO.RelacionCategoriasBD;
import com.atm.centroguayas.REPOSITORIO.RelacionCategoriasRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND

public class RelacionCategorias {
	@Autowired
	private RelacionCategoriasRepositorio repositorio;
	@RequestMapping("/RelacionCategorias")
	public List<RelacionCategoriasBD> listaRelacionCategorias() {
		return repositorio.findAll();
	};
}
