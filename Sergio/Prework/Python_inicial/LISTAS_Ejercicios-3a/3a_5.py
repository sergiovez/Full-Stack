# Ejercicio 5
## 1. Escribe un programa en Python para encontrar los elementos duplicados de una lista, 
## añadirlos a una nueva lista y borrarlos de la lista. Después imprime una lista con tan solo los 
## elementos únicos. 
lista = [1, 2, 3, 4, 5, 6, 3, 7, 8, 9, 8, 10]
lista_unicos = []
lista_duplicados = []

for numero in lista:
    if (lista.count(numero) > 1):
        if (numero not in lista_duplicados):
            lista_duplicados.append(numero)
    else:
        lista_unicos.append(numero)

print(lista_unicos)
print(lista_duplicados)

## 2. Escribe un programa en Python para unir dos listas y ordenarlas en orden ascendente. 
lista_combinada = lista_unicos + lista_duplicados
lista_combinada.sort()
print(lista_combinada)

## 3. Escribe un script que encuentre el segundo número más grande de una lista. 
print(lista_combinada[-2])
lista_combinada.sort(reverse=True)
print(lista_combinada[1])

## 4. Crea un script que cuente el número de elementos más grandes que un determinado número 
## dado por el usuario (supón una lista numérica). 
lista_numerica = lista_combinada
numero_usuario = int(input('Introduce un numero: '))
elementos = 0
for numero in lista_numerica:
    if numero_usuario < numero:
        elementos += 1
print(elementos)

## 5. Crea un script dado un número introducido por el usuario o determinado al inicio del 
## programa, realice la suma de aquellos números que sean divisibles por este. 
numero_usuario_divisor = int(input('Introduce un numero: '))
suma = 0
for numero in lista_numerica:
    if numero % numero_usuario_divisor == 0:
        suma += numero
print(suma)

## 6. Escribe un script que pida un número al usuario y dada una lista encuentre el número más alto 
## que es inferior al número introducido o determinado al inicio del programa. 
numero_usuario_inferior = int(input('Introduce un numero: '))
lista_numerica.sort()
for numero in lista_numerica:
    if numero < numero_usuario_inferior:
        resultado = numero
print(resultado)

## 7. Crea un script que extraiga los elementos comunes entre dos listas. 
lista_1 =  [1, 2, 3, 4, 5, 6, 3, 7, 8, 9, 10]
lista_2 =  [2, 2, 3, 5, 5, 6, 3, 7, 9, 8, 10]
lista_comunes = []
for elemento in lista_1:
    if (elemento in lista_2) and (elemento not in lista_comunes):
        lista_comunes.append(elemento)
print(lista_comunes)

## 8. Crea un script que cuente el número de apariciones de un elemento de una lista en dicha lista 
## (P.e. en la lista lista=[23, 65, 23] el número de apariciones de 23 es 2) 
lista_repeticiones = [23,35,46,34,35,35,23]
for elemento in lista_repeticiones:
    print(f'El elemento {elemento} aparece {lista_repeticiones.count(elemento)} veces en la lista')

## 9. Escribe un programa que lea una lista de enteros y cree una nueva lista que contenga solo 
## números positivos de la lista original. 
lista_enteros = [4,6,7,-1,-2,-6,8,7]
lista_naturales = []
for numero in lista_enteros:
    if numero >= 0:
        lista_naturales.append(numero)
print(lista_naturales)

## 10. Crea un script que tome una lista de strings y cree una nueva lista que contenga el tamaño de 
## los strings de la lista original. 
lista_strings = ['hola', 'estas', 'usando', 'python']
lista_longitud = []
for palabra in lista_strings:
    lista_longitud.append(len(palabra))
print(lista_longitud)

## 11. Crea un programa que dada una lista de strings, devuelva otra lista con los strings en 
## mayúscula. 
lista_strings = ['hola', 'estas', 'usando', 'python']
strings_mayuscula = [palabra.upper() for palabra in lista_strings]
print(strings_mayuscula)