DROP SCHEMA IF EXISTS mydb CASCADE;

CREATE SCHEMA IF NOT EXISTS mydb;
SET SCHEMA 'mydb' ;

DROP TABLE IF EXISTS mydb.cidade ;

CREATE TABLE IF NOT EXISTS mydb.cidade (
  idCidade INT NOT NULL,
  dscCidade VARCHAR(45) NOT NULL,
  PRIMARY KEY (idCidade))
;


DROP TABLE IF EXISTS mydb.bairro ;

CREATE TABLE IF NOT EXISTS mydb.bairro (
  idBairro INT NOT NULL,
  dscBairro VARCHAR(45) NOT NULL,
  cidade_idCidade INT NOT NULL,
  PRIMARY KEY (idBairro),
  FOREIGN KEY (cidade_idCidade)
  REFERENCES mydb.cidade (idCidade)
   );


DROP TABLE IF EXISTS mydb.endereco ;

CREATE TABLE IF NOT EXISTS mydb.endereco (
  idEndereco INT NOT NULL,
  dscEndereco VARCHAR(45) NOT NULL,
  bairro_idBairro INT NOT NULL,
  PRIMARY KEY (idEndereco),
  FOREIGN KEY (bairro_idBairro)
  REFERENCES mydb.bairro (idBairro)
  );


DROP TABLE IF EXISTS mydb.cliente ;

CREATE TABLE IF NOT EXISTS mydb.cliente (
  idCliente INT NOT NULL,
  dscNomCliente VARCHAR(45) NOT NULL,
  dscCPFCliente VARCHAR(45) NULL,
  endereco_idEndereco INT NOT NULL,
  PRIMARY KEY (idCliente),
  FOREIGN KEY (endereco_idEndereco)
  	REFERENCES mydb.endereco (idEndereco)
  );


DROP TABLE IF EXISTS mydb.contatoCliente ;

CREATE TABLE IF NOT EXISTS mydb.contatoCliente (
  idContatoCliente INT NOT NULL,
  dscContatoCliente VARCHAR(45) NOT NULL,
  tpContatoCliente VARCHAR(45) NULL,
  cliente_idCliente INT NOT NULL,
  PRIMARY KEY (idContatoCliente),
  FOREIGN KEY (cliente_idCliente)
  	REFERENCES mydb.cliente (idCliente)
  );


DROP TABLE IF EXISTS mydb.loja ;

CREATE TABLE IF NOT EXISTS mydb.loja (
  idLoja INT NOT NULL,
  dscNomLoja VARCHAR(45) NOT NULL,
  dscCNPJLoja VARCHAR(45) NULL,
  endereco_idEndereco INT NOT NULL,
  PRIMARY KEY (idLoja),
  FOREIGN KEY (endereco_idEndereco)
	  REFERENCES mydb.endereco (idEndereco)
  );


DROP TABLE IF EXISTS mydb.contatoLoja ;

CREATE TABLE IF NOT EXISTS mydb.contatoLoja (
  idContatoLoja INT NOT NULL,
  dscContatoLoja VARCHAR(45) NOT NULL,
  tpContatoLoja VARCHAR(45) NOT NULL,
  loja_idLoja INT NOT NULL,
  PRIMARY KEY (idContatoLoja),
  FOREIGN KEY (loja_idLoja)
    REFERENCES mydb.loja (idLoja)
  );


DROP TABLE IF EXISTS mydb.produto ;

CREATE TABLE IF NOT EXISTS mydb.produto (
  idProduto INT NOT NULL,
  dscNomProduto VARCHAR(45) NOT NULL,
  tpProduto VARCHAR(45) NULL,
  PRIMARY KEY (idProduto))
;


DROP TABLE IF EXISTS mydb.precoProd ;

CREATE TABLE IF NOT EXISTS mydb.precoProd (
  dscPrecoLojaProd VARCHAR(45) NOT NULL,
  idPrecoProd INT NOT NULL,
  produto_idProduto INT NOT NULL,
  loja_idLoja INT NOT NULL,
  PRIMARY KEY (idPrecoProd),
  FOREIGN KEY (produto_idProduto)
    REFERENCES mydb.produto (idProduto),
  FOREIGN KEY (loja_idLoja)
    REFERENCES mydb.loja (idLoja)
  );


