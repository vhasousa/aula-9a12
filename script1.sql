CREATE DATABASE teste;

USE teste;

CREATE TABLE cliente (
	matricula int auto_increment,
    nome varchar(60) NOT NULL,
    telefone char(13),
    email varchar(60),
    nascimento date NOT NULL,
    primary key(matricula)
);

drop table cliente;

DESCRIBE cliente;

INSERT INTO cliente
	(matricula, nome, telefone, email, nascimento)
    VALUES
		(null, 'Vitor Hugo Almeida', '24998548386', 'vitor.sousa@docente.senai.br', '1998-09-04');


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clientes.csv'
INTO TABLE cliente
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(nome, telefone, email, nascimento) SET matricula = NULL;

select * from cliente;
