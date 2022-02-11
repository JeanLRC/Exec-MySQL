		-- Criando o Banco de Dados
CREATE DATABASE db_ecommerce;

		-- Selecionando o Banco de Dados
USE db_ecommerce;

		-- Criando a tabela de produtos e seus atributos
CREATE TABLE tb_produtos(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    tamanho CHAR(2) NOT NULL,
    cor VARCHAR(23) NOT NULL,
    quantidade INT(5) NOT NULL,
    valor DEC(10,2),
    PRIMARY KEY (id)
);

		-- Populando a tabela de produtos
insert into tb_produtos (nome, tamanho, cor, quantidade, valor) 
	values
		("Camisa", 'M', "Preto", 1, 45.79),
		("Vestido", 'P', "Azul", 1, 134.99),
		("terno", 'G', "Preto", 1, 1300.00),
		("Vestido", 'M', "Verde", 1, 645.79),
		("Bolsa", 'P', "Bege", 1, 245.79);
		
        -- Selecionando todos os items da tabela com valor maior que R$500,00
SELECT * FROM tb_produtos WHERE valor > 500;

		-- Selecionando todos os items da tabela com valor menor que R$500,00
SELECT * FROM tb_produtos WHERE valor <500;

		-- Atualizando um item da tabela
UPDATE tb_produtos SET cor = "Branco" WHERE id = 1;