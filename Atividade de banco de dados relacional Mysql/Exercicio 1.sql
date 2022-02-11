		-- Criando o banco de dados 
CREATE DATABASE db_rh;

		-- Selecionando qual banco usar
USE db_rh;				
			
		-- Criando a tabela de funcionaries e determinando atributos relevantes
CREATE TABLE tb_funcionaries(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    CPF BIGINT(13) NOT NULL,
    telefone VARCHAR(20),
    salario DECIMAL(10,2),
    PRIMARY KEY (id)
);

		-- Populando a tabela de funcionaries
INSERT INTO tb_funcionaries (nome, CPF, telefone, salario) 
	VALUES 
		("Jean", 12312312312,"4002-8922", 3500.00),
		("João", 12312312345,"4002-8922", 1000.00),
		("Deise", 98798798712,"4002-8922", 10000.00),
		("Monark", 42042042042,"4002-8922", 250.00),
		("Lucas", 23423423423,"4002-8922", 5000.00);

		-- Fazendo o select de funcionaries com salario maior que R$2000,00
SELECT * FROM tb_funcionaries WHERE salario > 2000;

		-- Fazendo o select de funcionaries com salario menor que R$2000,00
SELECT * FROM tb_funcionaries WHERE salario < 2000;

		-- Atualizando um dado da tabela
UPDATE tb_funcionaries SET nome ="Raimundo", salario = 2700.00 WHERE id = 2;