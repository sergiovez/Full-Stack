import numpy as np
## Ejercicio 1 TUPLAS
'''1. Crea una tupla con tres elementos y imprime por pantalla cada uno de ellos en una 
nueva linea.'''
tupla = (1,'lista', True)
for i in range(len(tupla)):
    print(f'El elemento {i+1} de la lista es {tupla[i]}')

'''2. Crea una lista con tres elementos e intenta modificarla. Haz lo mismo con la tupla. 
¿Cuáles son las diferencias?'''
lista = [1,'lista', True]
tupla = (1,'lista', True)
print(lista)
print(type(lista))
print(tupla)
print(type(tupla))
lista[0] = 2
print(lista)
#tupla[0] = 2
#print(tupla)

'''3. Crea una tupla de enteros y devuelve la suma de los elementos.'''
tupla = (1,2,3,4)
suma = sum(tupla)
print(f'La suma de la tupla es {suma}')

'''4. Crea un script que dada una tupla que contiene strings cree una nueva tupla con el 
primer caracter de cada string.'''
tupla = ('hola', 'casa', 'arbol', 'perro')
nueva_lista = []
print(nueva_lista)
for i in range(len(tupla)):
    nueva_lista.append(tupla[i][0])
print(nueva_lista)
nueva_tupla = tuple(nueva_lista)
print(nueva_tupla)

'''5. Crea un script que dada una tupla de números devuelva el producto de todos los 
números pares. '''
tupla = (1,2,3,4,5)
producto = 1
for valor in tupla:
    if (valor % 2 == 0):
        producto = producto * valor
print(producto)

'''6. Crea un script que dada una tupla de números, devuelva la tupla con los numeros 
ordeandos en orden descendente.'''
tupla = (3,4,2,7,1,0)
tupla_ordenados = tuple(sorted(tupla))
print(tupla_ordenados)

'''7. Crea un script que dada una tupla con números enteros repetidos, elimine los 
duplicados. (Puedes usar sets).'''
tupla = (1,3,6,3,6,8,2)
tupla_unicas = tuple(set(tupla))
print(tupla_unicas)

'''8. Crea un script que dada una tupla y un numero entero, devuelve verdadero si el 
numero se encuentra en la tupla y falso en el caso contrario.'''
tupla = (1,3,6,3,6,8,2)
numero = 0
print(numero in tupla)

'''9. Crea un script que dadas dos tuplas cree una tupla resultante de la union de ambas.'''
tupla_1 = (1,3,6,3,6,8,2)
tupla_2 = ('hola', True, 3)
tupla_3 = tupla_1 + tupla_2
print(tupla_3)

'''10. Crea un script que dada una tupla de números devuelva e máximo y el mínimo.'''
tupla_1 = (1,3,6,3,6,8,2)
maximo = max(tupla_1)
minimo = min(tupla_1)
print(f'El valor maximo es: {maximo}')
print(f'El valor minimo es: {minimo}')

'''11. Crea un script que dada una tupla con strings devuelva el string más largo y el más 
corto. (Prueba añadiendo key=len a las funciones max y min).'''
tupla = ('casa', 'arbol', 'hornitorrinco', 'pez')
minimo = min(tupla, key = len)
maximo = max(tupla, key = len)
print(f'El string mas largo de la tupla es {maximo}')
print(f'El string mas corto de la tupla es {minimo}')

'''12. Crea un script que dada una tupla devuelva el contenido en orden revertido.'''
tupla = (1,4,True, 'casa', 'frontal')
tupla_revertido = tuple(reversed(list(tupla)))
print(tupla_revertido)

'''13. Crea un script que dada una tupla de tuplas, donde cada tupla interna contiene dos 
elementos, devuelva una nueva tupla en la que cada elemento sea la suma de los dos 
elementos de la tupla interna correspondiente.'''
tupla = ((1,3), (1, 3), (0, 4))
sumas = []
for tup in range(len(tupla)):
    sumas.append(sum(tupla[tup]))
sumas = tuple(sumas)
print(sumas)
print(type(sumas))


