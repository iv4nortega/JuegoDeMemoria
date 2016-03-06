/* Tarea: Juego de memoria
 
 Playground que evalúa un rango de números en base a 4 reglas de impresión.
  
*/

import UIKit

/*Rango de 0 a 100*/

var numeros =  1...100

let divisible : Int = 5
let parImpar : Int = 2

for numero in numeros
{
    
    /* Aplicamos las reglas de impresion utilizamos como constantes el numero divisible
     y la constante parImpar para verificar si es par o impar*/
    switch (numero)
    {
    //Sí número esta en el rango de 30 a 40 tambien aplicamos las reglas para saber 
    //sí es divisible par o impar
    case 30...40:
        if((numero % divisible) == 0 && (numero % parImpar == 0)){
            print("#\(numero) Viva Swift!!! #\(numero) bingo!!! #\(numero) par!!!")
        }
        else if((numero % divisible) == 0 && (numero % parImpar == 1)){
            print("#\(numero) Viva Swift!!! #\(numero) bingo!!! #\(numero) impar!!!")
        }
        else if((numero % parImpar) == 0){
            print("#\(numero) Viva Swift!!! #\(numero) par!!!")
        }
        else if((numero % parImpar) == 1){
            print("#\(numero) Viva Swift!!! #\(numero) impar!!!")
        }
    //Sí el número es divisible entre 5
    case numero where (numero % divisible) == 0:
        print("\(numero) bingo!!!")
    //Sí el número par
    case numero where (numero % parImpar) == 0:
        print("\(numero) par!!!")
    //Sí el número es impar
    case numero where numero % parImpar == 1:
        print("\(numero) impar!!!")
    default:
        break
    }
}
