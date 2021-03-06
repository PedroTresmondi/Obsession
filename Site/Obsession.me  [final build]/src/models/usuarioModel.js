var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM usuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function entrar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
        SELECT * FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}





function rank() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function rank(): ")
    var instrucao = `
    SELECT(SELECT count(personagem) FROM personagem join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Asuka')  AS 'asuka',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Shinji')  AS 'shinji',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Rei')  AS 'rei',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Misato')  AS 'misato',
	(SELECT count(personagem) FROM personagem  join usuario on (IDpersonagem = FK_personagem) WHERE personagem = 'Gendo')  AS 'gendo'; `
    console.log("Executando a instrução (SELECT) SQL: \n" + instrucao);
    return database.executar(instrucao);
}





function cadastrar(nome, email, senha, personagem) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, email, senha, personagem);
    var instrucao = `
        INSERT INTO usuario (nome, email, senha, FK_personagem) VALUES ('${nome}', '${email}', '${senha}','${personagem}');

    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}



module.exports = {
    entrar,
    cadastrar,
    listar,
    rank
};