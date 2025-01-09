'''ARRAYS 1D PARTE 2:  
1. Crea un array con 15 números enteros aleatorios entre 1 y 100'''
import numpy as np
array = np.random.randint(1,101, size=15)
print(array)

'''2. Multiplica todos los elementos del array usando un bucle y después usando un 
método de numpy. Compara los resultados'''
print(np.prod(array))
producto = 1
for valor in array:
    producto *= valor
print(producto)

'''3. Crea otro array con 15 números decimales aleatorios entre 0 y 1'''
array_1 = np.random.random(size=15)
print(array_1)

'''4. Suma los elementos de ambos arrays elementos por elemento. Resuélvelo usando un 
operador y después con una función de numpy (Pista: busca en google que función de numpy hace esto)'''
print(array + array_1)
print(np.add(array, array_1))

'''5. Ahora réstalos. Resuélvelo usando un operador y después con una función de numpy (Pista: busca en google que función de numpy hace esto)'''
print(array - array_1)
print(np.subtract(array, array_1))

'''6. Haz lo mismo con la multiplicación elemento por elemento. Usa un operador y 
después con una función de numpy (Pista: busca en google que función de numpy hace esto)'''
print(array * array_1)
print(np.multiply(array, array_1))

'''7. Encuentra el valor más alto del primer array que has creado.'''
print(np.max(array))

'''8. Calcula la media (mean), la mediana (median) y al deviación estandar (standard 
deviation) de los arrays  (Nota: No nos importa el significado matemático de estos 
valores, lo importante es que encuentres que función de numpy necesitas. Puedes 
hacer la búsqueda en castellano o en inglés, aunque en inglés muchas veces suele 
haber más resultados).'''
print(np.mean(array))
print(np.median(array))
print(np.std(array))