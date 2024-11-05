create database Perfumaria /*Criação do banco de dados*/

use Perfumaria /*selecionando banco*/

/*Criação da tabela Região*/
create table Regiao(
	codigo int primary key not null,
	nome varchar(255) not null
)

/*Criação da tabela Pontos Estratégicos*/
create table Ponto_Est(
	codRegiao int not null,
	codigo int primary key not null,
	nome varchar(255) not null,

	foreign key (codRegiao) references Regiao(codigo)
)

/*Criação da tabela Vendedor*/
create table Vendedor(
	codigo int primary key not null,
	codRegiao int not null,
	nome varchar(255) not null,

	foreign key (codRegiao) references Regiao(codigo)
)

/*Criação da tabela Veiculo*/
create table Veiculo(
	codigo int primary key not null,
	placa varchar(8) not null
)

/*Criação da tabela Escala*/
create table Escala(
	codigo int primary key not null,
	codVend int not null,
	dataEsc date not null,
	horario varchar(6) not null,

	foreign key (codVend) references Vendedor(codigo)
)

/*Criação da tabela Cliente*/
create table Cliente(
	codigo int primary key not null,
	nome varchar(255) not null,
	cpf varchar(15) not null,
	endereço varchar(255) not null
)

/*Criação da tabela Nota Fiscal*/
create table Nota_Fiscal(
	codigo int primary key not null,
	codVend int not null,
	codCli int not null,
	dataCompra date not null,
	horario varchar(6) not null,

	foreign key (codVend) references Vendedor(codigo),
	foreign key (codCli) references Cliente(codigo)
)

/*Criação da tabela Produto*/
create table Produto(
	codigo int primary key not null,
	nome varchar(255) not null,
	estoque int,
	valor decimal(10,2)
)

