'''1. Crea un array_1 lleno ceros con una longitud de 8 elementos.'''
import numpy as np

array_1 = np.zeros(8)
print(array_1)

'''2. Haz que todos los elementos de este array sean igual a 2'''
array_1[:] = 2
print(array_1)

'''3. Crea un array_2 que contenga todos los números pares del 1 al 10.'''
array_2 = np.arange(2,11,2)
print(array_2)

'''4. Suma todos los elementos del array_2 usando un bucle y después usando un método
de numpy. Compara los resultados'''
suma = 0
for valor in array_2:
    suma += valor
print(suma)
print(sum(array_2))

'''5. Revierte array_2 y guárdalo en una variable independiente.''' 
array_2_rev = array_2[::-1]
print(array_2_rev)

'''6. Encuentra los elementos comunes entre array_1 y array_2 y entre array_2 y 
array_2_revertido (Pista: Investiga el uso de intersect1d() de numpy)'''
print(np.intersect1d(array_1, array_2))
print(np.intersect1d(array_2_rev, array_2))

'''7. Crea un arrays lleno de 1s con una longitud dada por el usuario'''
long = input('Longitud: ')
array = np.ones(int(long))
print(array)

