
/* para workbench - local - desenvolvimento */
CREATE DATABASE obsession;

USE obsession;

CREATE TABLE usuario (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	personagem VARCHAR(50)
);
