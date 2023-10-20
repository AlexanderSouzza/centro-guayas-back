package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atm.centroguayas.MODELO.TipoUsuariosBD;

@Repository

public interface TipoUsuariosRepositorio extends JpaRepository<TipoUsuariosBD, Long> {

}
