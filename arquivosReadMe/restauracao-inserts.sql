-- Schema mydb
DROP SCHEMA IF EXISTS mydb CASCADE;

CREATE SCHEMA IF NOT EXISTS mydb;
SET SCHEMA 'mydb' ;

DROP TABLE IF EXISTS mydb.usuario ;

CREATE TABLE IF NOT EXISTS mydb.usuario (
  idUsuario INT NOT NULL,
  dscNomeUsuario VARCHAR(50) NOT NULL,
  dscEmailUsuario VARCHAR(50) NOT NULL,
  dscSenhaUsuario VARCHAR(50) NOT NULL,
  dscIdentificacaoUsuario VARCHAR(20) NOT NULL,
  dscUsuario VARCHAR(500) NULL,
  dscTelUsuario VARCHAR(15) NULL,
  dscAreaAtuacao VARCHAR(50) NULL,
  PRIMARY KEY (idUsuario)
 );


DROP TABLE IF EXISTS mydb.categoriaVeiculo ;

CREATE TABLE IF NOT EXISTS mydb.categoriaVeiculo (
  idCategoriaVeiculo INT NOT NULL,
  dscCategoriaVeiculo VARCHAR(50) NOT NULL,
  PRIMARY KEY (idCategoriaVeiculo)
);


DROP TABLE IF EXISTS mydb.veiculo;
CREATE TABLE IF NOT EXISTS mydb.veiculo (
  idVeiculo INT NOT NULL,
  dscVeiculo VARCHAR(50) NOT NULL,
  usuario_idUsuario INT NOT NULL,
  categoriaVeiculo_idCategoriaVeiculo INT NOT NULL,
  PRIMARY KEY (idVeiculo),
  FOREIGN KEY (usuario_idUsuario)
    REFERENCES mydb.usuario (idUsuario),
  FOREIGN KEY (categoriaVeiculo_idCategoriaVeiculo)
    REFERENCES mydb.categoriaVeiculo (idCategoriaVeiculo)
);


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (1, 'Leonardo', 'leo@gmail.com', 'batatafrita123', '138.361.557-88', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (2, 'Adilson', 'adilsinho@gmail.com', 'gatodebotas', '112.141.777-94', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (3, 'Adriana', 'adriana@hotmail.com', 'MYpssw', '084.098.587-89', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (4, 'Paty Sampaio', 'patyzinha@hotmail.com', 'patypssw123', '128.776.547-53', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (5, 'Mariana', 'marimari@gmail.com', 'PHiJEaTibleV', '97.638.079/0001-12', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (6, 'Andressa', 'dressa@gmail.com', 'FasHIONweek', '638.352.431-60', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (7, 'Erick', 'erick@gmail.com', 'SkiNCAREPss', '195.340.924-09', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (8, 'Beatriz', 'bea@gmail.com', 'tricoDAvovoP', '717.386.987-08', null, null, null);
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (9, 'Carlos', 'carlos.emanuel@hotmail.com', 'senha', '560.566.520-09', 'Olá, tenho um caminhão grande e faço transporte de cargas pesadas a partir de 20 toneladas, e também faço viagens até 30 Km, valor a combinar.', '27667670098', 'Grande Vitória');
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (10, 'Amanda', 'amandinha@gmail.com', 'amandinhag4tinh4_25', '970.693.050-79', 'Olá, faço viagens de pequena distância e carrego cargas de até 650kg e distância até 15 Km.', '27988875033', 'Guarapari');
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (11, 'Marcos Fion', 'marcos.fion@hotmail.com', 'marcos19999', '297.459.300-32', 'Olá, faço transporte de cargas leves com até 6 toneladas com distância até 25 Km.', '27988875033', 'Grande Vitória');
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (12, 'Bino e Tonhão', 'antonioconceicao@gmail.com', 'binoetonhao_cargas', '202.813.240-00', 'Olá, somos amigos de infância e realizos viagens com cargas de médio porte, com peso até 10 toneladas e distância até 30 Km.', '27996749798', 'Grande Vitória');
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (13, 'Sebastião', 'seu.tiao@gmail.com', '28021976', '157.996.750-70', 'Olá, possuo um caminão médio, e carrego cargas até 13 toneladas, a distância máxima que faço por viagem é 10 Km.', '27893679987', 'Cariacica');
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (14, 'Jorge Caeta', 'jorgecaetaofc@outlook.com', 'jorjaodaM4a554', '114.012.150-25', 'Faço entregas de cargas leves, com peso até 7 toneladas e viagens até 20 Km de distâcia.', '27999879098', 'Serra');
INSERT INTO mydb.usuario (idUsuario, dscNomeUsuario, dscEmailUsuario, dscSenhaUsuario, dscIdentificacaoUsuario, dscUsuario, dscTelUsuario, dscAreaAtuacao) VALUES (15, 'Barbara e Claudio', 'barbaraMiranda@outlook.com', 'barbaraeclaudio12051994', '712.439.600-00', 'Realizamos tranporte de cargas leves, com peso até 5 toneladas, e distância até 13 Km.', '27667670098', 'Vitória');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.categoriaVeiculo (idCategoriaVeiculo, dscCategoriaVeiculo) VALUES (1, 'Frete doméstico');
INSERT INTO mydb.categoriaVeiculo (idCategoriaVeiculo, dscCategoriaVeiculo) VALUES (2, 'Carga leve');
INSERT INTO mydb.categoriaVeiculo (idCategoriaVeiculo, dscCategoriaVeiculo) VALUES (3, 'Carga média');
INSERT INTO mydb.categoriaVeiculo (idCategoriaVeiculo, dscCategoriaVeiculo) VALUES (4, 'Carga pesada');

COMMIT;


START TRANSACTION;
SET SCHEMA 'mydb';
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (1, 'Fiorino', 1, 10);
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (2, 'Cavalo Mecânico', 4, 9);
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (3, 'Caminhão Baú', 2, 11);
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (4, 'Scania R-450', 2, 12);
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (5, 'Volvo FH-540', 3, 13);
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (6, 'Mercedes-Benz Accelo', 2, 14);
INSERT INTO mydb.veiculo (idVeiculo, dscVeiculo, categoriaVeiculo_idCategoriaVeiculo, usuario_idUsuario) VALUES (7, 'VW Delivery 8160', 2, 15);

COMMIT;