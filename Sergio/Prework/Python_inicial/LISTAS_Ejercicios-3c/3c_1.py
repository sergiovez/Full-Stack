# Ejercicio 1
## Trabajas en colegio y estas encargado de mantener un seguimiento de las notas de los 
## estudiantes de un clase. En tu base de datos tienes una lista con los nombres de los estudiantes y 
## para cada estudiante debes guardar sus notas provenientes de deberes, exámenes y proyectos. 
## También necesitas calcular a nota media de cada estudiante y la nota media de la clase al 
## completo. 
## Pista: Para resolver este problema puedes usar una lista anidada donde guardes las notas para 
## cada estudiante. Entonces puedes usar un bucle para recorrer la lista de listas y calcular la nota 
## media de cada estudiante. También puedes usar otro bucle para calcular la nota media de toda la 
## clase.

# --- Crear la lista de estudiantes
estudiantes = ["Juan", "María", "Pedro"]

# --- Crear base de datos de notas
database = []
notas_medias = []

# --- Ciclo para introducir notas del usuario
for estudiante in estudiantes:
    notas = []
    print(f'Introduce las notas de {estudiante}: ')
    deberes = float(input('Nota de deberes: '))
    notas.append(deberes)
    examenes = float(input('Nota de examenes: '))
    notas.append(examenes)
    proyectos = float(input('Nota de proyectos: '))
    notas.append(proyectos)
    nota_media = sum(notas) / len(notas)
    notas_medias.append(nota_media)
    print(f'La nota media de {estudiante} es de {nota_media}')

# --- Nota media de la clase
print(f'La nota media de la clase es de {sum(notas_medias)/len(notas_medias)} puntos')
