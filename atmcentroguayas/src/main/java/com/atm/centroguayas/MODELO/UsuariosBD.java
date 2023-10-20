package com.atm.centroguayas.MODELO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "usuarios")
public class UsuariosBD {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "codusuario")
	private Long id;
	@Column(name = "codtipousuario", nullable = false)
	private Long codtipousuario;
	@Column(name = "usuario", nullable = false)
	private String usuario;
	@Column(name = "clave", nullable = false)
	private String clave;

	public UsuariosBD() {

	}

	public UsuariosBD(Long id, Long codtipousuario, String usuario, String clave) {
		super();
		this.id = id;
		this.codtipousuario = codtipousuario;
		this.usuario = usuario;
		this.clave = clave;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCodtipousuario() {
		return codtipousuario;
	}

	public void setCodtipousuario(Long codtipousuario) {
		this.codtipousuario = codtipousuario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

}
