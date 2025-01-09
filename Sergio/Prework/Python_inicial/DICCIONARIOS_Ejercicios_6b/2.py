## EJERCICIO 2 DICCIONARIOS
'''Eres un gerente de proyectos y necesitas un programa para administrar 
las tareas y responsabilidades de tu equipo. Cada tarea tiene un nombre, 
una descripción y un responsable asignado. Implementa un programa en 
Python que utilice un diccionario para almacenar la información de las 
tareas. El programa debe permitir agregar nuevas tareas, asignar 
responsables a las tareas existentes, actualizar las descripciones de las 
tareas y mostrar la lista completa de tareas y responsables. 
(Pista: puedes comenzar con un diccionario vacío y construir un 
diccionario de diccionarios) '''
tareas = {}

# --- El programa debe permitir
                        # Agregar nuevas tareas
                        # Asignar responsables a las tareas existentes
                        # Actualizar las descripciones de las tareas
                        # Mostrar la lista completa de tareas y responsables

'''
1. Agregar nuevas tareas
2. Asignar responsables
3. Actualizar descripciones
4. Mostrar lista completa
5. Salir
'''

continuar = True

while continuar:
    opcion = input('1. Agregar nuevas tareas\n2. Asignar responsables\n3. Actualizar descripciones\n4. Mostrar lista completa\n5. Salir\nIntroduce una opcion: ')
    if opcion == '1':
        tarea = input('Introduce el número de tarea: ')
        descripcion = input('Descripcion: ')
        responable = input('Responsables: ')
        tareas[tarea] = {"descripcion": descripcion, "responsable": responable}
    elif opcion == '2':
        tarea = input('Introduce el número de tarea: ')   
        if tarea in tareas:
            responable = input('Responsables: ') 
            tareas[tarea]['responsable'] = responable
        else:
            print('Esa tarea no existe') 
    elif opcion == '3':
        tarea = input('Introduce el número de tarea: ')   
        if tarea in tareas:
            descripcion = input('Descripcion: ') 
            tareas[tarea]['descripcion'] = descripcion
        else:
            print('Esa tarea no existe') 
    elif opcion == '4':
        for tarea, detalles in tareas.items():
            print(f'Tarea {tarea}')
            descripcion = detalles["descripcion"]
            responable = detalles['responsable']
            print(f'Descripción: {descripcion}')
            print(f'Responsables: {responable}')
    elif opcion == '5':
        continuar = False
    else:
        print('Opcion no valida.')