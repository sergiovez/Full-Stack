'''TRABJANDO CON TUPLAS: 
1. Crea una tupla con tres elementos y imprime por pantalla cada uno de ellos en una 
nueva linea.'''
tupla = ('hola', True, 6)
print(f'{tupla[0]}\n{tupla[1]}\n{tupla[2]}')
print(type(tupla))

'''2. Crea una lista con tres elementos e intenta modificarla. Haz lo mismo con la tupla. 
¿Cuáles son las diferencias?'''
lista = ['hola', True, 6]
tupla = ('hola', True, 6)
lista[1] = 7
print(lista)
#tupla[1] = 7

'''3. Crea una tupla de enteros y devuelve la suma de los elementos.'''
tupla = (4, 5, 6)
print(sum(tupla))

'''4. Crea un script que dada una tupla que contiene strings cree una nueva tupla con el 
primer caracter de cada string.'''
tupla = ('hola', 'arbol', 'caballo')
new = []
for valor in tupla:
    new.append(valor[0])
new = tuple(new)
print(new)
print(type(new))

'''5. Crea un script que dada una tupla de números devuelva el producto de todos los 
números pares. '''
tupla = (4, 5, 6)
producto = 1
for valor in tupla:
    if valor % 2 == 0:
        producto *= valor
print(producto)

'''6. Crea un script que dada una tupla de números, devuelva la tupla con los numeros 
ordeandos en orden descendente.'''
tupla = (4, 5, 6)
tupla_orden = tuple(reversed(tupla))
print(tupla_orden)

'''7. Crea un script que dada una tupla con números enteros repetidos, elimine los 
duplicados. (Puedes usar sets).'''
tupla = (4, 5, 6, 4, 5, 3)
tupla_unica = tuple(set(tupla))
print(tupla_unica)

'''8. Crea un script que dada una tupla y un numero entero, devuelve verdadero si el 
numero se encuentra en la tupla y falso en el caso contrario.'''
tupla = (4, 5, 6, 4, 5, 3)
numero = 3

print(numero in tupla)

'''9. Crea un script que dadas dos tuplas cree una tupla resultante de la union de ambas.'''
tupla = (4, 5, 6, 4, 5, 3)
tupla_1 = ('hola')
tupla_union = tuple(zip(tupla, tupla_1))
print(tupla_union)

'''10. Crea un script que dada una tupla de números devuelva e máximo y el mínimo.'''
tupla = (4, 5, 6, 4, 5, 3)
print(max(tupla))
print(min(tupla))

'''11. Crea un script que dada una tupla con strings devuelva el string más largo y el más 
corto. (Prueba añadiendo key=len a las funciones max y min).'''
tupla = ('casa', 'arbol', 'caballo')
print(max(tupla, key=len))
print(min(tupla, key=len))

'''12. Crea un script que dada una tupla devuelva el contenido en orden revertido.'''
tupla = tupla[::-1]
print(tupla)

'''13. Crea un script que dada una tupla de tuplas, donde cada tupla interna contiene dos 
elementos, devuelva una nueva tupla en la que cada elemento sea la suma de los dos 
elementos de la tupla interna correspondiente.'''
tupla = ((1,2),(3,4),(5,6))
lista = []
for par in tupla:
    lista.append(sum(par))
print(tuple(lista))