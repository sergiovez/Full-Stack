# Ejercicio 5
contraseña = input('Escribe la contraseña: ')
contraseña_correcta = 'rubenobis'

if contraseña.lower() == contraseña_correcta:
    print('Contraseña correcta')
else:
    contraseña = input('Vuelve a escribir la contraseña: ')

    if contraseña.lower() == contraseña_correcta:
        print('Contraseña correcta')
    else:
        print('ERROR: Contraseña incorrecta')