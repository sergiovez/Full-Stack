'''
Supongamos una lista de de caracteres llamada “palabras“
que representa una mano de Scrabble. Cada string contiene 
dos caracteres: el primer carácter es la letra de una ficha 
y el segundo el numero que representa los puntos de la ficha.
Por ejemplo, el string "A5" representa la ficha con la letra 
A y un valor de 5 puntos. Crea un script que calcule el valor 
total de los puntos en una mano de Scrabble. El valor total 
será la suma de los puntos de todas las fichas de la mano.
'''

# --- Lista con las fichas de scrabble

mano_scrabble = ["A5", "B3", "C4", "H8", "D10"]

# --- bucle en el que recorremos las fichas y sumamos los puntos
# iniciamos la variable puntos en 0
puntos = 0
# recorremos la lista con las fichas de scrabble
for ficha in mano_scrabble:
    # sumamos lo puntos de cada una de las fichas
    puntos = puntos + int(ficha[1:])

# --- imprimir el numero total de puntos

print("El numero total de puntos de tu mano es:", puntos)