const { multiplicacao } = require('calc.js');

describe('Testes de Multiplicacao', () => {
    
    test('Multiplicacao de 2 numeros', () =>{
        expect(multiplicacao(1,2)).toBe(2);
    })
    
    test('Multiplicacao de 0', () =>{
        expect(multiplicacao(0,0)).toBe(0);
    })

    test('Multiplicacao de null', () =>{
        expect(multiplicacao(null,null)).toBe(0);
    })

    test('Multiplicacao de texto', () =>{
        expect(multiplicacao('a','b')).toBe(NaN);
    })

});