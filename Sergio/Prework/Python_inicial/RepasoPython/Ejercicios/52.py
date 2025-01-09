''' ANÁLISIS DE VOTACIONES: 
Supongamos que tienes los resultados de una elección con los nombres 
de los candidatos y la cantidad de votos obtenidos por cada uno. 
Implementa un programa en Python que permita registrar los votos, 
mostrar la lista completa de candidatos y sus votos, encontrar al 
candidato ganador (con más votos) y calcular el porcentaje de votos que 
obtuvo cada candidato. '''

elecciones = {}
continuar = True

while continuar:
    opcion = input("1. Registrar votos\n2. Lista completa\n3. Candidato ganador\n4. Porcentaje de votos\n5. Salir\nElige una opción: ")
    # Registrar votos
    if opcion == '1':
        candidato = input('Candidato: ')
        votos = int(input('Votos a añadir: '))
        if candidato in elecciones:
            elecciones[candidato] += votos
        else:
            elecciones[candidato] = votos
        print('VOTOS REGISTRADOS')
    # Lista completa
    if opcion == '2':
        for nombre, voto in elecciones.items():
            print(f'El candidato {nombre} ha logrado {voto} votos')    
    # Candidato ganador
    if opcion == '3':
        if len(elecciones) == 0:
            print("No hay candidatos registrados.")
        else:
            ganador = max(elecciones, key = elecciones.get)
            print(f"El candidato ganador es: {ganador}")
    # Porcentaje de votos
    if opcion == '4':
        total_votos = sum(elecciones.values())
        print("Porcentaje de votos por candidato")
        for candidato, votos in elecciones.items():
            porcentaje = (votos/total_votos) * 100
            print(f"Candidato: {candidato}, Porcentaje de votos {porcentaje:.2f}%")        
    if opcion == '5':
        continuar = False
    else:
        print('Introduce un valor del 1 al 5')   