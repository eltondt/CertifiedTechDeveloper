// Crie um objeto literal Filme representa os dados de um filme (título, diretor, ano, total de votos,
// nota e uma lista de personagens).

// No mesmo objeto Filme crie o método votar, que quando chamando irá acrescentar mais um voto ao filme.

// Ao final crie um array com 3 objetos de filmes diferentes e com o método forEach  liste apenas os nomes dos filmes.

Refazer este Exercício

let Filme = {
    titulo: "O Mascara",
    diretor: "Robert",
    ano: 2000,
    votos: 500,
    totalVotos: 8,
    lista: ["Branca de Neve" , "Matrix" , "Panico" , "Bob Esponja"],
    votar: function(){
        return this.totalVotos +=1;
       
    }
}

let novosVotos = (Filme.votar());
console.log(novosVotos);

let novosFilmes = [{
    titulo: "O Mascara",
    diretor: "Robert",
    ano: 2000,
    votos: 500,
    totalVotos: 8,
    lista: ["Branca de Neve" , "Matrix" , "Panico" , "Bob Esponja"],
},
{
    titulo: "Matriz",
    diretor: "Silverio",
    ano: 2005,
    votos: 300,
    totalVotos: 9,
    lista: ["Branca de Neve" , "Matrix" , "Panico" , "Bob Esponja"],
},
{
    titulo: "Panico",
    diretor: "Robert",
    ano: 2000,
    votos: 500,
    totalVotos: 8,
    lista: ["Branca de Neve" , "Matrix" , "Panico" , "Bob Esponja"],
}
];

console.log(novosVotos)