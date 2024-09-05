// // Função Declarada
// function darOi() {
//     console.log("Olá, como vai");
// };

// darOi();
// darOi();
// darOi();

// // Função expressa
// let somar = function(){
//     console.log(15 + 15);
// };

// somar();

// // Função parametro
// let adicionar = function (numA, numB) {
//     console.log(numA + numB);
// };

// adicionar (3, 8);
// adicionar (80, 30);

// // Função retorno
// let verificar = function (numA, numB) {
//     return numA + numB;
// };

// let resultado = verificar(2 , 4);
// console.log(resultado);

// // função
// function teste2 (x , y) {
//     return x * 2;
//     // console.log(x);
//     // return x / 2;
// };

// let valor = teste2(10);
// console.log(valor);

// // função converte polegadas em centímetros

// function converter(pol , cen){
//     console.log(pol * 2.54);
// }
// converter(3);

// // recebe string e converte em url

// function invert (string , url){
//     console.log(string = "http://www.funcaojs.com.br");
// }
//     invert("funcaojs");

// //recebe uma string e retorna a msm frase só que com caracter !

// function caracter( string = "Olá Mundo" , retorna = "!"){
//     console.log( string +" "+ retorna);
// }
// caracter("Olá Mundo");

// // calculo de idade de cachorro

// function idade (a , b){
//     console.log(a * 7);
// }
// idade(2);

// //calculando o valor da hora trabalhada em 160h no mês

// function valor (h , s ){
// console.log(h / 160);
// }
// valor(3000);

// // calculadora

// function imc ( peso, altura){
//     console.log(peso/(altura*altura));
// }

// imc(810 , 174);

// // recebendo string minúsculo e retornando MAIÚSCULA

// function palavra (m="ola elton"){
//     console.log(m.toUpperCase());
// }
// palavra();

// // operador typeof()

// function tipo (p = 9){
//    console.log(typeof(p));
// }
// tipo()

// //entendendo a operação Math

// function mat (r= 6363457){
//    console.log(Math.random(r));
// }
// mat()

// // unindo valores com +

// function cumprimento (nome){
//     let mensagem = "Olá meu amigo, seja bem vindo!"
//     console.log(mensagem + nome);    
// }
// cumprimento("Julia");

//Calculadora

function adic (a , b){
    return a + b;
}
function sub (a , b){
    return a - b;
}
function mult (a , b){
    return a * b;
}
    
function multip (a){
    return a * 2;
}

function div (a , b){
    return a / b;
}

console.log("-----------Teste de Operação/ Calculadora---------");

var soma = (adic);
var subtr = (sub);
console.log(soma(2,3), subtr(20,10));

var multi =(mult);
console.log(multi(2,2));

var divi = (div);
console.log(divi(2,2));

function quadradoDoNumero(x){
    console.log(multip(x));
}
quadradoDoNumero(2);

function mediaDeTresNumeros(a,b,c){
    console.log((soma) + (subtr) + (divi) / 2)
}
mediaDeTresNumeros(2,2,2);