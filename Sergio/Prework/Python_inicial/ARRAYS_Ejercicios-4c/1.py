'''Supongamos que tienes un conjunto de datos de películas que contiene información 
sobre su título, género, duración, año de lanzamiento y calificación. Quieres analizar 
estos datos para determinar cuál es el género de película más popular, cuántas películas 
se lanzaron en cada década y cuál es la duración promedio de cada género de película.
(Pista 1: Tu array de entrada puede tener la forma…) (Pista 2: puede ser util investigar np.unique, np.argsort y np.count_nonzero'''
'''
np.unique           obtiene los elementos unicos de un array. Por ejemplo de [1,2,3,4,2,3,3]
                    sacaria [1,2,3,4]
np.argsort          es como el sort pero lo que te dice son los indices de ese orden de menor a mayor
                    Por ejemplo de [3,4,1,5,2] sacaria [2,4,0,1,3]
np.count_nonzero    cuenta el numero de valores que no son cero en un array
                    Por ejemplo de [2,4,0,3,0,3] sacaria un 4        
'''

# import modules
import numpy as np

# array con datos de peliculas
peliculas = np.array([    
    ['Peli 1', 'Comedia', 120, 1990, 8.5],
    ['Peli 2', 'Acción', 110, 2005, 7.8],
    ['Peli 3', 'Drama', 95, 2010, 6.9],
    ['Peli 4', 'Comedia', 100, 1985, 7.5],
    ['Peli 5', 'Acción', 130, 2015, 8.1],
    ['Peli 6', 'Drama', 115, 2000, 6.7],
    ['Peli 7', 'Comedia', 90, 1995, 8.2],
    ['Peli 8', 'Acción', 105, 2010, 7.4],
    ['Peli 9', 'Drama', 125, 1980, 6.8],
    ['Peli 10', 'Comedia', 95, 2000, 8.0]
])

# --- Genero de pelicula mas popular
# obtener generos y apariciones en la base de datos
generos, conteos = np.unique(peliculas[:,1], return_counts=True)
# ordenamos los conteos de mayor a menor
conteos_desc = np.argsort(conteos)[::-1] # nos devuelve los indices 
                                         # los elementos del array
                                         # conteos de mayor a menor
                                         # en este caso [1,2,0]
# extraemos el genero mas popular
genero_popular = generos[conteos_desc[0]] # conteos_desc[0] contiene el indice con
                                          # el conteo de mayor valor
print(genero_popular)

# --- agrupamos las peliculas por decada ---

# creamos array con las decadas a tratar
decadas = np.unique(peliculas[:,3].astype(int) // 10 * 10)
generos_media = np.zeros(len(generos))

# contamos las peliculas en cada decada
conteos_decadas = []
for decada in decadas:
    conteo = np.count_nonzero((peliculas[:,3].astype(int) >= decada) & (peliculas[:,3].astype(int) < decada + 10))
    conteos_decadas.append(conteo)

    print("En al decada de", decada, "se crearon", conteo, "peliculas")

# --- duracion promedio por genero ---
todos_generos = peliculas[:,1]
generos_media = np.zeros(len(generos))

for i in range(len(generos)):
    generos_media[i] = np.mean(peliculas[:,2][generos[i]==todos_generos].astype(float))
    print("Duracion media de las peliculas de tipo:", generos[i], "es de", generos_media[i], "minutos")