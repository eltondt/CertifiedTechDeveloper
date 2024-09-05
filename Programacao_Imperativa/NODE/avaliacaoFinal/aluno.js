// Modulo com o objeto Aluno
let aluno = {
    nome : "Fulano",
    faltas : 5,
    notas : [7,8,6,10],
}

 console.log(aluno.nome);

// Construtor do objeto aluno
function Aluno(nome, faltas, notas)
{
    this.nome = nome;
    this.faltas = faltas;
    this.notas = notas;

    this.calcularMedia = function()
    {
        let acc = 0;
        let count = 0;
        for(let i = 0; i < this.notas.length; i++)
        {
            acc += this.notas[i];
            count++;
        }
        let media = acc / count;
        console.log("A media é " + media);
        return media;
    };

    this.incFaltas = function()
    {
        this.faltas++;
        return "O novo numero de faltas é " + this.faltas;
    };
}

// Teste do construtor e dos métodos
let aux = new Aluno("Paula", 1, [10,8,9,10]);
aux.calcularMedia();
console.log(aux.incFaltas());

// Exportando o construtor
module.exports = Aluno;