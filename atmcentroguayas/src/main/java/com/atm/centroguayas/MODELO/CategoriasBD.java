package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "categorias")
public class CategoriasBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codcategoria")
	private int id;
	@Column(name = "nombre", nullable = false)
	private String nombre;
	@Column(name = "url")
	private String url;

	public CategoriasBD() {

	}

	public CategoriasBD(int id, String nombre, String url) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.url = url;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
