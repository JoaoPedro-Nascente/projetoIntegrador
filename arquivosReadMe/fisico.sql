-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE contato (
dscContatoLoja VARCHAR(10),
idTpContato VARCHAR(10),
idPessoa VARCHAR(10)
)

CREATE TABLE tpContato (
idTpContato VARCHAR(10) PRIMARY KEY,
dscTpContato VARCHAR(10)
)

CREATE TABLE Produto (
idProduto VARCHAR(10) PRIMARY KEY,
tpProduto VARCHAR(10),
dscProduto VARCHAR(10)
)

CREATE TABLE catalogo (
idCatalogo VARCHAR(10) PRIMARY KEY,
dscPrecoCatalogo VARCHAR(10),
idProduto VARCHAR(10),
idPessoa VARCHAR(10),
FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
)

CREATE TABLE Pessoa (
dscNomPessoa VARCHAR(10),
idPessoa VARCHAR(10) PRIMARY KEY,
endereco VARCHAR(10)
)

CREATE TABLE pedido (
idPedido VARCHAR(10) PRIMARY KEY,
idPessoa VARCHAR(10),
FOREIGN KEY(idPessoa) REFERENCES Pessoa (idPessoa)
)

CREATE TABLE itensVendidos (
dscQtd VARCHAR(10),
idCatalogo VARCHAR(10),
idPedido VARCHAR(10),
FOREIGN KEY(idCatalogo) REFERENCES catalogo (idCatalogo),
FOREIGN KEY(idPedido) REFERENCES pedido (idPedido)
)

ALTER TABLE contato ADD FOREIGN KEY(idTpContato) REFERENCES tpContato (idTpContato)
ALTER TABLE contato ADD FOREIGN KEY(idPessoa) REFERENCES Pessoa (idPessoa)
ALTER TABLE catalogo ADD FOREIGN KEY(idPessoa) REFERENCES Pessoa (idPessoa)
