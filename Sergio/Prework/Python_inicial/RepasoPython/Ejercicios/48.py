'''ADMINISTRACION DE PROYECTOS: 
Eres un gerente de proyectos y necesitas un programa para administrar 
las tareas y responsabilidades de tu equipo. Cada tarea tiene un nombre, 
una descripción y un responsable asignado. Implementa un programa en 
Python que utilice un diccionario para almacenar la información de las 
tareas. El programa debe permitir agregar nuevas tareas, asignar 
responsables a las tareas existentes, actualizar las descripciones de las 
tareas y mostrar la lista completa de tareas y responsables. 
(Pista: puedes comenzar con un diccionario vacío y construir un 
diccionario de diccionarios) '''

tareas = {}
continuar = True
'''Cada tarea tiene un nombre, una descripción y un responsable asignado.'''
while continuar:
    opcion = input("1. Agregar nuevas tareas\n2. Asignar responsables a las tareas existentes\n3. Actualizar las descripciones de las tareas\n4. Mostrar la lista completa de tareas y responsables\n5. Salir\nElige una opción: ")
    if opcion == '1':
        nombre = input('Nombre: ')
        descripción = input('Descripcion: ')
        responsable = list(input('Responsable: '))
        if nombre in tareas:
            print('Tarea ya existente')
        else:
            tareas[nombre]={'Descripcion':descripción, 'Responsable':responsable}
    if opcion == '2':
        nombre = input('Nombre: ')
        responsable = list(input('Responsable: '))
        if nombre in tareas:
            tareas[nombre]['Responsable'].append(responsable)
        else:
            print('Tarea no existente')        
    if opcion == '3':
        nombre = input('Nombre: ')
        descripción = input('Descripcion: ')
        if nombre in tareas:
            tareas[nombre]['Descripcion']=descripción
        else:
            print('Tarea no existente')
    if opcion == '4':
        for clave, valor in tareas.items():
            print(f'{clave}: {valor['Responsable']}')
    if opcion == '5':
        continuar = False
    else:
        print('Introduce un valor del 1 al 5')