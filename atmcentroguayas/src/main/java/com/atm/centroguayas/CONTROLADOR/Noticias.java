package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.atm.centroguayas.MODELO.NoticiasBD;
import com.atm.centroguayas.REPOSITORIO.NoticiasRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND

public class Noticias {
	@Autowired
	private NoticiasRepositorio repositorio;

	@RequestMapping("/Noticias")
	public List<NoticiasBD> listaNoticias() {
		return repositorio.findAll();
	}
}
