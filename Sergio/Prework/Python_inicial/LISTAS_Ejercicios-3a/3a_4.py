## Ejercicio 4
## 1. Crea una lista llamada “numeros“ que contenga los siguientes numeros enteros: 
## [1,2,3,4,5,6,7,8,9,10]. 
## 2. Crea una nueva lista con los números pares de la lista anterior en orden inverso 
## 3. Escribe un bucle que recorra la lista “numeros“ e imprima el cuadrado de cada numero por 
## consola. 
## 4. Intenta rehacer los pasos 2 y 3 con el menor número de lineas posible (método de 
## compresión). 
## 5. Usa un método que te devuelva el número más pequeño de la lista e imprímelo por pantalla 
## 6. Haz lo mismo con el número más alto 
## 7. Suma todos los elementos de la lista con y sin un bucle. 
## 8. Encuentra el índice correspondiente al número 8 en la lista original y en la lista resultante tras 
## el punto 2

# 1
numeros = [1,2,3,4,5,6,7,8,9,10]
print(numeros)
# 2
pares = []
for numero in range(len(numeros)-1,-1,-1):
    if numeros[numero] % 2 == 0:
        pares.append(numeros[numero])
print(pares)
# 3
for numero in numeros:
    print(numero**2)
# 4
numeros_pares_invertidos = [numero for numero in numeros if numero % 2 == 0][::-1]
numeros_cuadrados = [numero**2 for numero in numeros]
print(numeros_pares_invertidos)
print(numeros_cuadrados)
# 5 y 6
print(min(numeros))
print(max(numeros))
# 7
suma = sum(numeros)
print(suma)
suma = 0
for numero in numeros:
    suma += numero
print(suma)
# 8
indice_8_original = numeros.index(8)
indice_8_invertida = numeros_pares_invertidos.index(8)

print(indice_8_original)
print(indice_8_invertida)