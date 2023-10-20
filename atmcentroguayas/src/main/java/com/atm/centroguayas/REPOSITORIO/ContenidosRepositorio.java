package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atm.centroguayas.MODELO.ContenidosBD;
@Repository
public interface ContenidosRepositorio extends JpaRepository<ContenidosBD, Long>{

}
