		-- Criando e selecionando o Banco de Dados
CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

			-- Criando as tabelas
		-- Criando a tabela de categorias
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
	responsavel VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
);
		-- Criando a tabela de produtos
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    valor DEC(14,2) NOT NULL,
    receita boolean,
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
		("Higiene", "Carlão"),
        ("Medicamentos", "Joana"),
        ("Beleza", "Marina"),
        ("Suplementos", "Arnold"),
        ("Alimentos", "Marcel");
		-- Populando a tabela de produtos
INSERT INTO tb_produto(nome, valor, receita, fabricante, fk_categoria)
	VALUES
		("Aspirina", 2.50, false, "Bayer", 2),
        ("Whey", 40.50, false, "Integral Medica", 4),
        ("Rivotril", 20.50, true, "Pfizer", 2),
        ("Esmalte", 4.50, false, "Anita", 3),
        ("Leite em pó", 25.50, true, "Nestle", 5),
        ("Papel higienico", 10.50, false, "Personal", 1);
			-- ###
            
			-- Fazendo os SELECTS/Consultas
		-- Fazendo SELECT dos produtos mais caros que R$50,00
SELECT * FROM tb_produto WHERE valor > 50.00;

		-- Fazendo SELECT dos produtos com valor entre R$3,00 e R$60,00
SELECT * FROM tb_produto WHERE valor BETWEEN 3.00 AND 60.00;

		-- Fazendo SELECT dos produtos que começam com a letra " B "
SELECT * FROM tb_produto WHERE nome LIKE "B%";

		-- Fazendo o SELECT com INNER JOIN
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria;

		-- Fazendo SELECT com INNER JOIN de produtos de mesma categoria
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria
		WHERE fk_categoria = 2;