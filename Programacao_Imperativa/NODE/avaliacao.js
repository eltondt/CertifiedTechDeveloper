let aluno = {
    nome : "Fulano",
    faltas : 5,
    notas : [7,8,6,10]
}

console.log(aluno);

function Aluno (nome, faltas, notas){
    this.nome = nome,
    this.faltas = faltas,
    this.notas = notas,
    this.calculadoraMedia = function(){
        let acc = 0;
        let count =0;
        for(let i=0; i < this.notas.length; i++);
    }
    let media = acc / count[i];
    return "A media é " + media;
    
    };

//     this.ausente = function(){
//         this.faltas++;
//     }
// }

let aux = new Aluno("Elton" , 3 , [9,8,7,10]);
console.log(aux.calculadoraMedia());

module.exports = Aluno;