/* 
Daniel Lucas Cabral Beserra
20193009366

Atividade 02
Escreva um programa em Node.js que leia uma entrada numérica do teclado (valor de x)
e imprima o resultado da seguinte função:
y = x² + 5x + 100
O programa deve validar se o valor digitado pelo usuário é um valor numérico. Caso não
seja, deve ser apresentado uma mensagem de erro. 
*/


const { stdin, stdout } = require('process');
const readline = require('readline');

const reader = readline.createInterface({
    input: stdin,
    output: stdout
});

reader.question('Insira o valor de x: ', function(answer){
    if(isNaN(answer)) {
        console.log('Somente valores numéricos podem ser inseridos')
    } else {
        let y = ((answer**2) + (answer*5) + 100);
        console.log(y);
    } 
    reader.close()
})