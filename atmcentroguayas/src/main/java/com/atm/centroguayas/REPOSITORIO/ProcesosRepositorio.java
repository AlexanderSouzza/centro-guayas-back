package com.atm.centroguayas.REPOSITORIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.atm.centroguayas.MODELO.ProcesosBD;

@Repository
public interface ProcesosRepositorio extends JpaRepository<ProcesosBD, Long>{

}
