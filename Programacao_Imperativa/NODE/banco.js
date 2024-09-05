// // Nosso líder de tecnologia nos pede para pensar em como representar usuários, ou contas bancárias,
// //  em vez disso. Cada uma dessas contas tem as seguintes informações:
// // Número da conta (somente números)
// // Tipo de conta (conta corrente ou poupança em $)
// // Saldo em $ (valor apenas)
// // // Titular da conta (nome completo)

let Contas = function(num, tipo, saldo, titular){
    this.numero = num;
    this.tipo = tipo;
    this.saldo = saldo;
    this.titular = titular;
}
let uso1 = new Contas(475856 ,"Corrente", 25000, "José Marcos");
// console.log(uso1.tipo);

// // 3. Agora que sabemos como representar usuários e suas contas, o cliente nos forneceu uma lista de contas 
// // que devemos ser capazes de criar. Para isso, devemos gerar uma função construtora que facilite a criação 
// // das contas bancárias correspondentes mais rapidamente. 

let cliente = [ {
    "conta": "5486273622",
    "tipoConta": "Conta Corrente",
    "saldo": 27771,
    "titular": "Abigael Natte"
},
{
    "conta": "1183971869",
    "tipoConta": "Conta Poupança",
    "saldo": 8675,
    "titular": "Ramon Connell"
},
{
    "conta": "9582019689",
    "tipoConta": "Conta Poupança",
    "saldo": 27363,
    "titular": "Jarret ente"
},
{
    "conta": "1761924656",
    "tipoConta": "Conta Poupança",
    "saldo": 32415,
    "titular": "Ansel Ardley"
},
{
    "conta": "7401971607",
    "tipoConta": "Conta Poupança",
    "saldo": 18789,
    "titular": "Jacki Shurmer"
},
{
    "conta": "630841470",
    "tipoConta": "Conta Corrente",
    "saldo": 28776,
    "titular": "Jobi Mawtus"
},
{
    "conta": "4223508636",
    "tipoConta": "Conta Corrente",
    "saldo": 2177,
    "titular": "Thomasin Latour"
},
{
    "conta": "185979521",
    "tipoConta": "Conta Poupança",
    "saldo": 25994,
    "titular": "Lonnie eijden"
},
{
    "conta": "3151956165",
    "tipoConta": "Conta Corrente",
    "saldo": 7601,
    "titular": "Alonso Wannan"
},
{
    "conta": "2138105881",
    "tipoConta": "Conta Poupança",
    "saldo": 33196,
    "titular": "Bendite Huggett"
},
];
// console.log(cliente[2]);

// // O líder tecnológico está muito feliz com nosso trabalho até agora. A essa altura já temos um banco de dados 
// // com 10 clientes do banco, provavelmente alojados em 10 variáveis diferentes (assumindo que cada variável é 
// // um objeto que foi criado com uma função construtora). A partir disso, eles nos pedem as seguintes características.  
// // 4. A partir dos 10 usuários, gere uma lista onde todos eles convergem (lista de objetos)

let listasContas = [];

for (let i =0; i< cliente.length; i++){
    listasContas.push(new Contas(cliente[i].conta, cliente[i].tipoConta, cliente[i].saldo, cliente[i].titular ))
}

console.log(listasContas[1]);

module.exports = listasContas;


// 5. Também nos pedem a criação de um objeto literal chamado banco que terá uma propriedade chamada clientes, 
// ele será composto pela lista de objetos gerados no ponto anterior.
// 6. o objeto do banco criará um método chamado consultarCliente que receberá um nome (titular) por parâmetro 
// e deve pesquisar na lista de contas e retornar ao objeto do cliente que corresponde a esse nome inserido.

// 7. Crie outro método chamado depósito que receberá como parâmetros, o titular da conta e 
// uma quantidade de dinheiro para depositar. O método deve chegar à conta correspondente e, em seguida, 
// adicionar a quantidade de dinheiro para depositar o saldo da conta, então você deve dar um aviso 
// pelo console com a mensagem "Depósito realizado, seu novo saldo é: xxx" .

// 8. Crie um último método chamado saque que também receberá dois parâmetros, o titular da conta e o 
// valor a ser extraído. O método deve obter a conta correspondente e subtrair o valor do saldo atual. 
// Caso o resultado seja inferior a 0, você deve imprimir uma mensagem através do console de "Fundos insuficientes",
// caso contrário você deve imprimir "Extração feita com sucesso, seu novo saldo é: xxx"

let banco = {
    clientes : listasContas,
    consultarCliente: function (nome){
        for (let i =0; i< cliente.length; i++){
            if (this.clientes[i].titular == nome)
                return this.clientes[i];
            }
    },

    deposito:function(nome , dinheiro){
        let cliente = this.consultarCliente(nome);
        cliente.saldo += dinheiro;
        console.log("Depósito realizado,"+ (nome) + " seu novo saldo é: " + (cliente.saldo));
       
    },

    saque : function(nome , valorRetirado){
        let cliente = this.consultarCliente(nome);
        cliente.saldo -= valorRetirado;
        if (cliente.saldo <= 0){
            console.log("Fundos insuficientes")
        }
        else {
        console.log("Extração feita com sucesso, seu novo saldo é: "+(cliente.saldo))
        }
        }
    };


// console exer 6
// console.log(banco.consultarCliente("Lonnie eijden"))

//console exer 7
// banco.deposito("Lonnie eijden",1000);

//console exer 8
// banco.saque("Thomasin Latour",1000)




// Bonus
// Você deve criar uma função chamada propriedadeUnica que recebe uma array de objetos como parâmetro e uma string. 
//  Você deve devolver um novo array de objetos, tendo apenas a propriedade que foi passada como string.  

// let array = [ { nome: "Lean", idade: 27 }, { nome: "Eze", idade: 49} ];   
// function propriedadeUnica(array , idade, string){
//     let array1 = []
//     for (i = 0; i< array.length; i++){
//         idade = array[i].idade
//         array1.push({idade})
//     }
//     return array1;
// }
//     if (string == "nome"){
// for(i=0; i< array.length; i++){
// nome= array[i].nome
// array1.push({nome})
// }
// return array1
// }

// console.log(propriedadeUnica(Array,"idade"))
    
    // deve retornar [ { idade: 27 }, { idade: 49 } ]
// propriedadeUnica(array, "nome") deve retornar [ { nome: "Lean"}, { nome: "Eze" } ]