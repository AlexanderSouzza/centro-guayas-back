package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atm.centroguayas.MODELO.ContactosBD;

@Repository
public interface ContactosRepositorio extends JpaRepository<ContactosBD, Long> {

}
