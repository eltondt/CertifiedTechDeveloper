// let dia = "quarta-feira";
// if ( dia == "quarta-feira"){
//     console.log('vou passear')
// };

// // SE A NOSSA CONDIÇÃO FOR DIFERENTE DA VARIÁVEL OU VICE- VERSA

// let diaDaSemana = "quarta-feira";
// if (diaDaSemana == "sexta-feria"){
//     console.log("vou passear")
// };
// // UTILIZANDO ELSE E ELSE IF

// let semana = "segunda";
// if (semana == "sexta"){
//     console.log ("vou viajar")
// }else if (semana == "quinta"){
//     console.log("vou ao cinema")
// }else {
//     console.log("Fico em casa")
// ;};

let status = (false);
if (status == true){
    console.log("O valor é true")
} else {
    console.log("O valor é falso")
}

let linguagem = ("javascript");
if (linguagem == "javascript"){
    console.log("Estou apredendo muito");
}else {
    console.log(" Apredenrei mais tarde quando rever a matéria");
}

//pode subir

function subir(altura, acompanho){
    if(altura >= 1.40 && altura < 2.00){
        console.log("Pode subir");
    } else if (altura <= 1.40 && acompanho == true){
        console.log("Só poderá subir se for acompanhado");
    }else {
        console.log("Não poderá subir, nem acompanhado");
    }
}
subir(1.39, false);


