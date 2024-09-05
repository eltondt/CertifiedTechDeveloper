const { subtracao } = require('../calc.js');

describe('Testes de Subtracao', () => {
    
    test('Subtracao de 2 numeros', () =>{
        expect(subtracao(-5,5)).toBe(-10);
    })
    
    test('Subtracao de 0', () =>{
        expect(subtracao(0,0)).toBe(0);
    })

    test('Subtracao de null', () =>{
        expect(subtracao(null,null)).toBe(0);
    })

    test('Subtracao de texto', () =>{
        expect(subtracao('a','b')).toBe(NaN);
    })

});