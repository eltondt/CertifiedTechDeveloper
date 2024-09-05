
function podeSubir ( altura , acompanhada){
    if ( altura >= 1.40 && altura <= 2.00){
       return "Acesso Autorizado";
    } else if ( altura < 1.40 && acompanhada || altura < 1.20 ){
        return "Pode subir somente se for acompanhada";
    } else {
        return ( " Não poderá subir,nem acompahada");
    }
}
    console.log (podeSubir( 1.19 , false ));
