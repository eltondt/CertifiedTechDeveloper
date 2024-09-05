const { soma } = require('calc.js');

describe('Testes de Somas', () => {
    
    test('Soma de 2 numeros', () =>{
        expect(soma(1,2)).toBe(3);
    })
    
    test('Soma de 0', () =>{
        expect(soma(0,0)).toBe(0);
    })

    test('Soma de null', () =>{
        expect(soma(null,null)).toBe(0);
    })

    test('Soma de texto', () =>{
        expect(soma('a','b')).toBe('ab');
    })

});