function ligar_microondas(prato, tempo) {
    if (prato == 'Pipoca') {
        verificar_tempo(10, tempo);
    } else if (prato == 'Macarrão') {
        verificar_tempo(8, tempo);
    } else if (prato == 'Carne') {
        verificar_tempo(15, tempo);
    } else if (prato == 'Feijão') {
        verificar_tempo(12, tempo);
    } else if (prato == 'Brigadeiro') {
        verificar_tempo(8, tempo);
    } else {
        console.log('Prato inexistente');
    }
}

function verificar_tempo(tempo_padrao, tempo_definido) {
    if (tempo_definido > tempo_padrao * 3) {
        console.log('kabumm');
    } else if (tempo_definido > tempo_padrao * 2) {
        console.log('A comida queimou');
    } else if (tempo_definido < tempo_padrao) {
        console.log('Tempo insuficiente');
    } else {
        console.log('Prato pronto, bom apetite!!!');
    }
}

ligar_microondas('Carne', 10)
