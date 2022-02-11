		-- Criando o Banco de Dados
CREATE DATABASE db_escola;

		-- Selecionando o Banco de Dados
USE db_escola;

		--  Criando a tabela estudantes 
CREATE TABLE tb_estudantes(
	id BIGINT(5) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    matricula VARCHAR(5) NOT NULL ,
    nota DEC(10,2) NOT NULL,
    PRIMARY KEY (id)
);
		-- Populando a tabela de estudantes
INSERT INTO tb_estudantes (nome, turma, nota, matricula)
	VALUES 
		("Douglas Johnson", "45", 8.50, "1865"),
        ("William Gomide", "14", 4.00, "123"),
        ("Luna Café", "1", 10.00, "1"),
        ("Dominic Mainha", "5", 6.50, "134"),
        ("Nelson Lameira", "22", 9.00, "876"),
        ("Kristian Varanda", "32", 2.50, "1412");

        -- Selecionando todos os items da tabela com a nota maior o igual a 7
SELECT * FROM tb_estudantes WHERE nota >= 7;

		-- Selecionando todos os items da tabela com a nota menor que 7
SELECT * FROM tb_estudantes WHERE nota < 7;

		-- Atualizando um item da tabela
UPDATE tb_estudantes SET nota = 7.50 WHERE id = 4;