let funcSoma = require ("./modulos");
let funcSub = require ("./sub");
let funcDiv = require ("./div");
let funcMult = require ("./mult");
let Json = require ("./modJson");

console.log ( funcSoma(2 ,5) );
console.log ( funcSub(2 ,5) );
console.log ( funcDiv(2 ,5) );
console.log ( funcMult(2 ,5) );
console.log ( Json.nome );


let banco = require ("./banco");

console.log ( banco);

