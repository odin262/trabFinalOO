CREATE DATABASE BiblioFarg;

CREATE TABLE aluno (
  idAluno int(11) NOT NULL,
  matricula varchar(10) NOT NULL,
  idCliente int(11) DEFAULT NULL
) ;



INSERT INTO aluno (idAluno, matricula, idCliente) VALUES
(1, '1234', 1),
(2, '5678', 2),
(3, '9012', 3),
(4, '3456', 4),
(5, '7890', 5);


CREATE TABLE categoria(
  id_categoria int(11) NOT NULL,
  nome varchar(100) NOT NULL
) ;


INSERT INTO categoria (id_categoria, nome) VALUES
(1, 'Ficcao Científica'),
(2, 'Didatico'),
(3, 'Literatura'),
(4, 'Folclore');



CREATE TABLE cidades(
  codigo int(11) NOT NULL,
  nome varchar(100) NOT NULL
) ;


INSERT INTO cidades (codigo, nome) VALUES
(1, 'Porto Alegre'),
(2, 'Capão da Canoa'),
(3, 'Canoas'),
(4, 'Esteio');


CREATE TABLE cliente (
  Id_cliente int(11) NOT NULL,
  Nome varchar(50) NOT NULL,
  Endereco varchar(50) NOT NULL,
  Telefone varchar(20) NOT NULL,
  Email varchar(50) DEFAULT NULL,
  Matricula int(11) DEFAULT NULL,
  CPF int(11) DEFAULT NULL
);



INSERT INTO cliente (Id_cliente, Nome, Endereco, Telefone, Email, Matricula, CPF) VALUES
(2, 'José Antonio', 'Rua Mariante', 981852863, 'marcos.mera@gmail.com', 2, NULL),
(3, 'Pedro Viena', 'Rua Bahia', 33226520, 'pedro.v@gmail.com', 3, NULL),
(4, 'Juliano Farias', 'Rua Para', 981852863, 'j.farias@gmailcom', 4, NULL),
(5, 'Ricardo  Silva', 'Av, Bento Gonçalves, 1012', 34226520, 'r.silva@gmail.com', 5, NULL),
(6, 'Ana Boss', 'Rua 26 de dezembro', 989852863, 'ana.boss@gmail.com', NULL, 1),
(7, 'João Almeida', 'Rua Almirante 81', 30114040, 'j.almeida@gmail.com', NULL, 2),
(8, 'Marcela Ribas', 'Av.Ceara', 981852790, 'm.eduarda@gmail.com', NULL, 3),
(9, 'Maria Eduarda', 'Rua Dona Firmina', 991854863, 'm.eduarda@gmail.com', NULL, 4),
(10, 'Simone Silva', 'Rua Borborema', 991857163, 'smone.s@gmail.com', NULL, 5),
(1, 'Marcos Mera', 'Av. Borges 71', 33226520, 'marcos.mera@gmail.com', 1, NULL);


CREATE TABLE livros (
  id_livro int(11) NOT NULL,
  Titulo varchar(100) NOT NULL,
  Autor varchar(100) DEFAULT NULL,
  codCategoria int(11) NOT NULL
) ;


INSERT INTO livros (id_livro, Titulo, Autor, codCategoria) VALUES
(1, 'O que e Folclore', 'Carlos Rodrigues Brandao', 4),
(2, 'Slam', 'Nick Hornby', 1),
(3, 'Informatica Internet e Aplicativos', 'Cicero caicara Junior', 2),
(4, 'Contos', 'Machado de Assis', 3),
(5, 'O Cortiço', 'Aluisio Azevedo', 3);


CREATE TABLE professor (
  idCPF int(11) NOT NULL,
  cpf varchar(10) NOT NULL,
  id_clientes int(11) DEFAULT NULL
) ;



INSERT INTO professor (idCPF, cpf, id_clientes) VALUES
(1, '1239800400', 6),
(2, '5671185412', 7),
(3, '9012567890', 8),
(4, '900733456', 9),
(5, '7893210456', 10);



ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`);


ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);


ALTER TABLE `cidades`
  ADD PRIMARY KEY (`codigo`);


ALTER TABLE `cliente`
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `CPF` (`CPF`);


ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `codCategoria` (`codCategoria`);


ALTER TABLE `professor`
  ADD PRIMARY KEY (`idCPF`);



ALTER TABLE `aluno`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `cidades`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `livros`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `professor`
  MODIFY `idCPF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-


ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `aluno` (`idAluno`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`CPF`) REFERENCES `professor` (`idCPF`);


ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;


