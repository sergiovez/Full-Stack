'''DATOS CINEMATOGRÁFICOS 
Supongamos que tienes un conjunto de datos de películas que contiene información 
sobre su título, género, duración, año de lanzamiento y calificación. Quieres analizar 
estos datos para determinar cuál es el género de película más popular, cuántas películas 
se lanzaron en cada década y cuál es la duración promedio de cada género de película.
 (Pista 1: Tu array de entrada puede tener la forma…)
  (Pista 2: puede ser util investigar np.unique, np.argsort y np.count_nonzero)'''

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

'''Quieres analizar 
estos datos para determinar cuál es el género de película más popular, cuántas películas 
se lanzaron en cada década y cuál es la duración promedio de cada género de película'''

'''género de película más popular'''
generos = peliculas[:,1]
print(generos)
generos_unicos, conteo_generos = np.unique(generos,return_counts=True)
print(generos_unicos, conteo_generos)
orden = np.argsort(conteo_generos)
print(f'El genero mas visto es {generos_unicos[orden[-1]]} con {conteo_generos[orden[-1]]} visualizaciones')

'''cuántas películas se lanzaron en cada década'''
decadas = np.unique(peliculas[:,3].astype(int)//10*10)
print(decadas)
for decada in decadas:
    conteo_decada = np.count_nonzero((peliculas[:,3].astype(int) >= decada) & (peliculas[:,3].astype(int) < decada + 10))
    print(f'En la decada {decada} se han publicado {conteo_decada} peliculas')

'''duración promedio de cada género de película'''
promedio_genero = np.zeros(len(generos_unicos))
for i in range(len(generos_unicos)):
    promedio_genero[i] = np.mean(peliculas[:,2][generos_unicos[i] == generos].astype(float))
    print(f'La duración promedio del genero {generos_unicos[i]} es {promedio_genero[i]} minutos')
