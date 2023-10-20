drop table if exists usuarios;
drop table if exists tipousuarios;
drop table if exists procesos;
drop table if exists relacioncategorias;
drop table if exists relacion_categorias;
drop table if exists categorias;
drop table if exists portadas;
drop table if exists actividadesfrecuentes;
drop table if exists contenidos;
drop table if exists noticias;
drop table if exists contactos;
drop table if exists redessociales;
-------------------------TIPOS DE USUARIOS------------------------------------
CREATE TABLE tipousuarios (
codtipousuario integer primary key,
descripcion varchar not null 
);
INSERT INTO tipousuarios(codtipousuario, descripcion) VALUES (1, 'SUPERUSUARIO'), (2, 'ADMINISTRADOR');
-------------------------TABLA USUARIOS---------------------------------------
CREATE TABLE usuarios (
codusuario integer primary key,
codtipousuario integer not null,
usuario varchar(20) not null,
clave varchar(15) not null,
constraint fk_codtipousuario FOREIGN KEY (codtipousuario) REFERENCES tipousuarios(codtipousuario) on update cascade on delete restrict
);

INSERT INTO usuarios(codusuario, codtipousuario, usuario, clave) VALUES (1, 1, 'ADMIN', 'ADMIN'), (2, 2, 'ADONIS', '1234'), (3, 2, 'ELIAS', '4321');
---------------------------------------------HEADER----------------------------------------------------------------------
-----------------------------------------MENU DE NAVEGACION-----------------------------------------------------
---------------------------CATEGORIAS DEL MENU----------------------------------
CREATE TABLE categorias (
codcategoria integer primary key,
nombre varchar(40) not null,
url varchar (255)
);
INSERT INTO categorias(codcategoria, nombre, url) VALUES (1, 'Inicio','https'), (2, 'ATM','https'), (3, 'Procesos ATMCG','https'), 
(4, 'MMC-G','https'),(5, 'Noticias','https'),(6, 'Servicios','https'),(7, 'Transparencia','https'),(8, 'Contactenos','https'),
(9, 'Proceso de Alianza Estrategíca','https');

--------------------------RELACION ENTRE LAS SUBCATEGORIAS-----------------------------------------------
CREATE TABLE relacioncategorias (
codrelacion integer primary key,
codcategoriapadre integer not null,
codcategoriahija integer not null,
constraint fk_codcategoriapadre FOREIGN KEY (codcategoriapadre) REFERENCES categorias(codcategoria) on update cascade on delete restrict,
constraint fk_codcategoriahija FOREIGN KEY (codcategoriahija) REFERENCES categorias(codcategoria) on update cascade on delete restrict
);
INSERT INTO relacioncategorias(
            codrelacion, codcategoriapadre, codcategoriahija)
    VALUES (1, 3, 9);

---------------------------PROCESOS---------------------------------------------
CREATE TABLE procesos (
codproceso integer primary key,
codcategoria integer,
nombre varchar(40) not null,
url varchar (255),
constraint fk_codcategoria FOREIGN KEY (codcategoria) REFERENCES categorias(codcategoria) on update cascade on delete restrict
);
INSERT INTO procesos(
            codproceso, codcategoria, nombre, url)
    VALUES (1, 6, 'Matriculacion y Revisión Vehicular', 'https'),(2, 6, 'Trámites', 'https'),
    (3, 6, 'Consulta de multas', 'https'),(4,6,'Agendamiento de Turnos','https');

---------------------------------------------BODY----------------------------------------------------------------------
-----------------------------PORTADA DE LA PAGINA-------------------------------------------------
CREATE TABLE portadas (
codportada integer primary key,
imagen varchar(20) not null,
url varchar (255)
);
CREATE TABLE actividadesfrecuentes (
codactividadfrecuente integer primary key,
titulo varchar(40) not null,
url varchar (255)not null
);
INSERT INTO actividadesfrecuentes(codactividadfrecuente,titulo,url)VALUES(1, 'Matriculacion y Revisión Vehicular', 'https'),(2, 'Trámites', 'https'),
    (3, 'Consulta de multas', 'https'),(4,'Agendamiento de Turnos','https');

CREATE TABLE contenidos (
codcontenido integer primary key,
titulo varchar(30) not null,
subtitulo varchar(30),
descripcion text not null,
recurso varchar(20) not null,
url varchar (255)
);
INSERT INTO contenidos(codcontenido, titulo, subtitulo, descripcion, recurso, url)
	VALUES (1, 'Matriculación y RV', '', 'Nuestro Centro de Matriculación y Revisión Vehicular, le permitirá acceder a una gama amplia de servicios, en un entorno cómodo y seguro', 'Imagen', 'https://www.atmcentroguayas.gob.ec/images/matriculacion.png');

CREATE TABLE noticias (
codnoticia integer primary key,
titulo varchar(30) not null,
descripcion text not null,
recurso varchar(20) not null,
url varchar (255)
);

---------------------------------------------FOODER----------------------------------------------------------------------
CREATE TABLE contactos (
codcontacto integer primary key,
titulo varchar(30) not null,
descripcion varchar (100) not null
);
CREATE TABLE redessociales (
codredsocial integer primary key,
icono varchar(30) not null,
url text not null
);
----------------------------INICIAR SESION------------------------------------
CREATE OR REPLACE FUNCTION iniciarsesion(varchar, varchar) RETURNS integer AS
$$
begin
  return (SELECT COUNT(usuario) FROM usuarios WHERE usuario=$1 AND clave=$2); 
end;
$$ LANGUAGE 'plpgsql';

select * from iniciarsesion('ADMIN', 'ADMIN');