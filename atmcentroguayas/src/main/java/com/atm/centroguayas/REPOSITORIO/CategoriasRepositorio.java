package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atm.centroguayas.MODELO.CategoriasBD;

@Repository

public interface CategoriasRepositorio  extends JpaRepository<CategoriasBD, Long>{

}
