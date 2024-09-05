// Base do teste
//test('nome do teste', () =>{
//    expect(função(1,2)).toBe(result);


const { divisao } = require('calc.js');

describe('Testes de Divisao', () => {
    
    test('Divisao de 2 numeros', () =>{
        expect(divisao(10,2)).toBe(5);
    })
    
    test('Divisao de 0', () =>{
        expect(divisao(0,0)).toBe(NaN);
    })

    test('Divisao de null', () =>{
        expect(divisao(null,null)).toBe(NaN);
    })

    test('Divisao de texto', () =>{
        expect(divisao('a','b')).toBe(NaN);
    })

})