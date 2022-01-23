-- Modelo físico/Script de geração
-- Schema mydb
DROP SCHEMA IF EXISTS mydb CASCADE;

CREATE SCHEMA IF NOT EXISTS mydb;
SET SCHEMA 'mydb' ;

DROP TABLE IF EXISTS mydb.usuario ;

CREATE TABLE IF NOT EXISTS mydb.usuario (
  idUsuario INT NOT NULL,
  dscNomeUsuario VARCHAR(50) NOT NULL,
  dscEmailUsuario VARCHAR(50) NOT NULL,
  dscSenhaUsuario VARCHAR(15) NOT NULL,
  dscIdentificacaoUsuario VARCHAR(20) NOT NULL,
  dscUsuario VARCHAR(500) NULL,
  PRIMARY KEY (idUsuario)
 );


DROP TABLE IF EXISTS mydb.tpVeiculo ;

CREATE TABLE IF NOT EXISTS mydb.tpVeiculo (
  idTpVeiculo INT NOT NULL,
  dscTpVeiculo VARCHAR(50) NOT NULL,
  PRIMARY KEY (idTpVeiculo)
);


DROP TABLE IF EXISTS mydb.veiculo;
CREATE TABLE IF NOT EXISTS mydb.veiculo (
  idVeiculo INT NOT NULL,
  dscVeiculo VARCHAR(50) NOT NULL,
  usuario_idUsuario INT NOT NULL,
  tpVeiculo_idTpVeiculo INT NOT NULL,
  PRIMARY KEY (idVeiculo),
  FOREIGN KEY (usuario_idUsuario)
    REFERENCES mydb.usuario (idUsuario),
  FOREIGN KEY (tpVeiculo_idTpVeiculo)
    REFERENCES mydb.tpVeiculo (idTpVeiculo)
);


drop table if exists mydb.endereco;

create table if not exists mydb.endereco (
	idEndereco INT not null,
	dscEndereco VARCHAR(50) not null,
	dscCEPEndereco VARCHAR(8) not null,
	dscNumEndereco VARCHAR(10) not null,
	dscBairro VARCHAR(50) NOT NULL,
	dscCidade VARCHAR(50) NOT NULL,
	primary key (idEndereco)
);


drop table if exists mydb.pedido;

create table if not exists mydb.pedido(
	idPedido INT not null,
	dscDataPedido DATE NOT NULL,
	dscDataMaxPedido DATE NOT NULL,
	usuario_idEntregador INT NOT NULL,
	usuario_idCliente INT NOT NULL,
	endereco_idEnderecoRetirada INT NOT NULL,
	endereco_idEnderecoEntrega INT NOT NULL,
	primary key (idPedido),
	foreign key (usuario_idEntregador)
		references mydb.usuario (idUsuario),
	FOREIGN KEY (usuario_idCliente)
		REFERENCES mydb.usuario (idUsuario),
	FOREIGN KEY (endereco_idEnderecoRetirada)
		REFERENCES mydb.endereco (idEndereco),
	FOREIGN KEY (endereco_idEnderecoEntrega)
		REFERENCES mydb.endereco (idEndereco)
);