package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "procesos")
public class ProcesosBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codproceso")
	private Long id;
	@Column(name = "codcategoria")
	private Long codcategoria;
	@Column(name = "nombre", nullable = false)
	private String nombre;
	@Column(name = "url")
	private String url;

	public ProcesosBD() {

	}

	public ProcesosBD(Long id, Long codcategoria, String nombre, String url) {
		super();
		this.id = id;
		this.codcategoria = codcategoria;
		this.nombre = nombre;
		this.url = url;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCodcategoria() {
		return codcategoria;
	}

	public void setCodcategoria(Long codcategoria) {
		this.codcategoria = codcategoria;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
