'''BASE DE DATOS DE UN COLEGIO: 
Trabajas en colegio y estas encargado de mantener un seguimiento de las notas de los 
estudiantes de un clase. En tu base de datos tienes una lista con los nombres de los estudiantes y 
para cada estudiante debes guardar sus notas provenientes de deberes, exámenes y proyectos. 
También necesitas calcular a nota media de cada estudiante y la nota media de la clase al 
completo. 
Pista: Para resolver este problema puedes usar una lista anidada donde guardes las notas para 
cada estudiante. Entonces puedes usar un bucle para recorrer la lista de listas y calcular la nota 
media de cada estudiante. También puedes usar otro bucle para calcular la nota media de toda la 
clase.  '''

estudiantes = ["Juan", "María", "Pedro"]

base_datos = []
promedio = []

for estudiante in estudiantes:
    notas = []
    print(f'Notas de {estudiante}')
    nota_deberes = int(input('Nota deberes: '))
    nota_examenes = int(input('Nota deberes: '))
    nota_proyectos = int(input('Nota deberes: '))
    notas.append(nota_deberes)
    notas.append(nota_examenes)
    notas.append(nota_proyectos)
    base_datos = [estudiantes, notas]
    promedio_estudiante = sum(notas) / len(notas)
    promedio.append(promedio_estudiante)
    print(f'La nota promedio de {estudiante} es: {promedio_estudiante}')

promedio_total = sum(promedio) / len(promedio)
print(f'El promedio total de la clase es de {promedio_total}')
