PGDMP                     	    {            atmcentroguayas    10.23    10.23 2    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            E           1262    16393    atmcentroguayas    DATABASE     �   CREATE DATABASE atmcentroguayas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE atmcentroguayas;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            F           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            G           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1255    16481 3   iniciarsesion(character varying, character varying)    FUNCTION     �   CREATE FUNCTION public.iniciarsesion(character varying, character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
begin
  return (SELECT COUNT(usuario) FROM usuarios WHERE usuario=$1 AND clave=$2); 
end;
$_$;
 J   DROP FUNCTION public.iniciarsesion(character varying, character varying);
       public       postgres    false    3    1            �            1259    19079    actividadesfrecuentes    TABLE     �   CREATE TABLE public.actividadesfrecuentes (
    codactividadfrecuente integer NOT NULL,
    titulo character varying(40) NOT NULL,
    url character varying(255) NOT NULL
);
 )   DROP TABLE public.actividadesfrecuentes;
       public         postgres    false    3            �            1259    19044 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    codcategoria integer NOT NULL,
    nombre character varying(40) NOT NULL,
    url character varying(255)
);
    DROP TABLE public.categorias;
       public         postgres    false    3            �            1259    19111 	   contactos    TABLE     �   CREATE TABLE public.contactos (
    codcontacto integer NOT NULL,
    titulo character varying(30) NOT NULL,
    descripcion character varying(100) NOT NULL
);
    DROP TABLE public.contactos;
       public         postgres    false    3            �            1259    19084 
   contenidos    TABLE       CREATE TABLE public.contenidos (
    codcontenido integer NOT NULL,
    titulo character varying(30) NOT NULL,
    subtitulo character varying(30),
    descripcion text NOT NULL,
    recurso character varying(20) NOT NULL,
    url character varying(255)
);
    DROP TABLE public.contenidos;
       public         postgres    false    3            �            1259    19092    noticias    TABLE     �   CREATE TABLE public.noticias (
    codnoticia integer NOT NULL,
    titulo character varying(30) NOT NULL,
    fecha date NOT NULL,
    descripcion text NOT NULL,
    recurso character varying(20) NOT NULL,
    url character varying(255)
);
    DROP TABLE public.noticias;
       public         postgres    false    3            �            1259    19074    portadas    TABLE     �   CREATE TABLE public.portadas (
    codportada integer NOT NULL,
    imagen character varying(20) NOT NULL,
    url character varying(255)
);
    DROP TABLE public.portadas;
       public         postgres    false    3            �            1259    19064    procesos    TABLE     �   CREATE TABLE public.procesos (
    codproceso integer NOT NULL,
    codcategoria integer,
    nombre character varying(40) NOT NULL,
    url character varying(255)
);
    DROP TABLE public.procesos;
       public         postgres    false    3            �            1259    19116    redessociales    TABLE     �   CREATE TABLE public.redessociales (
    codredsocial integer NOT NULL,
    icono character varying(30) NOT NULL,
    url text NOT NULL
);
 !   DROP TABLE public.redessociales;
       public         postgres    false    3            �            1259    19049    relacioncategorias    TABLE     �   CREATE TABLE public.relacioncategorias (
    codrelacion integer NOT NULL,
    codcategoriapadre integer NOT NULL,
    codcategoriahija integer NOT NULL
);
 &   DROP TABLE public.relacioncategorias;
       public         postgres    false    3            �            1259    19026    tipousuarios    TABLE     v   CREATE TABLE public.tipousuarios (
    codtipousuario integer NOT NULL,
    descripcion character varying NOT NULL
);
     DROP TABLE public.tipousuarios;
       public         postgres    false    3            �            1259    19100    transparencias    TABLE       CREATE TABLE public.transparencias (
    codtransparencia integer NOT NULL,
    codcategoria integer NOT NULL,
    anio smallint NOT NULL,
    url character varying(255) NOT NULL,
    CONSTRAINT transparencias_anio_check CHECK (((anio >= 1900) AND (anio <= 2100)))
);
 "   DROP TABLE public.transparencias;
       public         postgres    false    3            �            1259    19034    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    codusuario integer NOT NULL,
    codtipousuario integer NOT NULL,
    usuario character varying(20) NOT NULL,
    clave character varying(15) NOT NULL
);
    DROP TABLE public.usuarios;
       public         postgres    false    3            :          0    19079    actividadesfrecuentes 
   TABLE DATA               S   COPY public.actividadesfrecuentes (codactividadfrecuente, titulo, url) FROM stdin;
    public       postgres    false    202   :       6          0    19044 
   categorias 
   TABLE DATA               ?   COPY public.categorias (codcategoria, nombre, url) FROM stdin;
    public       postgres    false    198   �:       >          0    19111 	   contactos 
   TABLE DATA               E   COPY public.contactos (codcontacto, titulo, descripcion) FROM stdin;
    public       postgres    false    206   �;       ;          0    19084 
   contenidos 
   TABLE DATA               `   COPY public.contenidos (codcontenido, titulo, subtitulo, descripcion, recurso, url) FROM stdin;
    public       postgres    false    203   8<       <          0    19092    noticias 
   TABLE DATA               X   COPY public.noticias (codnoticia, titulo, fecha, descripcion, recurso, url) FROM stdin;
    public       postgres    false    204   �<       9          0    19074    portadas 
   TABLE DATA               ;   COPY public.portadas (codportada, imagen, url) FROM stdin;
    public       postgres    false    201   =       8          0    19064    procesos 
   TABLE DATA               I   COPY public.procesos (codproceso, codcategoria, nombre, url) FROM stdin;
    public       postgres    false    200   5=       ?          0    19116    redessociales 
   TABLE DATA               A   COPY public.redessociales (codredsocial, icono, url) FROM stdin;
    public       postgres    false    207   �=       7          0    19049    relacioncategorias 
   TABLE DATA               ^   COPY public.relacioncategorias (codrelacion, codcategoriapadre, codcategoriahija) FROM stdin;
    public       postgres    false    199   J>       4          0    19026    tipousuarios 
   TABLE DATA               C   COPY public.tipousuarios (codtipousuario, descripcion) FROM stdin;
    public       postgres    false    196   m>       =          0    19100    transparencias 
   TABLE DATA               S   COPY public.transparencias (codtransparencia, codcategoria, anio, url) FROM stdin;
    public       postgres    false    205   �>       5          0    19034    usuarios 
   TABLE DATA               N   COPY public.usuarios (codusuario, codtipousuario, usuario, clave) FROM stdin;
    public       postgres    false    197   �>       �
           2606    19083 0   actividadesfrecuentes actividadesfrecuentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actividadesfrecuentes
    ADD CONSTRAINT actividadesfrecuentes_pkey PRIMARY KEY (codactividadfrecuente);
 Z   ALTER TABLE ONLY public.actividadesfrecuentes DROP CONSTRAINT actividadesfrecuentes_pkey;
       public         postgres    false    202            �
           2606    19048    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (codcategoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public         postgres    false    198            �
           2606    19115    contactos contactos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (codcontacto);
 B   ALTER TABLE ONLY public.contactos DROP CONSTRAINT contactos_pkey;
       public         postgres    false    206            �
           2606    19091    contenidos contenidos_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.contenidos
    ADD CONSTRAINT contenidos_pkey PRIMARY KEY (codcontenido);
 D   ALTER TABLE ONLY public.contenidos DROP CONSTRAINT contenidos_pkey;
       public         postgres    false    203            �
           2606    19099    noticias noticias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.noticias
    ADD CONSTRAINT noticias_pkey PRIMARY KEY (codnoticia);
 @   ALTER TABLE ONLY public.noticias DROP CONSTRAINT noticias_pkey;
       public         postgres    false    204            �
           2606    19078    portadas portadas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.portadas
    ADD CONSTRAINT portadas_pkey PRIMARY KEY (codportada);
 @   ALTER TABLE ONLY public.portadas DROP CONSTRAINT portadas_pkey;
       public         postgres    false    201            �
           2606    19068    procesos procesos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.procesos
    ADD CONSTRAINT procesos_pkey PRIMARY KEY (codproceso);
 @   ALTER TABLE ONLY public.procesos DROP CONSTRAINT procesos_pkey;
       public         postgres    false    200            �
           2606    19123     redessociales redessociales_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.redessociales
    ADD CONSTRAINT redessociales_pkey PRIMARY KEY (codredsocial);
 J   ALTER TABLE ONLY public.redessociales DROP CONSTRAINT redessociales_pkey;
       public         postgres    false    207            �
           2606    19053 *   relacioncategorias relacioncategorias_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.relacioncategorias
    ADD CONSTRAINT relacioncategorias_pkey PRIMARY KEY (codrelacion);
 T   ALTER TABLE ONLY public.relacioncategorias DROP CONSTRAINT relacioncategorias_pkey;
       public         postgres    false    199            �
           2606    19033    tipousuarios tipousuarios_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipousuarios
    ADD CONSTRAINT tipousuarios_pkey PRIMARY KEY (codtipousuario);
 H   ALTER TABLE ONLY public.tipousuarios DROP CONSTRAINT tipousuarios_pkey;
       public         postgres    false    196            �
           2606    19105 "   transparencias transparencias_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.transparencias
    ADD CONSTRAINT transparencias_pkey PRIMARY KEY (codtransparencia);
 L   ALTER TABLE ONLY public.transparencias DROP CONSTRAINT transparencias_pkey;
       public         postgres    false    205            �
           2606    19038    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (codusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public         postgres    false    197            �
           2606    19069    procesos fk_codcategoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.procesos
    ADD CONSTRAINT fk_codcategoria FOREIGN KEY (codcategoria) REFERENCES public.categorias(codcategoria) ON UPDATE CASCADE ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.procesos DROP CONSTRAINT fk_codcategoria;
       public       postgres    false    200    198    2723            �
           2606    19106    transparencias fk_codcategoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.transparencias
    ADD CONSTRAINT fk_codcategoria FOREIGN KEY (codcategoria) REFERENCES public.categorias(codcategoria) ON UPDATE CASCADE ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.transparencias DROP CONSTRAINT fk_codcategoria;
       public       postgres    false    205    198    2723            �
           2606    19059 &   relacioncategorias fk_codcategoriahija    FK CONSTRAINT     �   ALTER TABLE ONLY public.relacioncategorias
    ADD CONSTRAINT fk_codcategoriahija FOREIGN KEY (codcategoriahija) REFERENCES public.categorias(codcategoria) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.relacioncategorias DROP CONSTRAINT fk_codcategoriahija;
       public       postgres    false    198    199    2723            �
           2606    19054 '   relacioncategorias fk_codcategoriapadre    FK CONSTRAINT     �   ALTER TABLE ONLY public.relacioncategorias
    ADD CONSTRAINT fk_codcategoriapadre FOREIGN KEY (codcategoriapadre) REFERENCES public.categorias(codcategoria) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.relacioncategorias DROP CONSTRAINT fk_codcategoriapadre;
       public       postgres    false    198    2723    199            �
           2606    19039    usuarios fk_codtipousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_codtipousuario FOREIGN KEY (codtipousuario) REFERENCES public.tipousuarios(codtipousuario) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_codtipousuario;
       public       postgres    false    2719    197    196            :   l   x�3��M,)�L.�IL���S�TJ-�,�<�9O!,5,QęQRRP�e�RtxanfIj1TĘ�9?��4�$Q!%U!ĀI�p:���$�f��䃤CJ���a�1z\\\ WR,`      6   �   x�3����L����())(�2�t񅲍9��S������PaN__g]ϔ�/�h@b1T��38��d$LĜ3�(1�� �(5�*j�霟W��\��Wi	�Q!%U�1'31�*Q����(�$5���d��=... �O=�      >   �   x�̱�0 й��5��7�vԉ��ir��R�G'?�?�nozkuv��u��	�	�G�0�
��@�Ȑ�#\0�����g&�>��
g�Nx��K��W'^�b���P�Y�+�u]�J�+�;9`��~�Ǽ�6'�o���m2�      ;   �   x�e�1�0E�p
 u�کC;t���V�Db�$ ��3p.V`���������0+�ң�u�0��i̽P�*p��GK�����؟������3��t�ZR@(�c@�0���D:�cI5P܀mf�(��%H+ۋD���k@O�t9��4�4Y��j����zy[r�dj��U���^���/0W�      <      x������ � �      9      x������ � �      8   q   x�3�4��M,)�L.�IL���S�TJ-�,�<�9O!,5,QęQRRP�eTRtxanfIj1T�(期W\�S������b�$M����y)����y%� !�Ey�01z\\\ 8�-\      ?   �   x�3�tKLNM�����())(���///�K�
�%���;���:���뺗&V&����Z�X��Y �>�gHyfIIjܠf��	\Ɯ�y�%��E��(g�D��Kr������R��b���� �m=      7      x�3�4������ 	b      4   ,   x�3�p
u���2�tt����	rt������ �=�      =      x������ � �      5   5   x�3�4�tt���\F�F@���g0����	�1������ibld����� �	�     