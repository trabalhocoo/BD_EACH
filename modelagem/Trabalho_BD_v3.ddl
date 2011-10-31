-- *********************************************
-- * SQL PostgreSQL generation                 
-- *--------------------------------------------
-- * DB-MAIN version: 9.1.4              
-- * Generator date: Jun 14 2011              
-- * Generation date: Sun Oct 30 21:29:17 2011 
-- * LUN file: E:\dev\bd_each\modelagem\Trabalho_BD_v1.lun 
-- * Schema: Sistema_colaborativo_de_imagens/1 
-- ********************************************* 


-- Database Section
-- ________________ 

-- create database Sistema_colaborativo_de_imagens;


-- Tables Section
-- _____________ 

create table ATRIBUTOS (
     id_atributo serial not null,
     id_usuario integer,
     nome varchar(50) not null,
     data_criacao_atrib date not null,
     constraint IDATRIBUTOS_ID primary key (id_atributo),
     constraint FKcriacao_atrib_ID unique (id_usuario));

create table CATEGORIA_DE_ACESSO (
     id_categoriaAcesso serial not null,
     descricao varchar(50) not null,
     constraint IDCATEGORIA_DE_ACESSO_ID primary key (id_categoriaAcesso));

create table CATEGORIA_DE_USUARIO (
     id_categoriaUsuario serial not null,
     descricao varchar(50) not null,
     constraint IDCATEGORIA_DE_USUARIO_ID primary key (id_categoriaUsuario));

create table COORDENADAS (
     id_coord serial not null,
     coord_x numeric(10) not null,
     coord_y numeric(10) not null,
     constraint IDCOORDENADAS_ID primary key (id_coord));

create table IMAGEM (
     id_imagem serial not null,
     id_coord integer,
     id_tipo integer,
     id_usuario integer,
     url varchar(100) not null,
     descricao varchar(200) not null,
     pontuacao numeric(100) not null,
     data_upload date not null,
     constraint IDIMAGEM_ID primary key (id_imagem),
     constraint FKimagem_coordenadas_ID unique (id_coord),
     constraint FKimagem_tipo_ID unique (id_tipo),
     constraint FKupload_ID unique (id_usuario));

create table faz_comentarios (
     id_comentario serial not null,
     conteudo varchar(500) not null,
     id_usuario integer not null,
     id_imagem integer not null,
     constraint IDfaz_comentarios primary key (id_comentario));

create table OBJETOS (
     id_objeto serial not null,
     id_coord integer,
     id_atributo integer not null,
     descricao varchar(50) not null,
     constraint IDOBJETOS primary key (id_objeto),
     constraint FKobjeto_coord_ID unique (id_coord),
     constraint FKatrib_obj_ID unique (id_atributo));

create table imagem_atributos (
     id_atributo integer not null,
     id_imagem integer not null,
     constraint IDimagem_atributos primary key (id_imagem, id_atributo));

create table SUGESTAO (
     id_sugestao serial not null,
     id_imagem integer,
     id_atributo integer,
     id_usuario integer,
     texto varchar(200) not null,
     pontuacao numeric(100) not null,
     data_sugestao date not null,
     constraint IDSUGESTAO primary key (id_sugestao),
     constraint FKsugestao_imagem_ID unique (id_imagem),
     constraint FKsugestao_atributo_ID unique (id_atributo),
     constraint FKfaz_ID unique (id_usuario));

create table TIPO (
     id_tipo serial not null,
     descricao varchar(50) not null,
     constraint IDTIPO_ID primary key (id_tipo));

create table USUARIO (
     id_usuario serial not null,
     id_categoriaUsuario integer,
     id_categoriaAcesso integer,
     nome varchar(25) not null,
     pontuacao numeric(100) not null,
     data_da_criacao date not null,
     constraint IDUsuario_ID primary key (id_usuario),
     constraint FKusuario_categoria_ID unique (id_categoriaUsuario),
     constraint FKacesso_usuario_ID unique (id_categoriaAcesso));

create table usuario_voto (
     id_sugestao integer not null,
     id_usuario integer not null,
     data_do_voto date not null,
     constraint IDusuario_voto primary key (id_sugestao, id_usuario));


-- Constraints Section
-- ___________________ 

