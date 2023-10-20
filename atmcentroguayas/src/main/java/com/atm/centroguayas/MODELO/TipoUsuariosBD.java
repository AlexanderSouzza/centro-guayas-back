package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tipousuarios")
public class TipoUsuariosBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codtipousuario")
	private Long id;
	@Column(name = "descripcion", nullable = false)
	private String descripcion;

	public TipoUsuariosBD() {

	}

	public TipoUsuariosBD(Long id, String descripcion) {
		super();
		this.id = id;
		this.descripcion = descripcion;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

}
