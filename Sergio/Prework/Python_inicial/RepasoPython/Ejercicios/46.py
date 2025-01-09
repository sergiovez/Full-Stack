'''ANIDAMIENTO DE DICCIONARIOS: 
22. Crea un diccionario llamado "productos" que contenga dos entradas. Cada entrada 
representa un producto y tiene a su vez las claves "nombre" y "precio" con sus 
respectivos valores. Recorre el diccionario e imprime el nombre y precio de cada 
producto.'''
productos = {'Papel':40,'Carne':50,'Pescado':20}

for clave, valor in productos.items():
    print(f'{clave}: {valor}')

'''23. Agrega un nuevo producto al diccionario "productos" utilizando una nueva clave y 
valor. Imprime el diccionario actualizado.'''
productos['Leche'] = 10
print(productos)

'''24.Crea un diccionario llamado "equipos" que contenga tres entradas. Cada entrada 
representa un equipo deportivo y tiene las claves "nombre" y "jugadores" con sus 
respectivos valores. Los valores de "jugadores" deben ser listas con los nombres de 
los jugadores. Recorre el diccionario e imprime el nombre del equipo y la lista de 
jugadores.''' 
productos = {'Equipo 1':['Jugador1', 'Jugador2'],'Equipo 2':['Jugador1', 'Jugador2', 'Jugador 3'],'Equipo 3':['Jugador1', 'Jugador2', 'Jugador 3', 'Jugador 4']}

for clave, valor in productos.items():
    print(f'{clave}: {valor}')

'''25.Agrega un nuevo equipo al diccionario "equipos" utilizando una nueva clave y valor. 
La lista de jugadores debe contener al menos tres nombres. Imprime el diccionario 
actualizado.'''
productos['Equipo 4']=['Jugador1']
print(productos)

'''26.Actualiza la lista de jugadores de uno de los equipos existentes en el diccionario 
"equipos". Agrega un nuevo jugador a la lista. Imprime el diccionario actualizado'''
productos['Equipo 1'].append('Jugador3')
print(productos)