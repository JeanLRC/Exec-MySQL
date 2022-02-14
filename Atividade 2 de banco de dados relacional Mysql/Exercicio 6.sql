CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_curso(
	id BIGINT AUTO_INCREMENT,
    formacao VARCHAR(40) NOT NULL,
    professor VARCHAR(40) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    aula VARCHAR(40) NOT NULL,
    duracao DOUBLE NOT NULL,
    valor double NOT NULL,
    fk_curso BIGINT NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_curso) REFERENCES tb_curso(id)
);

INSERT INTO tb_curso (professor, formacao)
	VALUES
		("Joao", "Matematico"),
        ("Marcelo", "Quimico"),
        ("Saulo", "Literatura");
        
INSERT INTO tb_categoria (aula, duracao,valor, fk_curso)
	VALUES
		("Aula de matematica", 60, 80.00, 1),
        ("Aula de quimica", 55, 40.00, 2),
        ("Aula de portugues", 55, 15.00, 3);
        
SELECT * FROM tb_categoria WHERE valor > 50;
SELECT * FROM tb_categoria WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_categoria WHERE nome LIKE "J%";

SELECT * FROM tb_categoria
	INNER JOIN tb_curso ON tb_curso.id = tb_categoria.fk_curso;
    
SELECT * FROM tb_categoria
	INNER JOIN tb_curso ON tb_curso.id = tb_categoria.fk_curso
		WHERE tb_categoria.id = 2;