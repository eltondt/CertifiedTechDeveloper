var status = true || false;
if (status == false) {
    console.log("O valor é True - verdadeiro");
}
else {
    console.log("O valor é false - falso")
};

var linguagem = "html"
if (linguagem == "javascript"){
    console.log ("Esto aprendendo")
}
else if (linguagem == "html"){
    console.log ("Aprenderei mais tarde")
};

// Validações if ternário e Switch

var dia = "quinta";

var resultado = dia == "segunda"? "Vou para a praia":"Vou ficar em casa";
console.log(resultado);

// switch

switch (dia){
    case "domingo":
        console.log("Vou tomar café");
        break;
    case "quarta":
        console.log("Vou estudar");
        break;
    default:
        console.log("Não vou fazer nada");
            };