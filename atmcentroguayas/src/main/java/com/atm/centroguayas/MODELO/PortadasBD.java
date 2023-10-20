package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "portadas")
public class PortadasBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codportada")
	private Long id;
	@Column(name = "imagen", nullable = false)
	private String imagen;
	@Column(name = "url")
	private String url;

	public PortadasBD() {

	}

	public PortadasBD(Long id, String imagen, String url) {
		super();
		this.id = id;
		this.imagen = imagen;
		this.url = url;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
