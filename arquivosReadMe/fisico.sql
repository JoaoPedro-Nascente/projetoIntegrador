-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE categoriaVeiculo (
dscCategoriaVeiculo VARCHAR(10),
idCategoriaVeiculo VARCHAR(10) PRIMARY KEY
)

CREATE TABLE veiculo (
dscVeiculo VARCHAR(10),
idVeiculo VARCHAR(10) PRIMARY KEY,
idCategoriaVeiculo VARCHAR(10),
idUsuario VARCHAR(10),
FOREIGN KEY(idCategoriaVeiculo) REFERENCES categoriaVeiculo (idCategoriaVeiculo)
)

CREATE TABLE usuario (
dscIdentificacaoUsuario VARCHAR(10),
dscNomeUsuario VARCHAR(10),
dscEmailUsuario VARCHAR(10),
dscSenhaUsuario VARCHAR(10),
dscUsuario VARCHAR(10),
idUsuario VARCHAR(10) PRIMARY KEY,
dscAreaAtuacao VARCHAR(10),
dscTelUsuario VARCHAR(10)
)

ALTER TABLE veiculo ADD FOREIGN KEY(idUsuario) REFERENCES usuario (idUsuario)
