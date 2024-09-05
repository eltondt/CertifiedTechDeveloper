//  Exercício 01 ------ Loop de Números Pares com For

function loopDePares(numero){
    for(let i = 0; i<=100; ++i){
        if((numero+i)%2==0){
            console.log("O número "+(numero+i)+" é par")
        }else{
            console.log(i);
        };
    };

};

loopDePares(10);

// Exercício 02 ------ Loop de Números Impares com For

function loopDeImpares(numero, palavra){
    for(let i = 0; i<=100; ++i){
        if((numero+i)%2!=0){
            console.log(palavra);}
            else{
         console.log(i);
        };
    };

};

loopDeImpares(5, "batata");


// Exercício 03 ------ Função Soma com Reduce

let numbers = [5, 2, 18, 3, 7]
let soma = numbers.reduce(function (acumulador, numbers) {
  console.log(acumulador, numbers)
  return acumulador + numbers
})
console.log('Soma de todos os valores acumulados = ' + soma)

// Exercício 04 ------ Novo Array

function newArray(tamanho){
    let array = [];
    for(let i = 1; i<=tamanho; ++i){
        array.push(i);
    };
    return array;
};

let auxliar = newArray(5);
console.log(auxliar);

// // Exercício 05 ------ String.split()

function separar(string){
    let string1 = [];
    for(let i =0; i< string.length; ++i){
        string1.push(string[i]);
    };
return string1;
};
console.log(separar("Valeu"));

// Exercício 06 ------ Mover os zeros

// let animais = ['cachorro' , 0 , 'gato', 0 , 'aranha', 'cavalo'];
// let novo = animais.sort(function(a,b){
//     return a-b;
//     });
//     console.log(novo);
    
let arr = ["check", 5, 0, 1, 0, -3, "brigadeiro", 0, 4, 6];
let moveAllZero = (arr = []) => {
   let res = [];
   let currIndex = 0;
   for(let i = 0; i < arr.length; i++){
      let el = arr[i];
      if(el === 0){
         res.push(0);
      }else{
         res.splice(currIndex, undefined, el);
         currIndex++;
      };
   };
   return res;
};
console.log(moveAllZero(arr));

// Exercício 07 ------ Lidando com 2 Arrays

// Você deve criar uma função chamada arrayHandler que receba dois arrays de igual tamanho como parâmetros e exiba no console: "Eu sou {elemento do array 1} e eu sou {elemento do array 2}".
// Exemplo:
// arrayHandler([1,2,3], [“o”,”l”,”á”]) deve mostrar: 
// 		Eu sou 1 e eu sou o
// Eu sou 2 e eu sou l
// Eu sou 3 e eu sou á

// Exercício 08 ------
// Arrays de objetos
// Você deve criar uma função chamada arrayObjects que receba um número como parâmetro e retorne um array de objetos que tem uma propriedade chamada valor que contém o valor do número e seus anteriores.
// Exemplo:
// arrayObjects(5) deve retornar [{valor: 1}, {valor: 2}, {valor: 3}, {valor: 4}, {valor: 5}]
// arrayObjects(3) deve retornar [{valor: 1}, {valor: 2}, {valor: 3}]

// Exercício 09 ------
// Arrays de objetos 2
// Você deve criar uma função chamada arrayObjectsTwo que recebe um número e uma palavra como parâmetro e retorna um array de objetos que possui: uma propriedade nomeada pela palavra passada por parâmetro e o valor dessa propriedade deve ser o número passado por parâmetro e seus anteriores.

// Exemplo:
// arrayObjectsTwo(5, “olá”) deve retornar [{olá: 1}, {olá: 2}, {olá: 3}, {olá: 4}, {olá: 5 }]
// arrayObjectsTwo(3, “tchau”) deve retornar [{tchau: 1}, {tchau: 2}, {tchau: 3}]

