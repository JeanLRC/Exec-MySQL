			-- Criando e selecionando o Banco
CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

			-- Criando as tabelas
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    responsavel VARCHAR(40) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    valor DEC(15,2) NOT NULL,
    fabricante VARCHAR(40) NOT NULL,
    fk_categoria BIGINT NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);
			-- ###
            -- Populando as tabelas
INSERT INTO tb_categoria (nome, responsavel)
	VALUES
		("Cimento", "Joao"),
        ("Torneiras", "Marcos"),
        ("Blocos", "Pedro");
INSERT INTO tb_produto(nome, valor, fabricante, fk_categoria)
	VALUES
		("Torneira de ferro", 80.50, "Tigre", 2),
        ("Torneira de plástico", 5.50, "Tigre", 2),
        ("Bloco M", 18.00, "Construtora A", 3),
        ("Bloco G", 18.50, "Construtora B", 3),
        ("Bloco P", 17.50, "Construtora C", 3),
        ("Cimento tipo A", 40.50, "Concreteira A", 1),
        ("Cimento tipo B", 35.50, "Concreteira B", 1);
			-- ###
            
			-- Fazendo os SELECTS/Consultas
		-- Fazendo SELECT dos produtos mais caros que R$50,00
SELECT * FROM tb_produto WHERE valor > 50.00;

		-- Fazendo SELECT dos produtos com valor entre R$3,00 e R$60,00
SELECT * FROM tb_produto WHERE valor BETWEEN 3.00 AND 60.00;

		-- Fazendo SELECT dos produtos que começam com a letra " C "
SELECT * FROM tb_produto WHERE nome LIKE "C%";

		-- Fazendo o SELECT com INNER JOIN
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria;
    
		-- Fazendo SELECT com INNER JOIN de produtos de mesma categoria
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_categoria
		WHERE tb_categoria.id = 3;