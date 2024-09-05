
// estrutura Objeto
let  carro = {
    nome: "Montana",
    placa: "CVB 2345",
    cor: "Cinza",
    ano: 2018,
    informação: function(){
        console.log("A "+ this.nome +" está batido")
    }
}

carro.informação();
console.log(carro.nome);
console.log(carro);

// função construtor de objetos
function Carro( marcaCarro, modeloCarro, anoCarro){
    this.marca = marcaCarro;
    this.modelo = modeloCarro;
    this.ano = anoCarro;
}

let civic = new Carro("Honda","Civic", "2019", );
let gol = new Carro("Volks","Gol", "2020" );
console.log(gol)

//JSON (Objeto)
let pessoa = {
    nome: "Elton",
    idade: 38,
    altura: 1.74
}

let json = JSON.stringify(pessoa);
console.log(json)

// estudo trabalho de mesa (Objeto linear)

let tudoMisturado = {
    "nome" : "Elton",
    "sobrenome" : "Tomé",
    "idade" : 38,
    "linguagens" : ["PHP" , "JS" , "Ruby"],
    "ramoProfissional" : {
        "experiencia" : "hard",
        "anos" : 7,
    }
}

console.log(tudoMisturado.ramoProfissional);

let exer = {
    "nome": "Elton",
    "apelido" : "Eltinho",
    "idade" : 38,
    "usuario" : "Eldoni",
    "email" : "eltinho@gmail.com",
}
console.log(exer.nome);

let casa = {
    quarto : 2,
    moradores : 3,
    comodos : function(animal){
        return "A casa possui 5 comodos, "+ animal+" cachorro," + (this.quarto) + " quartos e " + (this.moradores) + " moradores";
    }
}
console.log(casa.comodos("1"))