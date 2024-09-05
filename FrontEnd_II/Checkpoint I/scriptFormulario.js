let inputNomeSobrenome = document.getElementById("name");

let btn = document.getElementById("salvo");
btn.addEventListener('click', function (evento) {

    let inputName = document.getElementById("name");
    let inputDescricao = document.getElementById("descrição");
    let inputUrl = document.getElementById("url");

    if (inputName) {
        console.log(evento.preventDefault());
        console.log("clicou no botão");

        console.log(`Titulo: ${inputName}`);
        console.log(`Descrição ${inputDescricao.value}`);
        console.log(`Url ${inputUrl.value}`);

// lista de genero de filmes

   let opcao = document.getElementById("opcao");
    console.log(opcao.value);

// validando permições

    let nomeValidacao = document.getElementById("nomeValidacao");
    inputName.style.backgroundColor = "#FFFFFF"

    if (inputName.value.length >= 4) {
        inputName.style.border = ""
        nomeValidacao.innerText = ""
        inputName.style.border = "solid 1.5px #13A02D"
        btn.removeAttribute("disabled");
        btn.style.backgroundColor = "#0b5ed7"

    } 
    if (inputDescricao.value.length >= 4) {
        inputDescricao = ""
        nomeValidacao.innerText = ""
        inputDescricao.style.border = "solid 1.5px #13A02D"
        btn.removeAttribute("disabled");
        btn.style.backgroundColor = "#0b5ed7"
    }

    if (inputUrl.value.length >= 4) {
        inputUrl = ""
        nomeValidacao.innerText = ""
        inputUrl.style.border = "solid 1.5px #13A02D";
        btn.removeAttribute("disabled");
        btn.style.backgroundColor = "#0b5ed7"

    } 
    else {
        inputName.style.border = "solid 1.5px #D8341B";
        inputDescricao.style.border = "solid 1.5px #D8341B";
        inputUrl.style.border = "solid 1.5px #D8341B";
        nomeValidacao.innerText = "Informe no mínimo 4 caracteres";
        nomeValidacao.style.color = "#D8341B";
        nomeValidacao.style.fontWeight = "bold";
        btn.setAttribute("disabled", true);
        btn.style.backgroundColor = "#787676"

}
}});

