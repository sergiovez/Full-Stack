'''REGISTRO DE ASISTENCIAS: 
Eres un profesor y deseas realizar un seguimiento de la asistencia de tus 
estudiantes a lo largo del semestre. Cada estudiante tiene un nombre y 
una lista de fechas en las que asistió a clases. Implementa un programa 
en Python que utilice un diccionario para almacenar la información de las 
asistencias. El programa debe permitir registrar la asistencia de los 
estudiantes, agregar nuevas fechas de asistencia y mostrar la lista de 
estudiantes y las fechas en las que asistieron.
 (Pista: puedes comenzar con un diccionario vacío y construir un 
diccionario de listas) '''

clase = {}
continuar = True

while continuar:
    opcion = input("1. Registrar asistencia\n2. Agregar nueva asistencia\n3. Mostrar lista\n4. Salir\nElige una opción: ")
    if opcion == '1':
        nombre = input('Nombre: ')
        if nombre in clase:
            print('Ya existe ese registro')
        else:
            asistencia = input('Asistencia: ')
            clase[nombre] = [asistencia]
    if opcion == '2':
        nombre = input('Nombre: ')
        if nombre in clase:
            asistencia = input('Asistencia: ')
            clase[nombre].append(asistencia)
        else:
            print('No existe ese registro')
    if opcion == '3':
       for clave, valor in clase.items():
            print(f'{clave}: {valor}')
    if opcion == '4':
        continuar = False
    else:
        print('Introduce un valor del 1 al 4')    