
/* para workbench - local - desenvolvimento */

CREATE DATABASE obsession;

USE obsession;

 create table personagemx	 (
IDpersonagem int PRIMARY KEY auto_increment,
pesronagem VARCHAR(45)

) auto_increment =500;


CREATE TABLE usuario (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	FK_personagem int,
    foreign key (FK_personagem) references personagem (IDpersonagem)
) auto_increment = 1;

 select * from usuario;
 
