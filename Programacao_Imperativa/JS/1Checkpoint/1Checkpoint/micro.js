function microondas( comida, tempo){
if ( comida == "pipoca"){
    verificarTempo(10,tempo);
} else if ( comida == "macarrão"){
    verificarTempo(8,tempo);
} else if ( comida == "carne"){
    verificarTempo(15,tempo);
} else if ( comida == "feijão"){
    verificarTempo(12,tempo);
} else if ( comida == "brigadeiro"){
    verificarTempo(8,tempo);
} else {
    console.log ("Prato inexistente")
}
}

function verificarTempo( tempoPadrão, tempoDefinido){
    if ( tempoDefinido > tempoPadrão * 3){
        console.log( "Kabum" );
    } else if ( tempoDefinido > tempoPadrão * 2 ){
        console.log( "comida queimou");
    } else if ( tempoDefinido < tempoPadrão){
        console.log( "tempo insuficiente");
    } else {
        console.log( "Prato pronto, bom apetite");
    }
}

microondas ("pipoca",50);