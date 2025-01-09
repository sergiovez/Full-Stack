## EJERCICIO 4 DICCIONARIOS
'''Implementa un programa en Python que permita registrar y mantener un 
seguimiento de los puntajes de un juego. El programa debe permitir a los 
jugadores ingresar sus nombres y puntajes, almacenarlos en un 
diccionario y proporcionar funcionalidades para mostrar el puntaje más 
alto, el promedio de puntajes y la cantidad total de jugadores'''
juego = {}

# --- El programa debe permitir
                        # ingresar sus nombres y puntajes
                        # mostrar el puntaje más alto
                        # el promedio de puntajes
                        # la cantidad total de jugadores

'''
1. Ingresar sus nombres y puntajes
2. Mostrar puntaje mas alto
3. Mostrar promedio de puntajes
4. Mostrar la cantidad de total de jugadores
5. Mostrar diccionario
6. Salir
'''

continuar = True

while continuar:
    opcion = input('1. Ingresar sus nombres y puntajes\n2. Mostrar puntaje mas alto\n3. Mostrar promedio de puntajes\n4. Mostrar la cantidad de total de jugadores\n5. Mostrar diccionario\n6. Salir\nIntroduce una opcion: ')
    if opcion == '1':
        # Ingresar sus nombres y puntajes
        nombre = input('Nombre: ')
        puntajes = int(input('Puntaje: '))
        juego[nombre]=[puntajes]
    elif opcion == '2':
        # Mostrar puntaje mas alto
        jugador_mas_alto = max(juego, key=juego.get)
        puntaje_mas_alto = juego[jugador_mas_alto]
        print("Puntaje más alto:")
        print("Jugador:", jugador_mas_alto)
        print("Puntaje:", puntaje_mas_alto)
    elif opcion == '3':
        # Mostrar promedio de puntajes
        print(juego.values())
        suma = sum(juego.values())
        conteo = len(juego)
        promedio = suma / conteo
        print("Promedio de puntajes:", promedio)
    elif opcion == '4':
        # Mostrar la cantidad de total de jugadores
        conteo = len(juego)
        print("Numero de jugadores:", conteo)
    elif opcion == '5':
        # Mostrar diccionario
        for nombre, puntaje in juego.items():
            print(f'El jugador {nombre} ha obtenido {puntaje} puntos')
    elif opcion == '6':
        continuar = False
    else:
        print('Opcion no valida.')