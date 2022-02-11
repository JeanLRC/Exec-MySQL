		-- Criando o banco de dados
create database db_rh;

		-- Selecionando qual banco usar
use db_rh;				
			
		-- Criando a tabela de funcionaries e determinando atributos relevantes
create table tb_funcionaries(
	id bigint(5) auto_increment,
    nome varchar(50) not null,
    CPF bigint(13) not null,
    telefone varchar(20),
    salario decimal(10,2),
    primary key (id)
);

		-- Populando a tabela de funcionaries
insert into tb_funcionaries (nome, CPF, telefone, salario) values ("Jean", 12312312312,"4002-8922", 3500.00);
insert into tb_funcionaries (nome, CPF, telefone, salario) values ("João", 12312312345,"4002-8922", 1000.00);
insert into tb_funcionaries (nome, CPF, telefone, salario) values ("Deise", 98798798712,"4002-8922", 10000.00);
insert into tb_funcionaries (nome, CPF, telefone, salario) values ("Monark", 42042042042,"4002-8922", 250.00);
insert into tb_funcionaries (nome, CPF, telefone, salario) values ("Lucas", 23423423423,"4002-8922", 5000.00);

		-- Fazendo o select de funcionaries com salario maior que R$2000,00
select * from tb_funcionaries where salario > 2000;

		-- Fazendo o select de funcionaries com salario menor que R$2000,00
select * from tb_funcionaries where salario < 2000;

		-- Atualizando um dado da tabela
update tb_funcionaries set nome ="Raimundo", salario = 2700.00 where id = 2;