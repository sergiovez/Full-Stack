## Ejercicio 3
## Supongamos una lista de de caracteres llamada “palabras“ que representa una mano de 
## Scrabble. Cada string contiene dos caracteres: el primer carácter es la letra de una ficha y el 
## segundo el numero que representa los puntos de la ficha. Por ejemplo, el string "A5" representa la 
## ficha con la letra A y un valor de 5 puntos. Crea un script que calcule el valor total de los puntos 
## en una mano de scrabble. El valor total será la suma de los puntos de todas las fichas de la mano.

## --- Lista con la mano
mano_scrabble = ["A5", "B3", "C4", "H8", "D10"]
suma_scrabble = 0

## --- Ciclo que recorre la mano
for ficha in mano_scrabble:
    suma_scrabble += int(ficha[1:])


## --- Ciclo de salida
print(f'La suma de la mano es de {suma_scrabble} puntos')