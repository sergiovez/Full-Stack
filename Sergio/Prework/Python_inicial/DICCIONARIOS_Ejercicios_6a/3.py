## EJERCICIO 3 DICCIONARIOS
'''22. Crea un diccionario llamado "productos" que contenga dos entradas. Cada entrada 
representa un producto y tiene a su vez las claves "nombre" y "precio" con sus 
respectivos valores. Recorre el diccionario e imprime el nombre y precio de cada 
producto.'''
productos = {
            1: {
                "Nombre" : "Papel higienico",
                "Precio" : 2,
            },
            2: {
                "Nombre" : "Lentejas",
                "Precio" : 3,
            }           
}
print(productos)

'''23. Agrega un nuevo producto al diccionario "productos" utilizando una nueva clave y 
valor. Imprime el diccionario actualizado.'''
productos[3] = {"Nombre": "Salmon", "Precio": 6}
print(productos)

'''24.Crea un diccionario llamado "equipos" que contenga tres entradas. Cada entrada 
representa un equipo deportivo y tiene las claves "nombre" y "jugadores" con sus 
respectivos valores. Los valores de "jugadores" deben ser listas con los nombres de 
los jugadores. Recorre el diccionario e imprime el nombre del equipo y la lista de 
jugadores. '''
equipos = {
            1: {
                "Nombre" : "Athletic Club",
                "Jugadores" : ["Muniain", "Unai Simon", "Nico Williams"],
            },
            2: {
                "Nombre" : "Barcelona",
                "Jugadores" : ["Pedri", "Ter Stegen"],
            },
            3: {
                "Nombre" : "Real Madrid",
                "Jugadores" : ["Curtois", "Dani Carvajal", "Marcos Asensio", "Toni Kroos"],
            }                
}
print(equipos)

'''25.Agrega un nuevo equipo al diccionario "equipos" utilizando una nueva clave y valor. 
La lista de jugadores debe contener al menos tres nombres. Imprime el diccionario 
actualizado.'''
equipos[4] = {"Nombre": "Real Sociedad", "Jugadores":["Jugador 1", "Jugador 2", "Jugador 3"]}
print(equipos)

'''26.Actualiza la lista de jugadores de uno de los equipos existentes en el diccionario 
"equipos". Agrega un nuevo jugador a la lista. Imprime el diccionario actualizado.'''
equipos[1]["Jugadores"].append('Yuri Berchiche')
print(equipos)
