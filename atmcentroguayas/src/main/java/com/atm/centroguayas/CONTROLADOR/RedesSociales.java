package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.atm.centroguayas.MODELO.RedesSocialesBD;
import com.atm.centroguayas.REPOSITORIO.RedesSocialesRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND

public class RedesSociales {
	@Autowired
	private RedesSocialesRepositorio repositorio;

	@RequestMapping("/RedesSociales")
	public List<RedesSocialesBD> listaRedesSociales() {
		return repositorio.findAll();
	};
}
