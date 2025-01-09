## Ejercicio 1D 2º parte
'''1. Crea un array con 15 números enteros aleatorios entre 1 y 100
2. Multiplica todos los elementos del array usando un bucle y después usando un 
método de numpy. Compara los resultados
3. Crea otro array con 15 números decimales aleatorios entre 0 y 1
4. Suma los elementos de ambos arrays elementos por elemento. Resuélvelo usando un 
operador y después con una función de numpy
 (Pista: busca en google que función de numpy hace esto)
5. Ahora réstalos. Resuélvelo usando un operador y después con una función de numpy
(Pista: busca en google que función de numpy hace esto)
6. Haz lo mismo con la multiplicación elemento por elemento. Usa un operador y 
después con una función de numpy 
 (Pista: busca en google que función de numpy hace esto)
7. Encuentra el valor más alto del primer array que has creado. 
8. Calcula la media (mean), la mediana (median) y al deviación estandar (standard 
deviation) de los arrays (Nota: No nos importa el significado matemático de estos 
valores, lo importante es que encuentres que función de numpy necesitas. Puedes 
hacer la búsqueda en castellano o en inglés, aunque en inglés muchas veces suele 
haber más resultados)'''
import numpy as np
# 1
array_random = np.random.randint(1,101, size=15)
print(array_random)
# 2
multiplicacion = 1
for numero in array_random:
    multiplicacion *= numero
print(multiplicacion)
multiplicacion = np.prod(array_random)
print(multiplicacion)
# 3
array_random_2 = np.random.random(size=15)
print(array_random_2)
# 4
array_sumas = array_random + array_random_2
print(array_sumas)
array_sumas = np.add(array_random, array_random_2)
print(array_sumas)
# 5
array_producto = array_random - array_random_2
print(array_producto)
array_producto = np.subtract(array_random, array_random_2)
print(array_producto)
# 6
array_producto = array_random * array_random_2
print(array_producto)
array_producto = np.multiply(array_random, array_random_2)
print(array_producto)
# 7
print(max(array_producto))
# 8
media = np.mean(array_producto)
mediana = np.median(array_producto)
desviacion = np.std(array_producto)
print(media)
print(mediana)
print(desviacion)