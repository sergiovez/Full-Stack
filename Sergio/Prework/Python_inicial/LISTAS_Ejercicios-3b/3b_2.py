## Ejercicio 2
## Dado una lista de números enteros, escribe un script en Python que devuelva una nueva lista con 
## los números primos de la lista original. Además, el script debe devolver el número total de 
## números primos encontrados y la suma de los números primos encontrados

## --- Definir lista
numeros = [1,4,7,8,11,13,22,24,56,67]

## --- Declarar variables
lista_numeros_primos = []
cantidad_numeros_primos = 0
suma_numeros_primos = 0
primo = True

## --- Ciclo que recorre la lista
for numero in numeros:
    for divisor in range(2,numero):
        if numero % divisor == 0:
            primo = False
    if primo:
        lista_numeros_primos.append(numero)
    primo = True

## --- Obtener la cantidad de numeros primos
cantidad_numeros_primos = len(lista_numeros_primos)

## --- Obtener la suma de los numeros primos
suma_numeros_primos = sum(lista_numeros_primos)

## --- Mostrar resultados
print(f'La lista de numeros primos es {lista_numeros_primos}')
print(f'Hay un total de {cantidad_numeros_primos} en la lista')
print(f'La suma de dichos numeros primos es de {suma_numeros_primos}')