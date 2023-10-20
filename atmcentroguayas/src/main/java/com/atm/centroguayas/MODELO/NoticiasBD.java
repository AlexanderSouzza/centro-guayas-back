package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "noticias")
public class NoticiasBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codnoticia")
	private Long id;
	@Column(name = "titulo", nullable = false)
	private String titulo;
	@Column(name = "descripcion", nullable = false)
	private String descripcion;
	@Column(name = "recurso", nullable = false)
	private String recurso;
	@Column(name = "url")
	private String url;

	public NoticiasBD() {

	}

	public NoticiasBD(Long id, String titulo, String descripcion, String recurso, String url) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.recurso = recurso;
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

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getRecurso() {
		return recurso;
	}

	public void setRecurso(String recurso) {
		this.recurso = recurso;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
