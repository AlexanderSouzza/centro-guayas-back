package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "redessociales")
public class RedesSocialesBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codredsocial")
	private Long id;
	@Column(name = "icono", nullable = false)
	private String icono;
	@Column(name = "url", nullable = false)
	private String url;
	public RedesSocialesBD() {
		
	}
	public RedesSocialesBD(Long id, String icono, String url) {
		super();
		this.id = id;
		this.icono = icono;
		this.url = url;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getIcono() {
		return icono;
	}
	public void setIcono(String icono) {
		this.icono = icono;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
