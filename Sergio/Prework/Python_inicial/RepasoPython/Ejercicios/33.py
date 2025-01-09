'''ARRAYS 2D 
9. Crea un arrays lleno de 1s con una longitud dada por el usuario'''
import numpy as np
long = input('Longitud: ')
array = np.ones(int(long))
print(array)

'''10.Cambia la forma del array para que tenga una estructura de tipo (filas, columnas)'''
filas = input('Filas: ')
columnas = input('Columnas: ')
array_1 = np.ones((int(filas), int(columnas)))
print(array_1)

'''11.Crea una “matriz identidad” con la misma forma que el array anterior (filas, columnas)'''
array_2 = np.eye((int(filas)))
print(array_2)

'''12.Concatena ambas estructuras horizontalmente y verticalmente (Pista: Investiga el funcionamiento de concatenate() y de vstack() y hstack() de numpy)'''
matriz_con_H = np.concatenate((array_2, array_1), axis=1)
print(matriz_con_H)
matriz_H = np.hstack((array_2, array_1))
print(matriz_H)
matriz_con_V = np.concatenate((array_2, array_1), axis=0)
print(matriz_con_V)
matriz_V = np.vstack((array_2, array_1))
print(matriz_V)