DROP TABLE IF EXISTS mydb.entregador ;

CREATE TABLE IF NOT EXISTS mydb.entregador (
  idEntregador INT NOT NULL,
  dscNomEntregador VARCHAR(45) NOT NULL,
  PRIMARY KEY (idEntregador))
;


DROP TABLE IF EXISTS mydb.contatoEntregador ;

CREATE TABLE IF NOT EXISTS mydb.contatoEntregador (
  idContatoEntregador INT NOT NULL,
  dscContatoEntregador VARCHAR(45) NOT NULL,
  tpContatoEntregador VARCHAR(45) NOT NULL,
  entregador_idEntregador INT NOT NULL,
  PRIMARY KEY (idContatoEntregador),
  FOREIGN KEY (entregador_idEntregador)
    REFERENCES mydb.entregador (idEntregador)
  );


DROP TABLE IF EXISTS mydb.pedidos ;

CREATE TABLE IF NOT EXISTS mydb.pedidos (
  idPedidos INT NOT NULL,
  dataPedido DATE NOT NULL,
  dscSttsPedido VARCHAR(45) NOT NULL,
  cliente_idCliente INT NOT NULL,
  entregador_idEntregador INT NOT NULL,
  PRIMARY KEY (idPedidos),
  FOREIGN KEY (cliente_idCliente)
    REFERENCES mydb.cliente (idCliente),
  FOREIGN KEY (entregador_idEntregador)
    REFERENCES mydb.entregador (idEntregador)
  );


DROP TABLE IF EXISTS mydb.pedidosPrecoProd ;