--Not implemented
--alter table ATRIBUTOS add constraint IDATRIBUTOS_CHK
--     check(exists(select * from SUGESTAO
--                  where SUGESTAO.id_atributo = id_atributo)); 

alter table ATRIBUTOS add constraint FKcriacao_atrib_FK
     foreign key (id_usuario)
     references USUARIO;

--Not implemented
--alter table CATEGORIA_DE_ACESSO add constraint IDCATEGORIA_DE_ACESSO_CHK
--     check(exists(select * from USUARIO
--                  where USUARIO.id_categoriaAcesso = id_categoriaAcesso)); 

--Not implemented
--alter table CATEGORIA_DE_USUARIO add constraint IDCATEGORIA_DE_USUARIO_CHK
--     check(exists(select * from USUARIO
--                  where USUARIO.id_categoriaUsuario = id_categoriaUsuario)); 

--Not implemented
--alter table COORDENADAS add constraint IDCOORDENADAS_CHK
--     check(exists(select * from IMAGEM
--                  where IMAGEM.id_coord = id_coord)); 

--Not implemented
--alter table COORDENADAS add constraint IDCOORDENADAS_CHK
--     check(exists(select * from OBJETOS
--                  where OBJETOS.id_coord = id_coord)); 

--Not implemented
--alter table IMAGEM add constraint IDIMAGEM_CHK
--     check(exists(select * from SUGESTAO
--                  where SUGESTAO.id_imagem = id_imagem)); 

alter table IMAGEM add constraint FKimagem_coordenadas_FK
     foreign key (id_coord)
     references COORDENADAS;

alter table IMAGEM add constraint FKimagem_tipo_FK
     foreign key (id_tipo)
     references TIPO;

alter table IMAGEM add constraint FKupload_FK
     foreign key (id_usuario)
     references USUARIO;

alter table faz_comentarios add constraint FKfaz_USU
     foreign key (id_usuario)
     references USUARIO;

alter table faz_comentarios add constraint FKfaz_IMA
     foreign key (id_imagem)
     references IMAGEM;

alter table OBJETOS add constraint FKobjeto_coord_FK
     foreign key (id_coord)
     references COORDENADAS;

alter table OBJETOS add constraint FKatrib_obj_FK
     foreign key (id_atributo)
     references ATRIBUTOS;

alter table imagem_atributos add constraint FKima_IMA
     foreign key (id_imagem)
     references IMAGEM;

alter table imagem_atributos add constraint FKima_ATR
     foreign key (id_atributo)
     references ATRIBUTOS;

alter table SUGESTAO add constraint FKsugestao_imagem_FK
     foreign key (id_imagem)
     references IMAGEM;

alter table SUGESTAO add constraint FKsugestao_atributo_FK
     foreign key (id_atributo)
     references ATRIBUTOS;

alter table SUGESTAO add constraint FKfaz_FK
     foreign key (id_usuario)
     references USUARIO;

--Not implemented
--alter table TIPO add constraint IDTIPO_CHK
--     check(exists(select * from IMAGEM
--                  where IMAGEM.id_tipo = id_tipo)); 

--Not implemented
--alter table USUARIO add constraint IDUsuario_CHK
--     check(exists(select * from ATRIBUTOS
--                  where ATRIBUTOS.id_usuario = id_usuario)); 

--Not implemented
--alter table USUARIO add constraint IDUsuario_CHK
--     check(exists(select * from SUGESTAO
--                  where SUGESTAO.id_usuario = id_usuario)); 

--Not implemented
--alter table USUARIO add constraint IDUsuario_CHK
--     check(exists(select * from IMAGEM
--                  where IMAGEM.id_usuario = id_usuario)); 

alter table USUARIO add constraint FKusuario_categoria_FK
     foreign key (id_categoriaUsuario)
     references CATEGORIA_DE_USUARIO;

alter table USUARIO add constraint FKacesso_usuario_FK
     foreign key (id_categoriaAcesso)
     references CATEGORIA_DE_ACESSO;

alter table usuario_voto add constraint FKusu_USU
     foreign key (id_usuario)
     references USUARIO;

alter table usuario_voto add constraint FKusu_SUG
     foreign key (id_sugestao)
     references SUGESTAO;


-- Index Section
-- _____________ 
