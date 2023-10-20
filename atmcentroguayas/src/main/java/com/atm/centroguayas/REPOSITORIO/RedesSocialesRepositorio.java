package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atm.centroguayas.MODELO.RedesSocialesBD;

@Repository
public interface RedesSocialesRepositorio extends JpaRepository<RedesSocialesBD, Long> {

}
