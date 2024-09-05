function soma(a,b){
    return a+b;
}

function subtracao(a,b){
    return a-b;
}

function multiplicacao(a,b){
    return a*b;
}

function divisao(a,b){
    return a/b;
}

module.exports = {soma, subtracao, multiplicacao, divisao};

/* {
  "name": "testing-calc",
  "version": "1.0.0",
  "description": "",
  "main": "calc-div.test.js",
  "scripts": {
    "test": "jest"
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "jest": "^29.5.0"
  },
  "jest": {
  "testMatch": ["**/__tests__/***.test.js"]
}
} */