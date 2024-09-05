//let estudante1 = new Estudante("Marcelo", 1, [7,8,9,10]);

//console.log(estudante1);

// module.exports = Estudante;
let EstudanteModulo = require ("./estudoProv");

let estudante1 = new EstudanteModulo("Marcelo", 1, [7,8,9,10]);
let estudante2 = new EstudanteModulo("Helen", 3, [4,8,6,10]);
let estudante3 = new EstudanteModulo("Henrique", 3, [4,5,6,8]);

listaDeEst = [estudante1, estudante2, estudante3]


console.log(estudante1.faltas);
console.log(estudante1.ausente());
console.log(estudante1.faltas);

let curso = {
    nomeDoCurso : "Matemática",
    fnotaDeAprovação : 10,
    faltasMaximas : 2,
    listaDeEst ,
}

console.log(curso);