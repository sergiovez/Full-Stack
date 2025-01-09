'''PILLANDO SOLTURA: 
1. Escribe un programa en Python para encontrar los elementos duplicados de una lista, 
añadirlos a una nueva lista y borrarlos de la lista. Después imprime una lista con tan solo los 
elementos únicos. '''
lista_original = [1, 2, 3, 4, 5, 6, 3, 7, 8, 9, 8, 10]
lista_duplicados = []
lista_unicos = []

for valor in lista_original:
    if lista_original.count(valor) > 1:
        if valor not in lista_duplicados:
            lista_duplicados.append(valor)
    else:
        lista_unicos.append(valor)

print(lista_duplicados)
print(lista_unicos)

'''2. Escribe un programa en Python para unir dos listas y ordenarlas en orden ascendente. '''
lista_unida = lista_duplicados + lista_unicos
lista_unida.sort()
print(lista_unida)

'''3. Escribe un script que encuentre el segundo número más grande de una lista. '''
print(max(lista_original))

'''4. Crea un script que cuente el número de elementos más grandes que un determinado número 
dado por el usuario (supón una lista numérica). '''
num = int(input('Numero usuario: '))

contador = 0
for numero in lista_unida:
    if num < numero:
        contador += 1
print(f'Hay {contador} numeros mayor que {num}')


'''5. Crea un script dado un número introducido por el usuario o determinado al inicio del 
programa, realice la suma de aquellos números que sean divisibles por este. '''
num = int(input('Numero usuario: '))
suma = 0

for numero in lista_unida:
    if numero % num == 0:
        suma += numero
print(suma)

'''6. Escribe un script que pida un número al usuario y dada una lista encuentre el número más alto 
que es inferior al número introducido o determinado al inicio del programa. '''
num = int(input('Numero usuario: '))
lista_unida.sort()

for numero in range(len(lista_unida)):
    if lista_unida[numero] >= num:
        print(lista_unida[numero-1])
        break

'''7. Crea un script que extraiga los elementos comunes entre dos listas. '''
print(set(lista_unida) & set(lista_duplicados))

'''8. Crea un script que cuente el número de apariciones de un elemento de una lista en dicha lista 
(P.e. en la lista lista=[23, 65, 23] el número de apariciones de 23 es 2) '''
lista=[23, 65, 23]
for num in lista:
    print(f'El valor {num} aparece {lista.count(num)} veces')

'''9. Escribe un programa que lea una lista de enteros y cree una nueva lista que contenga solo 
números positivos de la lista original. '''
enteros = [-3,6,3,7,-3,5,6]
positivos = [entero for entero in enteros if entero>=0]
print(positivos)


'''10. Crea un script que tome una lista de strings y cree una nueva lista que contenga el tamaño de 
los strings de la lista original. '''
lista = ['casa', 'pollo', 'arbol', 'caballo']
tamano = [len(palabra) for palabra in lista]
print(tamano)

'''11. Crea un programa que dada una lista de strings, devuelva otra lista con los strings en 
mayúscula. '''
lista = ['casa', 'pollo', 'arbol', 'caballo']
mayus = [palabra.upper() for palabra in lista]
print(mayus)