function adicionar(a, b){
    return a + b;
}

function subtração(c , d){
    return c - d;
}

function multiplicação(e , f){
    return e * f;
}

function divisão(g , h){
    return g / h;
}

console.log("     Teste de Operação / Calculadora      ");

console.log ("Resultado Soma", adicionar (4,8), "Resultado subtração", (8,10), "Resultado Multiplicação", (10,20), "Resultado Divisão", (40,30));


// 2 opção
var resultado = adicionar (8 , 10);
console.log(resultado);

resultado = subtração (10 , 10);
console.log(resultado);

resultado = multiplicação (2 , 2);
console.log(resultado);

resultado = divisão (0 , 2);
console.log(resultado);

// ao quadrado

function quadradoDoNumero (x){
    return x * x;
}

resultado = quadradoDoNumero (2);
console.log(resultado);
