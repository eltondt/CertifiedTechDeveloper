// function print(mensagem){
//     console.log(mensagem)
//   }
   
//   print("Olá, bom dia")
   
//   function soma(n1, n2){
//     return n1 + n2
//   }
   
//   console.log(soma(10, 10));

// Função Arrow

//   let printe = (mensagens) => "Olá, bom dia";
//   console.log(printe( ));

//   let somar = (n1 , n2) => n1 + n2;
//   console.log(somar(10,10));

// function somar (x,y) {
//     return x+y;
// }

// let funcSomar = (x,y) => x+y;

// let funcSomar2 = x => x+5;

// console.log(somar(5,5));
// console.log(funcSomar(5,5));
// console.log(funcSomar2(5));


// Função Callbacks
 
// let acaoCarro = ( andar , parar) => andar || parar { 
//        let andar = andar => ("o carro está andando");

//    let parar = parar => "o carro parou";
// };

// console.log(acaoCarro);

function soma (a,b,cb){
    return a+b+cb();
}

function resultado (a,b,cb){
    let result = a+b;
    return cb(result);
}

// function texto(p1){
//     return "que negócio doido" +p1;
// }

// resultado com Callback com função normal
// console.log( resultado ( 5,8,texto));

// resultado com Callback com funcão anônimo
console.log( resultado ( 5,8,function(p1){
    return "que negócio doido"+" "+ p1;
}));


