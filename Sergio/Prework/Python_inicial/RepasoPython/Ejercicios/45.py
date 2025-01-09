''' LISTAS DE DICCIONARIOS: 
18.Crea una lista llamada "estudiantes" que contenga dos diccionarios. Cada diccionario 
representa a un estudiante y tiene las claves "nombre" y "edad" con sus respectivos 
valores. Recorre la lista e imprime el nombre y edad de cada estudiante.''' 
estudiantes = [{'Nombre':'Sergio', 'Edad':30},{'Nombre':'Carlos', 'Edad':25}]

for estudiante in estudiantes:
    print(f'{estudiante['Nombre']}: {estudiante['Edad']}')

'''19.Agrega un nuevo estudiante a la lista "estudiantes" utilizando un diccionario con las 
mismas claves "nombre" y "edad". Imprime la lista actualizada. '''
estudiantes.append({'Nombre':'Mario', 'Edad':20})
print(estudiantes)

'''20.Elimina el segundo estudiante de la lista "estudiantes". Imprime la lista actualizada.'''
del estudiantes[1]
print(estudiantes)

'''21.Actualiza la edad del primer estudiante en la lista "estudiantes" a un nuevo valor. 
Imprime la lista actualizada.'''
estudiantes[0]['Edad'] = 40
print(estudiantes)