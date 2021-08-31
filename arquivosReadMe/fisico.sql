-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE precoProd (
dscPrecoLojaProd VARCHAR45,
idPrecoProd VARCHAR45 PRIMARY KEY,
idProduto VARCHAR45,
idLoja VARCHAR45
)

CREATE TABLE contatoLoja (
tpContatoLoja VARCHAR45,
dscContatoLoja VARCHAR45,
idContatoLoja VARCHAR45 PRIMARY KEY,
idLoja VARCHAR45
)

CREATE TABLE Loja (
idLoja VARCHAR45 PRIMARY KEY,
dscCNPJ VARCHAR45,
dscNomLoja VARCHAR45,
idEndereco VARCHAR(45)
)

CREATE TABLE Endereco (
dscEndereco VARCHAR45,
idEndereco VARCHAR45 PRIMARY KEY,
idBairro VARCHAR45
)

CREATE TABLE Bairro (
idBairro VARCHAR45 PRIMARY KEY,
dscBairro VARCHAR45,
idCidade VARCHAR45
)

CREATE TABLE Cidade (
idCidade VARCHAR45 PRIMARY KEY,
dscCidade VARCHAR45
)

CREATE TABLE Cliente (
idCliente VARCHAR45 PRIMARY KEY,
dscNomCliente VARCHAR45,
dscCPFCliente VARCHAR45
)

CREATE TABLE contatoCliente (
idContatoCliente VARCHAR45 PRIMARY KEY,
tpContatoLoja VARCHAR45,
dscContatoLoja VARCHAR45,
idCliente VARCHAR(45),
FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
)

CREATE TABLE Entregador (
dscEntreg VARCHAR45,
idEntreg VARCHAR45 PRIMARY KEY,
cellEntreg VARCHAR45
)

CREATE TABLE contatoEntregador (
idContatoEntregador VARCHAR45 PRIMARY KEY,
dscContatoEntregador VARCHAR45,
tpContatoEntregador VARCHAR45,
idEntreg VARCHAR45,
FOREIGN KEY(idEntreg) REFERENCES Entregador (idEntreg)
)

CREATE TABLE Produto (
idProduto VARCHAR45 PRIMARY KEY,
tpProduto VARCHAR45,
dscProduto VARCHAR45
)

CREATE TABLE Pedidos (
idPedidos VARCHAR45 PRIMARY KEY,
dataPedido VARCHAR45,
dscSttsPedidos VARCHAR45,
idCliente VARCHAR45,
idEntreg VARCHAR45,
FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente),
FOREIGN KEY(idEntreg) REFERENCES Entregador (idEntreg)
)

ALTER TABLE precoProd ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
ALTER TABLE precoProd ADD FOREIGN KEY(idLoja) REFERENCES Loja (idLoja)
ALTER TABLE contatoLoja ADD FOREIGN KEY(idLoja) REFERENCES Loja (idLoja)
ALTER TABLE Loja ADD FOREIGN KEY(idEndereco) REFERENCES Endereco (idEndereco)
ALTER TABLE Endereco ADD FOREIGN KEY(idBairro) REFERENCES Bairro (idBairro)
ALTER TABLE Bairro ADD FOREIGN KEY(idCidade) REFERENCES Cidade (idCidade)
