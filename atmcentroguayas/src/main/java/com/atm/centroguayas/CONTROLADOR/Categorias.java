package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.atm.centroguayas.MODELO.CategoriasBD;
import com.atm.centroguayas.REPOSITORIO.CategoriasRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class Categorias {
	@Autowired
	private CategoriasRepositorio repositorio;

	public List<CategoriasBD> listarCategorias() {
		return repositorio.findAll();
	};
}
