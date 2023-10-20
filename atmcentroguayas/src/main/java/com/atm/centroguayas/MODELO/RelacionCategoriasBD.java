package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "RelacionCategorias")
public class RelacionCategoriasBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codrelacion")
	private Long id;
	@Column(name = "codcategoriapadre", nullable = false)
	private Long codcategoriapadre;
	@Column(name = "codcategoriahija", nullable = false)
	private Long codcategoriahija;
}
