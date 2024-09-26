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
	data_envio date not null,
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


insert into REGIAO(cod_regiao, nome_regiao) values ('1', 'Sudeste'),
												   ('2','Reims'),
												   ('3','Charleroi'),
												   ('4','Sul'),
												   ('5','Tachira'),
												   ('6','Graz'),
												   ('7','Oeste'),
												   ('8','Bern'),
												   ('9','Lyon'),
												   ('10','Resende')

insert into CATEGORIA(cod_categoria, nome_categoria, descricao) values ('1','cereal',''),
																	   ('2','',''),
																	   ('3','',''),
																	   ('4','',''),
																	   ('5','',''),
																	   ('6','',''),
																	   ('7','',''),
																	   ('8','',''),
																	   ('9','',''),
																	   ('10','','')