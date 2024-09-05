// Import do módulo aluno
let Aluno = require("./aluno");
const listaEstudantes = require("./estudantes");

// Criação do objeto curso
let curso = {
    nome : "CTD",
    notaAprov : 7,
    faltasMax : 4,
    listaAlunos : listaEstudantes,

    addAluno : function(aluno)
    {
        this.listaAlunos.push(aluno);
        console.log("A nova lista de alunos é:");
        console.log(this.listaAlunos)
    },

    verifAprov : function(aluno)
    {
        let obj;
        for(let i = 0; i < this.listaAlunos.length; i++)
        {
            if(this.listaAlunos[i].nome.toLowerCase() == aluno.toLowerCase())
            {
                obj = this.listaAlunos[i];
                break;
            }
        }

        if((obj.calcularMedia() >= this.notaAprov) && (obj.faltas < this.faltasMax))
        {
            console.log("Passou em condições ideais");
            return true;
        }
        else if((obj.faltas == this.faltasMax) && (obj.calcularMedia() >= this.notaAprov * 1.1))
        {
            console.log("Passou raspando");
            return true;
        }
        else
        {
            console.log("Reprovado sem lamentações");
            return false;
        }
    },

    listaAprovReprov : function()
    {
        let lista = [];
        for (let i = 0; i < this.listaAlunos.length; i++) {
            lista.push(this.verifAprov(this.listaAlunos[i].nome));
        }
        return lista;
    }
}

// Teste do objeto e do método criados
console.log(curso);
curso.addAluno(new Aluno("Vivi",0,[10,10,10,10]));

// Atualização do objeto com a inclusão da aluna Vivi
console.log("O novo objeto curso é:");
console.log(curso);

// Teste do método de verificar aprovação
curso.verifAprov("Vivi");
curso.verifAprov("Fabricio");
curso.verifAprov("Atef");
curso.verifAprov("Elton");

// Lista de aprovados e reprovados
console.log(curso.listaAprovReprov());