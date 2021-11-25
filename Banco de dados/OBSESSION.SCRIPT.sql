
use obsession;

CREATE TABLE usuario (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	personagem VARCHAR(50)
);

select * from usuario;

SELECT(SELECT count(personagem) FROM usuario WHERE personagem = 'Asuka')  AS 'asuka';

    SELECT(SELECT count(personagem) FROM usuario WHERE personagem = 'Asuka')  AS 'asuka',
    (SELECT count(personagem) FROM usuario WHERE personagem = 'Shinji')  AS 'shinji',
	(SELECT count(personagem) FROM usuario WHERE personagem = 'Rei')  AS 'rei',
	(SELECT count(personagem) FROM usuario WHERE personagem = 'Misato')  AS 'misato',
	(SELECT count(personagem) FROM usuario WHERE personagem = 'Gendo')  AS 'gendo';

SELECT (SELECT personagem) as 'nome_personagem',
(SELECT COUNT(personagem)) as 'qtd_personagem'
FROM usuario
GROUP BY personagem order by COUNT(personagem) DESC LIMIT 3;











     