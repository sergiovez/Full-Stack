## EJERCICIO 2
'''Supongamos que tienes los resultados de una elección con los nombres 
de los candidatos y la cantidad de votos obtenidos por cada uno. 
Implementa un programa en Python que permita registrar los votos, 
mostrar la lista completa de candidatos y sus votos, encontrar al 
candidato ganador (con más votos) y calcular el porcentaje de votos que 
obtuvo cada candidato.'''

votaciones = {}

# --- Empleado: nombre y cantidad de votos

# --- El programa permite
                        # Registrar los votos
                        # Mostrar la lista completa de candidatos y los votos
                        # Encontrar candidato ganador
                        # Porcentaje de votos de cada candidato
                        # Salir

continuar = True

while continuar:
    opcion = input('1. Registrar los votos\n2. Mostrar la lista completa de candidatos y los votos\n3. Encontrar candidato ganador\n4. Porcentaje de votos de cada candidato\n5. Salir\nIntroduce una opcion: ')
    if opcion == '1':
        # Registrar los votos
        nombre = input('Nombre: ')
        votos = int(input('Votos: '))
        votaciones[nombre] = {'votaciones':votos}
    elif opcion == '2':
        # Mostrar la lista completa de candidatos y los votos
        for nombre, votos in votaciones.items():
            print(f'Nombre: {nombre}')
            print(f'Votos: {votos}')
    elif opcion == '3':
        # Encontrar candidato ganador
        candidato_mas_votado = max(votaciones, key=votaciones.get)
        print(f'El candidato ganador: {candidato_mas_votado}')
    elif opcion == '4':
        # Porcentaje de votos de cada candidato
        pass
    elif opcion == '5':
        continuar = False
    else:
        print('Opcion no valida.')
