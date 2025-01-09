'''LISTAS NUMERICAS: 
1. Crea una lista llamada “numeros“ que contenga los siguientes numeros enteros: 
[1,2,3,4,5,6,7,8,9,10]. '''
numeros = [1,2,3,4,5,6,7,8,9,10]
print(numeros)

'''2. Crea una nueva lista con los números pares de la lista anterior en orden inverso '''
numeros_pares = [num for num in numeros if num % 2 == 0]
numeros_pares.reverse()
print(numeros_pares)

'''3. Escribe un bucle que recorra la lista “numeros“ e imprima el cuadrado de cada numero por 
consola.  '''
numeros_cuadrado = [num**2 for num in numeros]
print(numeros_cuadrado)

'''5. Usa un método que te devuelva el número más pequeño de la lista e imprímelo por pantalla '''
print(min(numeros))

'''6. Haz lo mismo con el número más alto '''
print(max(numeros))

'''7. Suma todos los elementos de la lista con y sin un bucle.  '''
print(sum(numeros))
suma = 0
for numero in numeros:
    suma += numero
print(suma)

'''8. Encuentra el índice correspondiente al número 8 en la lista original y en la lista resultante tras 
el punto 2. '''
print(numeros.index(8))
print(numeros_pares.index(8))