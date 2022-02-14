	-- Criando e selecionando o Banco de Dados
CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

		-- Criando as tabelas
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    responsavel VARCHAR(40),
    PRIMARY KEY (id)
);
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    valor DEC(14,2) NOT NULL,
    fabricante VARCHAR(40) NOT NULL,
    fk_categoria BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);
		-- ###
		
			-- Populando as tabelas
        -- Populando a tabela de categorias
INSERT INTO tb_categoria(nome, responsavel)
	VALUES
		("Carnes", "Joao"),
        ("Enlatados", "Marcos"),
        ("Bebidas", "Pedro");
        
		-- Populando a tabela de produtos
INSERT INTO tb_produto (nome, valor, fabricante, fk_categoria)
	VALUES
		("Carne", 45.50, "indefinido", 1),
        ("Atum Enlatado", 5.50, "Gomes da costa", 2),
        ("Vodka", 47.50, "Smirnoff", 3),
        ("Linguica", 18.50, "indefinido", 1),
        ("Frango", 17.50, "indefinido", 1),
        ("Whisky", 80.50, "indefinido", 3),
        ("Milho", 7.50, "Cocoricó", 2);
		-- ###
        
				-- Fazendo os SELECTS/Consultas
        -- Fazendo SELECT dos produtos mais caros que R$50,00
SELECT * FROM tb_produto WHERE valor > 50.00;

		-- Fazendo SELECT dos produtos com valor entre R$3,00 e R$60,00
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

		-- Fazendo SELECT dos produtos que começam com a letra " C "
SELECT * FROM tb_produto WHERE nome LIKE "C%";

		-- Fazendo o SELECT com INNER JOIN
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria;

		-- Fazendo SELECT com INNER JOIN de produtos de mesma categoria
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria
		WHERE id_categoria = 2;