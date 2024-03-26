create database loja

use loja

create table cds(
	codigo int primary key not null,
	nome_cd varchar(255) not null,
	datacompra date not null,
	valorpago decimal(10,2) not null,
	localcompra varchar(255) not null,
	album varchar(4) not null, check(album in('sim', 'n�o'))
)

create table musicas(
	numero_musica int primary key not null,
	codigoCD int not null,
	nome_musica varchar(255) not null,
	artista varchar(255) not null,
	tempo varchar(255) not null
)


insert into cds (codigo, nome_cd, datacompra, valorpago, localcompra, album) values ('1', 'Guitarra M�gica', '2024-03-01', '20.50', 'Melodia Store', 'sim'),
																					('2', 'Sinfonia Celestial', '2024-03-05', '15.75', 'Harmonia Music', 'n�o'),
																					('3', 'Harmonia dos Ventos', '2024-03-10', '18.99', 'Sons do Mundo', 'sim'),
																					('4', 'Piano Encantado', '2024-03-15', '22.30', 'Melodia Store', 'n�o'),
																					('5', 'Melodias da Natureza', '2024-03-20', '17.45', 'Harmonia Music', 'sim')
																					
insert into cds (codigo, nome_cd, datacompra, valorpago, localcompra, album) values ('6', 'Musica Legal', '2024-03-30', '10.50', 'Submarino', 'n�o')


insert into musicas (numero_musica, codigoCD, nome_musica, artista, tempo) values ('1', '1', 'Can��o do Amanhecer', 'Jos� Pedro', '0:3:45'),
																				  ('2', '1', 'Harmonia dos Ventos', 'Orquestra Celestial', '0:4:10'),
																				  ('3', '2', 'Serenata Noturna', 'Piano Mel�dico', '0:5:20'),
																				  ('4', '2', 'Crep�sculo na Cidade', 'Orquestra Urbana', '0:3:55'),
																				  ('5', '3', 'Caminhos da Floresta', 'Jos� Pedro', '0:4:30'),
																				  ('6', '3', 'Trilha dos Sonhos', 'Orquestra dos Bosques', '0:3:15'),
																				  ('7', '4', 'Melodia do Sil�ncio', 'Piano Encantado', '0:4:45'),
																				  ('8', '4', 'Can��o da Solid�o', 'Jos� Pedro', '0:5:10'),
																				  ('9', '5', 'Dan�a dos Ventos', 'Bailarinos Celestiais', '0:3:30'),
																				  ('10', '5', 'Sinfonia da Natureza', 'Orquestra Natural', '0:6:00')


select * from cds

select nome_cd, datacompra from cds order by nome_cd

select nome_cd, datacompra from cds order by datacompra desc

select nome_cd, datacompra, valorpago from cds order by valorpago desc

select sum(valorpago) from cds

select * from musicas where codigoCD = 1

select nome_musica, artista from musicas

select numero_musica, nome_musica, tempo from musicas where codigoCD = 5 order by numero_musica

select count(numero_musica) from musicas

select nome_musica from musicas where artista = 'Jos� Pedro'

select nome_cd from cds where localcompra = 'Submarino'

select * from musicas order by nome_musica

select * from cds where album = 'sim'

select avg(valorpago) from cds
