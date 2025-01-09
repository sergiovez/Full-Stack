## EJERCICIO 2 DICCIONARIOS
'''18.Crea una lista llamada "estudiantes" que contenga dos diccionarios. Cada diccionario 
representa a un estudiante y tiene las claves "nombre" y "edad" con sus respectivos 
valores. Recorre la lista e imprime el nombre y edad de cada estudiante. '''
estudiantes = [
                {
                    "Nombre": "Ruben",
                    "Edad": 32,
                },
                {
                    "Nombre": "Sergio",
                    "Edad": 30,
                },
                ]
print(estudiantes)

'''19.Agrega un nuevo estudiante a la lista "estudiantes" utilizando un diccionario con las 
mismas claves "nombre" y "edad". Imprime la lista actualizada. '''
estudiantes.append({"Nombre":"Oscar", "Edad":35})
print(estudiantes)

'''20.Elimina el segundo estudiante de la lista "estudiantes". Imprime la lista actualizada.'''
del estudiantes[1]
print(estudiantes)

'''21.Actualiza la edad del primer estudiante en la lista "estudiantes" a un nuevo valor. 
Imprime la lista actualizada.'''
estudiantes[0]["Edad"] = 25
print(estudiantes)