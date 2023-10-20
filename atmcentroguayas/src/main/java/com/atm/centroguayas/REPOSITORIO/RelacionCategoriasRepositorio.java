package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atm.centroguayas.MODELO.RelacionCategoriasBD;

@Repository
public interface RelacionCategoriasRepositorio extends JpaRepository<RelacionCategoriasBD, Long>{

}
