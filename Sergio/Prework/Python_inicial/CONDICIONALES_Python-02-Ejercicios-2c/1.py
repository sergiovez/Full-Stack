# Ejercicio 1
nombre = input('Introduce el nombre: ')
sexo = input('¿Es chico o chica?: ')
letra = nombre.lower()[0]

if sexo == 'chica':
    if ('e' <= letra <= 'm'):
        print('Clase A')
    else:
        print('Clase B')
else:
    if ('a' <= letra <= 'h') or ('r' <= letra <= 'z'):
        print('Clase A')
    else:
        print('Clase B')