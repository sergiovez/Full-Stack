## Ejercicio 1D 1º parte
'''1. Crea un array_1 lleno ceros con una longitud de 8 elementos. 
2. Haz que todos los elementos de este array sean igual a 2 
3. Crea un array_2 que contenga todos los números pares del 1 al 10.
4. Suma todos los elementos del array_2 usando un bucle y después usando un método 
de numpy. Compara los resultados
5. Revierte array_2 y guárdalo en una variable independiente. 
6. Encuentra los elementos comunes entre array_1 y array_2 y entre array_2 y 
array_2_revertido 
 (Pista: Investiga el uso de intersect1d() de numpy)
7. Crea un arrays lleno de 1s con una longitud dada por el usuario'''

import numpy as np
# 1 
array_1 = np.zeros(8)
print(array_1)
# 2
array_1[:] = 2
print(array_1)
# 3
array_2 = np.arange(2,11,2)
print(array_2)
# 4
suma = 0
for valor in array_2:
    suma += valor
print(suma)
suma = np.sum(array_2)
print(suma)
# 5
array_2_revertido = np.arange(2,11,2)
array_2_revertido[:] = array_2[::-1]
print(array_2_revertido)
# 6
comunes_1_2 = np.intersect1d(array_1,array_2)
comunes_2_rev = np.intersect1d(array_2, array_2_revertido)
print(comunes_1_2)
print(comunes_2_rev)
# 7
longitud = int(input('Introduce la longitud del array de unos: '))
array_usuario = np.ones(longitud)
print(array_usuario)