CREATE TABLE IF NOT EXISTS mydb.pedidosPrecoProd (
  qntdPedidosPrecoProd INT NOT NULL,
  precoProd_idPrecoProd VARCHAR(45) NOT NULL,
  pedidos_idPedidos INT NOT null,
  FOREIGN KEY (precoProd_idPrecoProd)
    REFERENCES mydb.precoProd (idPrecoProd),
  FOREIGN KEY (pedidos_idPedidos)
    REFERENCES mydb.pedidos (idPedidos)
   );

  
   
  START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (1, 'Vitória');
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (2, 'Serra');
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (3, 'Cariacica');
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (4, 'Vila Velha');
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (5, 'Guarapari');
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (6, 'Fundão');
INSERT INTO mydb.cidade (idCidade, dscCidade) VALUES (7, 'Viana');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (1, 'Cidade Continental', 2);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (2, 'Jardim Camburi', 1);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (3, 'Jardim da Penha', 1);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (4, 'Serra Dourada III', 2);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (5, 'São Torquato', 4);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (6, 'Flexal II', 3);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (7, 'André Carloni', 2);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (8, 'Mata da Praia', 1);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (9, 'Itaparica', 4);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (10, 'Praia da Costa', 4);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (11, 'Itapuã', 4);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (12, 'Praia do Morro', 5);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (13, 'Ipiranga', 5);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (14, '13 de Maio', 7);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (15, 'Beira Rio', 6);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (16, 'Campestre I', 6);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (17, 'Argolas', 7);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (18, 'Manguinhos', 2);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (19, 'Bicanga', 2);
INSERT INTO mydb.bairro (idBairro, dscBairro, cidade_idCidade) VALUES (20, 'São Diogo', 1);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (1, 'Rua São João - 22', 4);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (2, 'Rua dos Lirios - 228', 7);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (3, 'Avenida Ho Shi Min - 177', 20);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (4, 'Rua Professor Fisicando - 001', 13);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (5, 'Vale da Praia - 225', 3);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (6, 'Rua Aurora - 507', 15);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (7, 'Rua Esmeria Barros Deorce - 285', 2);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (8, 'Rua das Flores - 911', 17);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (9, 'Avenida Jose Paulo da Costa - 718', 12);
INSERT INTO mydb.endereco (idEndereco, dscEndereco, bairro_idBairro) VALUES (10, 'Avenida Professor Costa Gomes - 34', 3);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.cliente (idCliente, dscNomCliente, dscCPFCliente, endereco_idEndereco) VALUES (1, 'Mario Luiz', '324.785.190-97', 2);
INSERT INTO mydb.cliente (idCliente, dscNomCliente, dscCPFCliente, endereco_idEndereco) VALUES (2, 'Paulo Andre', '724.886.460-91', 4);
INSERT INTO mydb.cliente (idCliente, dscNomCliente, dscCPFCliente, endereco_idEndereco) VALUES (3, 'Gabriel Félix', '242.168.730-65', 6);
INSERT INTO mydb.cliente (idCliente, dscNomCliente, dscCPFCliente, endereco_idEndereco) VALUES (4, 'Larissa Bonomo', '724.374.640-34', 8);
INSERT INTO mydb.cliente (idCliente, dscNomCliente, dscCPFCliente, endereco_idEndereco) VALUES (5, 'Julia Gomes', '043.072.920-06', 10);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.contatoCliente (idContatoCliente, dscContatoCliente, tpContatoCliente, cliente_idCliente) VALUES (1, 'mariolz@gmail.com', 'email', 1);
INSERT INTO mydb.contatoCliente (idContatoCliente, dscContatoCliente, tpContatoCliente, cliente_idCliente) VALUES (2, '27 9968866053', 'cll', 2);
INSERT INTO mydb.contatoCliente (idContatoCliente, dscContatoCliente, tpContatoCliente, cliente_idCliente) VALUES (3, '55 30518512', 'cll', 3);
INSERT INTO mydb.contatoCliente (idContatoCliente, dscContatoCliente, tpContatoCliente, cliente_idCliente) VALUES (4, 'larissinha@gmail.com', 'email', 4);
INSERT INTO mydb.contatoCliente (idContatoCliente, dscContatoCliente, tpContatoCliente, cliente_idCliente) VALUES (5, '27 981379976', 'cll', 5);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.loja (idLoja, dscNomLoja, dscCNPJLoja, endereco_idEndereco) VALUES (1, 'Game Over', '96.426.818/0001-40', 1);
INSERT INTO mydb.loja (idLoja, dscNomLoja, dscCNPJLoja, endereco_idEndereco) VALUES (2, 'Lótus', '44.605.913/0001-07', 3);
INSERT INTO mydb.loja (idLoja, dscNomLoja, dscCNPJLoja, endereco_idEndereco) VALUES (3, 'Elegance', '59.395.917/0001-85', 5);
INSERT INTO mydb.loja (idLoja, dscNomLoja, dscCNPJLoja, endereco_idEndereco) VALUES (4, 'Q Beleza', '71.357.824/0001-61', 7);
INSERT INTO mydb.loja (idLoja, dscNomLoja, dscCNPJLoja, endereco_idEndereco) VALUES (5, 'Belo Tricot', '16.901.825/0001-17', 9);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (1, 'lojagameover@gmail.com', 'email', 1);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (2, '27 92993-4078', 'cll', 1);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (3, 'lotusroupas@hotmail.com', 'email', 2);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (4, '27 96312-6142', 'cll', 2);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (5, 'elegancefashion@gmail.com', 'email', 3);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (6, '27 97133-6910', 'cll', 3);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (7, 'belezacosmeticos@outlook.com', 'email', 4);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (8, '27 94896-1432', 'cll', 4);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (9, 'belotricot@hotmail.com', 'email', 5);
INSERT INTO mydb.contatoLoja (idContatoLoja, dscContatoLoja, tpContatoLoja, loja_idLoja) VALUES (10, '27 91077-0372', 'cll', 5);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (1, 'Playstation 4', 'Console de Videogame');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (2, 'Fogão Dako 4 bocas', 'Eletrodoméstico');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (3, 'Televisão Sony 50', 'Eletrônico');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (5, 'Jogo de cadeiras de madeira', 'Móvel');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (6, 'Jogo God Of War PS4', 'Jogo Eletrônico');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (7, 'Caneca decorada', 'Casa e decoração');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (8, 'Estojo de maquiagem', 'Moda e beleza');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (9, 'Camiseta Polo', 'Moda e beleza');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (10, 'Mesa de madeira maciça', 'Móvel');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (11, 'Celular Motorola G8', 'Celular');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (12, 'Lixeira para cozinha', 'Casa e decoração');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (13, 'Torneira para banheiro', 'Casa e decoração');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (14, 'Bicicleta aro 16 infantil', 'Brinquedos');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (15, 'Notebook Samsung Book X40', 'Informática');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (16, 'Mouse Gfallen', 'Informática');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (17, 'Anel de ouro com diamantes', 'Jóias e bijuterias');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (18, 'Vestido longo', 'Moda e beleza');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (19, 'Perfume Oboticário', 'Perfumaria');
INSERT INTO mydb.produto (idProduto, dscNomProduto, tpProduto) VALUES (20, 'Calças Jeans básicas', 'Moda e beleza');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('1450.0', 1, 1, 1);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('1200.0', 2, 3, 1);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('150.0', 3, 6, 1);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('3240.0', 4, 15, 1);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('350.0', 5, 16, 1);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('50.0', 6, 7, 5);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('150.0', 7, 8, 4);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('80.0', 8, 19, 4);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('60.0', 9, 9, 2);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('100.0', 10, 18, 2);
INSERT INTO mydb.precoProd (dscPrecoLojaProd, idPrecoProd, produto_idProduto, loja_idLoja) VALUES ('3250.0', 11, 17, 3);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.entregador (idEntregador, dscNomEntregador) VALUES (1, 'João Pedro');
INSERT INTO mydb.entregador (idEntregador, dscNomEntregador) VALUES (2, 'Daniel Silva');
INSERT INTO mydb.entregador (idEntregador, dscNomEntregador) VALUES (3, 'Pedro Augusto');
INSERT INTO mydb.entregador (idEntregador, dscNomEntregador) VALUES (4, 'Mariana Ortelan');
INSERT INTO mydb.entregador (idEntregador, dscNomEntregador) VALUES (5, 'Sara Stein');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.contatoEntregador (idContatoEntregador, dscContatoEntregador, tpContatoEntregador, entregador_idEntregador) VALUES (1, 'jp@gmail.com', 'email', 1);
INSERT INTO mydb.contatoEntregador (idContatoEntregador, dscContatoEntregador, tpContatoEntregador, entregador_idEntregador) VALUES (2, '27998159961', 'cll', 2);
INSERT INTO mydb.contatoEntregador (idContatoEntregador, dscContatoEntregador, tpContatoEntregador, entregador_idEntregador) VALUES (3, 'dani@gmail.com', 'email', 2);
INSERT INTO mydb.contatoEntregador (idContatoEntregador, dscContatoEntregador, tpContatoEntregador, entregador_idEntregador) VALUES (4, '27990663901', 'cll', 3);
INSERT INTO mydb.contatoEntregador (idContatoEntregador, dscContatoEntregador, tpContatoEntregador, entregador_idEntregador) VALUES (5, '27 903847909', 'cll', 4);
INSERT INTO mydb.contatoEntregador (idContatoEntregador, dscContatoEntregador, tpContatoEntregador, entregador_idEntregador) VALUES (6, 'sara@gmail.com', 'email', 5);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.pedidos (idPedidos, dataPedido, dscSttsPedido, cliente_idCliente, entregador_idEntregador) VALUES (1, '2020-10-03', 'Entregue', 1, 3);
INSERT INTO mydb.pedidos (idPedidos, dataPedido, dscSttsPedido, cliente_idCliente, entregador_idEntregador) VALUES (2, '2020-06-22', 'Entregue', 3, 5);
INSERT INTO mydb.pedidos (idPedidos, dataPedido, dscSttsPedido, cliente_idCliente, entregador_idEntregador) VALUES (3, '2021-06-29', 'Em andamento', 2, 1);
INSERT INTO mydb.pedidos (idPedidos, dataPedido, dscSttsPedido, cliente_idCliente, entregador_idEntregador) VALUES (4, '2021-07-01', 'Em andamento', 5, 2);

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (1, '1', 1);
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (2, '2', 1);
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (1, '3', 1);
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (1, '11', 2);
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (1, '7', 3);
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (1, '8', 3);
INSERT INTO mydb.pedidosPrecoProd (qntdPedidosPrecoProd, precoProd_idPrecoProd, pedidos_idPedidos) VALUES (3, '6', 4);

COMMIT;