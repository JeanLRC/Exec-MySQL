		-- Criando o Banco de Dados
CREATE DATABASE db_generation_game_online;

		-- Selecionando o Banco
USE db_generation_game_online;
/*		Criando as tabelas

		-- Criando a tabela classe
CREATE TABLE tb_classe(
	id BIGINT(8) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    habilidade VARCHAR(50) NOT NULL,
    beneficio VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

		-- Criando a tabela personagem
CREATE TABLE tb_personagem(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    idade INT(5) NOT NULL,
    raca VARCHAR(30) NOT NULL,
    poder_ataque INT(7),
    poder_defesa INT(7),
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);
*/

/*		Populando as tabelas

		-- Populando a tabela de classes
INSERT INTO tb_classe (nome, habilidade, beneficio)
	VALUES
		("Guerreiro", "Duas mãos", "Força"),
        ("Arqueiro", "Tiro Certeiro", "Percepção"),
        ("Mago", "Bola de Fogo", "Concentração"),
        ("Paladino", "Fé inabalavel","Resistência"),
        ("Ladino", "Assasinato", "Destreza");
        
		-- Populando a tabela Personagem
 INSERT INTO tb_personagem (nome, idade, raça, classe_id, poder_ataque, poder_defesa)
	VALUES
		("Araella Xilnelis", 33, "Elfo", 2, 3300, 1300),
        ("Fozeo Evenwood", 67, "Humano", 5, 10000, 1200),
        ("Kevamros Droverson", 32, "Orc", 1, 4500, 3700),
        ("Thulgus Strongforge", 40, "Anão", 4, 3800, 3500),
        ("Bran Faringray", 47, "Humano", 4, 2600, 3700);
*/

		-- Fazendo o SELECT de personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagem WHERE poder_ataque > 2000;

		-- Fazendo o SELECT de personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 and 2000;

		-- Fazendo o SELECT buscando personagens com a letra C utilizando LIKE 
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

		-- Fazendo o Select com INNER JOIN entre classe e personagem
SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id;

		-- Fazendo o SELECT trazendo todos os personagens de uma classe especifica
SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id WHERE tb_classe.nome= "Paladino";