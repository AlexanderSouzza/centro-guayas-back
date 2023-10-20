package com.atm.centroguayas.CONTROLADOR;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.atm.centroguayas.MODELO.ContactosBD;
import com.atm.centroguayas.REPOSITORIO.ContactosRepositorio;

@RestController
@RequestMapping("/api/v1/") /// CAMBIAR RUTA SEGUN EL FRONNEND
public class Contactos {
	@Autowired
	private ContactosRepositorio repositorio;

	@RequestMapping("/Contactos")
	public List<ContactosBD> listaContactos() {
		return repositorio.findAll();
	}
}
