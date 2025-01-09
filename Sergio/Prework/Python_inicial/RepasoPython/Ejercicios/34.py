'''CALCULO DE NOTAS FINALES 
Supongamos que tienes un conjunto de calificaciones de un grupo de estudiantes en un 
curso. Cada estudiante tiene cuatro calificaciones: dos exámenes, un trabajo final y una 
participación en clase. Quieres calcular la nota final de cada estudiante, donde los 
exámenes valen un 30% cada uno, el trabajo final vale un 30% y la participación en clase 
vale un 10%. Para ello, puedes usar NumPy para crear un array de 4 columnas y n filas, 
donde n es el número de estudiantes. Cada columna representa una de las calificaciones 
y cada fila representa un estudiante. Luego, puedes usar operaciones de NumPy para 
calcular la nota final de cada estudiante y almacenarla en un nuevo array de una sola 
columna.'''
import numpy as np
num = int(input('Numero de alumnos: '))
base_datos = np.zeros((num,4))

for i in range(num):
    print(f'Estudiante {i+1} ')
    examen_1 = float(input('Nota examen 1: '))
    base_datos[i,0] = examen_1
    examen_2 = float(input('Nota examen 2: '))
    base_datos[i,1] = examen_1
    trabajo = float(input('Nota trabajo: '))
    base_datos[i,2] = examen_1
    clase = float(input('Nota participacion clase: '))
    base_datos[i,3] = examen_1

print(base_datos)
notas_medias = np.zeros((num,1))

for i in range(num):
    nota_media = base_datos[i,0]*0.3 + base_datos[i,1]*0.3 + base_datos[i,2]*0.3 + base_datos[i,3]*0.1
    notas_medias[i] = nota_media

print(notas_medias)