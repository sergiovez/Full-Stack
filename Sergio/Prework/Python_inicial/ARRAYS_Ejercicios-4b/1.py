## Ejercicio 1
''' Supongamos que tienes un conjunto de calificaciones de un grupo de estudiantes en un 
curso. Cada estudiante tiene cuatro calificaciones: dos exámenes, un trabajo final y una 
participación en clase. Quieres calcular la nota final de cada estudiante, donde los 
exámenes valen un 30% cada uno, el trabajo final vale un 30% y la participación en clase 
vale un 10%. Para ello, puedes usar NumPy para crear un array de 4 columnas y n filas, 
donde n es el número de estudiantes. Cada columna representa una de las calificaciones 
y cada fila representa un estudiante. Luego, puedes usar operaciones de NumPy para 
calcular la nota final de cada estudiante y almacenarla en un nuevo array de una sola 
columna. '''

import numpy as np
# --- Crear array de 4 columnas (2 examanes, trabajo final y noya de clase) y n filas
n = int(input('¿Cuantos estudiantes tienes?: '))
database = np.ones((n, 4))
print(database)

for i in range(0, n):
    print(f'Introducir notas del alumno {i+1}: ')
    database[i,0] = float(input('Nota examen 1: '))
    database[i,1] = float(input('Nota examen 2: '))
    database[i,2] = float(input('Nota trabajo: '))
    database[i,3] = float(input('Nota clase: '))

print(database)

examen_1 = database[:,0]
examen_2 = database[:,1]
trabajo = database[:,2]
clase = database[:,3]

nota_final = examen_1 * 0.3 + examen_2 * 0.3 + trabajo * 0.3 + clase * 0.1
print(nota_final)

for i in range(len(nota_final)):
    print("La nota final del estudiante", i+1, "es:", nota_final[i])