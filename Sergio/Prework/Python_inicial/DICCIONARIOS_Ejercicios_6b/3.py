## EJERCICIO 3 DICCIONARIOS
'''Eres un profesor y deseas realizar un seguimiento de la asistencia de tus 
estudiantes a lo largo del semestre. Cada estudiante tiene un nombre y 
una lista de fechas en las que asistió a clases. Implementa un programa 
en Python que utilice un diccionario para almacenar la información de las 
asistencias. El programa debe permitir registrar la asistencia de los 
estudiantes, agregar nuevas fechas de asistencia y mostrar la lista de 
estudiantes y las fechas en las que asistieron.
 (Pista: puedes comenzar con un diccionario vacío y construir un 
diccionario de listas) '''
semestre = {}

# --- El programa debe permitir
                        # registrar la asistencia de los estudiantes
                        # agregar nuevas fechas de asistencia
                        # mostrar la lista de estudiantes y las fechas en las que asistieron

'''
1. Registrar asistencia de los estudiantes
2. Agregar nueva fecha de asistencia
3. Mostrar lista
4. Salir
'''

continuar = True

while continuar:
    opcion = input('1. Registrar asistencia de los estudiantes\n2. Agregar nueva fecha de asistencia\n3. Mostrar lista\n4. Salir\nIntroduce una opcion: ')
    if opcion == '1':
        estudiante = input('Introduce el nombre del estudiante: ')
        asistencia = input('Asistencia: ')
        semestre[estudiante]=[asistencia]
    elif opcion == '2':
        estudiante = input('Introduce el nombre del estudiante: ')
        if estudiante in semestre:
            nueva_asistencia = input('Agregar fecha de asistencia: ') 
            semestre[estudiante].append(nueva_asistencia)
        else:
            print('Ese estudiante no existe') 
    elif opcion == '3':
        pass
        for nombre, fechas in semestre.items():
            print(f'Estudiante {nombre}')
            #asistencia = detalles
            print("Fechas de Asistencia:", ", ".join(fechas))
    elif opcion == '4':
        continuar = False
    else:
        print('Opcion no valida.')

        