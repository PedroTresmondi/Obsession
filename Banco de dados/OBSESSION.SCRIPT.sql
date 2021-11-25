use obsession;


select * from usuario;



create table personagem (
IDpersonagem int PRIMARY KEY auto_increment,
personagem VARCHAR(45)

) auto_increment =500;


insert into personagem (personagem) values
('Asuka'),
('Shinji'),
( 'Rei'),
('Misato'),
('Gendo');

SELECT * FROM personagem;



CREATE TABLE usuario (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	FK_personagem int,
    foreign key (FK_personagem) references personagem (IDpersonagem)
) auto_increment = 1;


select * from usuario;

SELECT(SELECT count(personagem) FROM personagem join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Asuka')  AS 'asuka',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Shinji')  AS 'shinji',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Rei')  AS 'rei',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Misato')  AS 'misato',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Gendo')  AS 'gendo';

insert into usuario (nome, email, senha, FK_personagem) values 
('Victor Afonso','afnoos@gmail.com','123','504'),
('Julia Mercia','julesm@gmail.com','namoradaoiii','502'),
('Yan Galmacci','yang@gmail.com','123','503'),
('Kaique Zed','zedsilva@gmail.com','zedpoggers','503'),
('Teemo da Silva','teemo@yordle.com','cogumelos','500'),
('Lulu da silva','lulu@yordle.com','gostoroxo','503'),
('jinx flamengo','jinx@crack.com','caitlynteodeio','504');



