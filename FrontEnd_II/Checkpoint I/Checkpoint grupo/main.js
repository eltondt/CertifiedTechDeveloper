//Variaveis que ligam com o html
let containerSelect = document.querySelector('#container')
var containerElemento = document.querySelector('.cards')
var novaPostagemElemento = document.querySelector('#novaPostagem')

//Variaveis para armazenar os dados
let inputTitulo = document.querySelector('#titulo')
let inputImagem = document.querySelector('#imagem')
let inputDescricao = document.querySelector('#descricao')
let inputAtores = document.querySelector('#atores')

//Inserindo posts de exemplo
let postsPrincipais = [
  {
    campoImagem:"https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/94/82/78/20359454.jpg",
    campoTitulo:"Um amor para recordar",
    campoDescricao:"Um dos melhores filmes de romance musical",
    campoAtores:"Mandy Moore  Shane West",
  },

  {
    campoImagem:"https://oregional.com.br/media/blog/1115f94493a1dd9bdd49caacb7d1262b.jpg",
    campoTitulo:"A orfã 2",
    campoDescricao:"Filme de terror com fim inusitado",
    campoAtores:"Isabelle Fuhrman Jlia Stiles",
  }
]
for(var postPrincipal of postsPrincipais){
  containerElemento.innerHTML += `
  <div class="card">
    <div class="imagem" style="background-image: url('${postPrincipal.campoImagem}');"></div>
    <div class="apresentacao">
      <h2>${postPrincipal.campoTitulo} </h2>
      <h3>${postPrincipal.campoDescricao}</h3>
      <p>${postPrincipal.campoAtores}</p>
    </div>
        `

}



//Inserindo um novo post depois de clickar no botão
novaPostagemElemento.addEventListener('click', event => {
  event.preventDefault()


//Inserindo as restrições (imagem não pode ser vazia,titulo e descrição não pode ter menos de 4 letras)
  if(inputImagem.value == ''){event.preventDefault(e)}
  if(inputTitulo.value.length < 4){ event.preventDefault(e) }
  if(inputDescricao.value.length < 4){event.preventDefault(e)}
  
//Inserindo os cards novos
  containerElemento.innerHTML += `
  <div class="card">
    <div class="imagem" style="background-image: url('${inputImagem.value}');">
    </div>
    <div class="apresentacao">
      <h2>${inputTitulo.value} </h2>
      <h3>${inputDescricao.value}</h3>
      <p>${inputAtores.value}</p>
    </div>
        `

  //Limpando o campo depois de carregar a pagina

  inputTitulo.value = ""
  inputImagem.value = ""
  inputDescricao.value = ""
  inputAtores.value = ""
})
