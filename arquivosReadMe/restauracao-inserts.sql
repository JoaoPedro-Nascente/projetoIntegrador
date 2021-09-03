-- Schema mydb
DROP SCHEMA IF EXISTS mydb CASCADE;

CREATE SCHEMA IF NOT EXISTS mydb;
SET SCHEMA 'mydb' ;

DROP TABLE IF EXISTS mydb.pessoa ;

CREATE TABLE IF NOT EXISTS mydb.pessoa (
  idPessoa INT NOT NULL,
  dscNomPessoa VARCHAR(50) NOT NULL,
  endereco VARCHAR(50),
  PRIMARY KEY (idPessoa)
 );


DROP TABLE IF EXISTS mydb.tpcontato ;

CREATE TABLE IF NOT EXISTS mydb.tpcontato (
  idTpContato INT NOT NULL,
  dscTpContato VARCHAR(50) NOT NULL,
  PRIMARY KEY (idTpContato))
;


DROP TABLE IF EXISTS mydb.contato ;

CREATE TABLE IF NOT EXISTS mydb.contato (
  dscContato VARCHAR(50) NOT NULL,
  pessoa_idPessoa INT NOT NULL,
  tpcontato_idTpContato INT NOT NULL,
  FOREIGN KEY (pessoa_idPessoa)
    REFERENCES mydb.pessoa (idPessoa),
  foreign key (tpcontato_idTpContato)
    references mydb.tpcontato (idTpContato)
);


drop table if exists mydb.produto;

create table if not exists mydb.produto (
	idProduto INT not null,
	tpProduto VARCHAR(50) not null,
	dscProduto VARCHAR(50) not null,
	primary key (idProduto)
);


drop table if exists mydb.catalogo;

create table if not exists mydb.catalogo (
	idCatalogo INT not null,
	dscPrecoCatalogo DECIMAL not null,
	produto_idProduto INT not null,
	pessoa_idPessoa INT not null,
	primary key (idCatalogo),
	foreign key (produto_idProduto)
		references mydb.produto (idProduto),
	foreign key (pessoa_idPessoa)
		references mydb.pessoa (idPessoa)
);


drop table if exists mydb.pedido;

create table if not exists mydb.pedido(
	idPedido INT not null,
	pessoa_idPessoa INT not null,
	primary key (idPedido),
	foreign key (pessoa_idPessoa)
		references mydb.pessoa (idPessoa)
);


drop table if exists mydb.itensvendidos;

