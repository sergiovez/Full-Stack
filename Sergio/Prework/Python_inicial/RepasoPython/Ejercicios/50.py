'''REGISTRO DE PUNTAJES: 
Implementa un programa en Python que permita registrar y mantener un 
seguimiento de los puntajes de un juego. El programa debe permitir a los 
jugadores ingresar sus nombres y puntajes, almacenarlos en un 
diccionario y proporcionar funcionalidades para mostrar el puntaje más 
alto, el promedio de puntajes y la cantidad total de jugadores.'''

juego = {}
continuar = True

while continuar:
    opcion = input("1. Ingresar nombre y puntuaje\n2. Puntuaje mas alto\n3. Promedio de puntuajes\n4. Cantidad total de jugadores\n5. Salir\nElige una opción: ")
    # Ingresar nombre y puntuaje
    if opcion == '1':
        nombre = input('Nombre: ')
        puntuaje = int(input('Puntuaje: '))
        juego[nombre] = puntuaje
    # Puntuaje mas alto
    if opcion == '2':
        maximo = max(list(juego.values()))
        print(f'El puntuaje mas alto es {maximo}')
    # Promedio de puntuajes
    if opcion == '3':
        media = sum(list(juego.values()))/len(list(juego.values()))
        print(f'El puntuaje promedio es {media}')
    # Cantidad total de jugadores
    if opcion == '4':
        jugadores = len(list(juego.keys()))
        print(f'Hay un total de {jugadores} jugadores')
    if opcion == '5':
        continuar = False
    else:
        print('Introduce un valor del 1 al 5')   