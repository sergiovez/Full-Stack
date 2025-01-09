## Ejercicio 2D
'''9. Crea un arrays lleno de 1s con una longitud dada por el usuario
10.Cambia la forma del array para que tenga una estructura de tipo (filas, columnas)
11.Crea una “matriz identidad” con la misma forma que el array anterior (filas, columnas)
12.Concatena ambas estructuras horizontalmente y verticalmente 
 (Pista: Investiga el funcionamiento de concatenate() y de vstack() y hstack() de numpy'''
import numpy as np
# 9
dimension = int(input('Introduce la longitud del array: '))
array_1D = np.ones(dimension)
print(array_1D)
# 10
filas = int(input('Introduce el numero de filas: '))
columnas = int(input('Introduce el numero de columnas: '))
# --- Verificamos que es posible y para ello el numero de filas * columnas debe ser igual a la dimension
if filas * columnas == dimension:
    array_2D = np.reshape(array_1D, (filas, columnas))
    print(array_2D)
else:
    print('No es posible generar el array 2D')
# 11
if filas == columnas:
    matriz_identidad = np.eye(filas)
    print(matriz_identidad)
else:
    print('No es posible generar la matriz identidad')
# 12
matriz_con_H = np.concatenate((array_2D, matriz_identidad), axis=1)
print(matriz_con_H)
matriz_H = np.hstack((array_2D, matriz_identidad))
print(matriz_H)
matriz_con_V = np.concatenate((array_2D, matriz_identidad), axis=0)
print(matriz_con_V)
matriz_V = np.vstack((array_2D, matriz_identidad))
print(matriz_V)