let produtos = ['sabão', 'sabonete', 'esponja', 'arroz']
console.log(produtos);
console.log("array formado");

let produtosDeCompra = [ 'sabão', 'sabonete', 'esponja', 'arroz'];
console.log(produtosDeCompra.join("-"));
console.log("O join acrescenta separadores no lugar dos espaços");

let ultimoProduto = [ 'sabão', 'sabonete', 'esponja', 'arroz'];
console.log(ultimoProduto.pop());
console.log("o pop elimina o ultimo elemento do array");

let acrescenta = [ 'sabão', 'sabonete', 'esponja', 'arroz'];
acrescenta.push('feijão');
console.log(acrescenta);
console.log("o push acrescenta um elemento no final do array ");

let primeiroProduto = [ 'sabão', 'sabonete', 'esponja', 'arroz'];
primeiroProduto.shift();
console.log(primeiroProduto);
console.log("O shift elimina o primeiro elemento do array");

let acrescentaProduto = [ 'sabão', 'sabonete', 'esponja', 'arroz'];
acrescentaProduto.unshift('bolacha','mistura','salada');
console.log(acrescentaProduto);
console.log("O unshift acrescenta um ou mais elementos no inicio do array");