create table if not exists mydb.itensvendidos(
	dscQtd INT not null,
	catalogo_idCatalogo INT not null,
	pedido_idPedido INT not null,
	foreign key (catalogo_idCatalogo)
		references mydb.catalogo (idCatalogo),
	foreign key (pedido_idPedido)
		references mydb.pedido (idPedido)
);


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.tpcontato (idTpContato, dscTpContato) VALUES (1, 'email');
INSERT INTO mydb.tpcontato (idTpContato, dscTpContato) VALUES (2, 'instagram');
INSERT INTO mydb.tpcontato (idTpContato, dscTpContato) VALUES (3, 'celular');
INSERT INTO mydb.tpcontato (idTpContato, dscTpContato) VALUES (4, 'facebook');
INSERT INTO mydb.tpcontato (idTpContato, dscTpContato) VALUES (5, 'twitter');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (1, 'Rua São João - 22', 'Mario Luiz');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (2, 'Rua dos Lírios - 228', 'Paulo Andre');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (3, 'Avenida Ho Shi Min - 117', 'Gabriel Felix');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (4, 'Rua Professor Fisicando - 001', 'Larissa Bonomo');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (5, 'Vale da Praia - 225', 'Julia Gomes');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (6, 'Rua Aurora - 507', 'Jeremias Oliveira');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (7, 'Rua Esmeria Barros Deorce - 285', 'Ana Carolina');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (8, 'Rua das Flores - 911', 'Beatriz Clark');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (9, 'Avenida José Paulo da Costa - 718', 'Lais Silva');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (10, 'Avenida Professor Costa Gomes - 34', 'Eryc Pereira');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (11, 'Avenida Professor Herminio Blackman - 225', 'Game Over');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (12, 'Rua dos Laranjais - 1008', 'Lótus');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (13, 'Avenida Bento Brigadeiro - 208', 'Elegance');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (14, 'Avenida Cristiano Ronaldo - 2222', 'Q Beleza');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (15, 'Avenida Neymar Junior - 2022', 'Belo Tricot');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (16, 'Alameda Carmen Rosa da Fonseca - 515', 'João Pedro');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (17, 'Travessa da Macieira - 489', 'Daniel Silva');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (18, 'Rua Mário Pires - 171', 'Pedro Augusto');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (19, 'Travessa Independência - 175', 'Mariana Ortelan');
INSERT INTO mydb.pessoa (idPessoa, endereco, dscNomPessoa) VALUES (20, 'Rua Recife - 225', 'Sara Stein');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('jp@gmail.com', 1, 16);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 998159961', 3, 1);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('dani@gmail.com', 1, 17);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 990663901', 3, 11);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 903847909', 3, 7);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('sarahstein@gmai.com', 1, 20);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('@elegancefashion', 2, 13);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('lojagameover@gmail.com', 1, 11);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 929934078', 3, 2);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('lotusroupas@hotmail.com', 1, 12);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 963126142', 3, 4);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 971336910', 3, 8);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('belezacosmeticos@gmail.com', 1, 14);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 948961432', 3, 3);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('belotricot@hotmail.com', 1, 15);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('27 910770327', 3, 9);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('Sarah Stein', 4, 20);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('@lotusRoupas', 2, 12);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('@beloTricot', 2, 15);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('marioLuiz123', 5, 1);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('biazinhaGatinha5557', 5, 8);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('Gabriel Felix', 4, 3);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('jullye556', 5, 5);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('Jeremias Oliveira Neto', 4, 6);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('hjTemGolDo_ribamar', 5, 10);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('jaum_oBrabo', 2, 16);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('daniel_silva', 2, 18);
INSERT INTO mydb.contato (dscContato, tpcontato_idTpContato, pessoa_idPessoa) VALUES ('Mariana Ortelan', 5, 19);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (1, 'Playstation 4', 'Console de Videogame');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (2, 'Fogão Dako 4 bocas', 'Eletrodoméstico');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (3, 'Televisão Sony 50', 'Eletrônico');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (4, 'Jogo de cadeiras de madeira', 'Móvel');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (5, 'Jogo God Of War PS4', 'Jogo Eletrônico');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (6, 'Caneca decorada', 'Casa e decoração');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (7, 'Estojo de maquiagem', 'Moda e beleza');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (8, 'Camisa Polo', 'Moda e beleza');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (9, 'Mesa de madeira maciça', 'Móvel');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (10, 'Motorola G8', 'Eletrônico');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (11, 'Lixeira para cozinha', 'Casa e decoração');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (12, 'Torneira', 'Casa e decoração');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (13, 'Bicicleta aro 16 infantil', 'Brinquedos');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (14, 'Notebook Samsung Book X40', 'Eletrônico');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (15, 'Mouse Gfallen', 'Eletrônico');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (16, 'Anel de ouro com diamantes', 'Joias e bijuterias');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (17, 'Vestido longo', 'Moda e beleza');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (18, 'Perfume Oboticário', 'Perfumaria');
INSERT INTO mydb.produto (idProduto, dscProduto, tpProduto) VALUES (19, 'Calças Jeans', 'Moda e beleza');
insert into mydb.produto (idProduto, dscProduto, tpProduto) values (20, 'Terno', 'Moda e beleza');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.pedido (idPedido, pessoa_idPessoa) VALUES (1, 1);
INSERT INTO mydb.pedido (idPedido, pessoa_idPessoa) VALUES (2, 3);
INSERT INTO mydb.pedido (idPedido, pessoa_idPessoa) VALUES (3, 2);
INSERT INTO mydb.pedido (idPedido, pessoa_idPessoa) VALUES (4, 5);
COMMIT;

START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('1450.0', 1, 1, 11);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('1200.0', 2, 3, 11);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('150.0', 3, 6, 11);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('3240.0', 4, 15, 11);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('350.0', 5, 16, 11);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('50.0', 6, 7, 15);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('150.0', 7, 8, 14);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('80.0', 8, 19, 14);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('60.0', 9, 9, 12);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('100.0', 10, 18, 12);
INSERT INTO mydb.catalogo (dscPrecoCatalogo, idCatalogo, produto_idProduto, pessoa_idPessoa) VALUES ('3250.0', 11, 17, 13);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (1, 1, 1);
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (2, 2, 1);
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (1, 3, 1);
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (1, 11, 2);
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (1, 7, 3);
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (1, 8, 3);
INSERT INTO mydb.itensvendidos (dscQtd, catalogo_idCatalogo, pedido_idPedido) VALUES (3, 6, 4);

COMMIT;