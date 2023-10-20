package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "actividadesfrecuentes")
public class ActividadesFrecuentesBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codactividadfrecuente")
	private Long id;
	@Column(name = "titulo", nullable = false)
	private String titulo;
	@Column(name = "url", nullable = false)
	private String url;

	public ActividadesFrecuentesBD() {

	}

	public ActividadesFrecuentesBD(Long id, String titulo, String url) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.url = url;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
