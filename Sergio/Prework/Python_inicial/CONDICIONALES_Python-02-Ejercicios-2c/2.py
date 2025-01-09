# Ejercicio 2
edad = float(input('Edad: '))
renta = float(input('Renta: '))

if edad >= 18 and renta > 1000:
    if renta <= 15000:
        porcentaje = 5
    elif renta <= 25000:
        porcentaje = 15
    elif renta <= 35000:
        porcentaje = 20
    elif renta <= 60000:
        porcentaje = 30
    else:
        porcentaje = 45
    print('Tributas con un tipo impositivo del', porcentaje, '%')
else:
    print('No es necesario tributar')