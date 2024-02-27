CREATE DATABASE CORREIOS;

USE CORREIOS;

CREATE TABLE TERRITORIO(
	cod_territorio int primary key not null,
	cod_regiao int not null,
	nome varchar(200) not null,

	foreign key(cod_regiao) references REGIAO(cod_regiao)


)

CREATE TABLE ENVIO(
	cod_envio int primary key not null,
	cod_territorio int not null,
	cod_regiao int null,
	cod_categoria int not null,
	nomenavio varchar(200) not null,
	cidade varchar(200) not null,
	frete decimal(10,2) not null,

	foreign key (cod_territorio) references TERRITORIO(cod_territorio),
	foreign key (cod_categoria) references CATEGORIA(cod_categoria)


)

CREATE TABLE REGIAO(
	cod_regiao int primary key not null,
	nome_regiao varchar(200) not null
)

CREATE TABLE CATEGORIA(
	cod_categoria int primary key not null,
	nome_categoria varchar(200) not null,
	descricao varchar(200) not null
)