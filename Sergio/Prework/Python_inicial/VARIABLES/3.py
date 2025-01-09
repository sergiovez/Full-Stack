# Ejercicio 3
# Pedir el tiempo
tiempo_Hannah = input('Ingresa el tiempo de Hannah: ')
tiempo_Jackie = input('Ingresa el tiempo de Jackie: ')
tiempo_Kimberley = input('Ingresa el tiempo de Kimberley: ')

# Pasarlo a minutos, segundos y centesimas
minutos_Hannah, segundos_Hannah, centesimas_Hannah = tiempo_Hannah.split(" ")
minutos_Jackie, segundos_Jackie, centesimas_Jackie = tiempo_Jackie.split(" ")
minutos_Kimberley, segundos_Kimberley, centesimas_Kimberley = tiempo_Kimberley.split(" ")

# Calcular velocidad media en metros por segundo
tiempo_segundos_Hannah = 60 * float(minutos_Hannah) + float(segundos_Hannah) + float(centesimas_Hannah)/100
tiempo_segundos_Jackie = 60 * float(minutos_Jackie) + float(segundos_Jackie) + float(centesimas_Jackie)/100
tiempo_segundos_Kimberley = 60 * float(minutos_Kimberley) + float(segundos_Kimberley) + float(centesimas_Kimberley)/100

print(tiempo_segundos_Hannah)
print(type(tiempo_segundos_Hannah))

velocidad_Hannah = 100 / tiempo_segundos_Hannah
velocidad_Jackie = 100 / tiempo_segundos_Jackie
velocidad_Kimberley = 100 / tiempo_segundos_Kimberley

# Imprimir resultados
print('La velocidad media de Hannah es de: ', velocidad_Hannah, ' m/s')
print('La velocidad media de Jackie es de: ', velocidad_Jackie, ' m/s')
print('La velocidad media de Kimberley es de: ', velocidad_Kimberley, ' m/s')