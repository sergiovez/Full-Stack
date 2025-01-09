'''SCRABBLE: 
Supongamos una lista de de caracteres llamada “palabras“ que representa una mano de 
Scrabble. Cada string contiene dos caracteres: el primer carácter es la letra de una ficha y el 
segundo el numero que representa los puntos de la ficha. Por ejemplo, el string "A5" representa la 
ficha con la letra A y un valor de 5 puntos. Crea un script que calcule el valor total de los puntos 
en una mano de scrabble. El valor total será la suma de los puntos de todas las fichas de la mano.'''

mano_scrabble = ["A5", "B3", "C4", "H8", "D10"]
suma = 0

for valor in mano_scrabble:
    suma += int(valor[1:])

print(f'El numero total de puntos de tu mano es: {suma}')