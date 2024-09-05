
// // 1 Mapeia

// let numeros = [2,4,6,8,12];
// let impares = numeros.map(function(num){
// return num + 1;
// });

// console.log(impares);

// // 2 Filtro

// let nomes = ['Maria', 'Eduardo', 'Maria', 'Fátima', 'Marcos'];
// let maria = nomes.filter(function (nome){
// return nome == 'Maria';
// });
// console.log(maria);

// //3 Reduzir acumulando

// let num2 = numeros.reduce(function (acc , num){
//     return acc + "-" + num;
// });
// console.log(num2);

// let num1 = numeros.reduce((acc,num)=> acc + " - " + num)
//     console.log(num1);

// //4 ele simplifica o for quando for no Array e não tem return

// let animais = ['cachorro' , 'gato', 'aranha', 'cavalo'];
// animais.forEach(function (animal){
//     console.log("O animal é "+ animais.shift())
// });


// let num = [10, 3, 4, 52, 6, 7];
// let number = num.sort(function(a,b){
// return a-b;
// });
// console.log(number);

// Exercíco Avançado
// 1 Crie uma função que receba um array composto por números e 
// retorna uma nova matriz (array) com todos os valores divididos 
// pela soma de toda a matriz, usando map() e reduce().

let num3 = [1, 2, 3, 4, 5, 6];
let array = num3.map(function(num){
    return num / num3.reduce(function(acc , num1){ return acc + num1})
});

console.log(array)

// 2 Crie uma função que receba um array de palavras e um número, 
// e que retorna uma matriz (array) com apenas as palavras que têm mais 
// do que uma quantidade de letras maior do que o número informado. 
// (verifique como funciona o método filter ())

let palavras = [ 'Marcos' , 'Rita', 'Elton', 'João Marcos', 2 ];
let matriz = palavras.filter(function(letra){
    return letra >= [12];
})
console.log(matriz);

// 3 Crie um array de objetos literais, onde cada objeto será um aluno e terá dois 
// atributos: nome e nota. Crie duas funções que ordenam o array: uma ordenará os alunos
//  em ordem alfabética e a outra o fará por nota, da mais alta para a mais baixa. 
//  (Analise qual método seria apropriado para este caso. Recomendamos que você consulte
//     a documentação do MDN: 

