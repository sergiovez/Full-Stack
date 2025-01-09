''' LOG-IN:
 Crea un script que pida una contraseña al usuario (el script sabe cual es la contraseña correcta). 
Si la contraseña es correcta el script debe darle la bienvenida al usuario. De lo contrario debe 
indicarle que la contraseña es incorrecta y darle una segunda oportunidad de introducir la 
contraseña. Al segundo fallo debe mostrar un mensaje de error y terminar de ejecutarse.
 Cambia el script para que no distinga entre mayúsculas y minúsculas.
 (Pista: Necesitarás in If Statement anidado)'''

contrasena_real = 'Chejo1994'

for i in range(2):
    contrasena_usuario = input('Introduce la contraseña: ')
    if contrasena_usuario.lower() == contrasena_real.lower():
        print('Contraseña CORRECTA')
        break
    elif i==1:
        print('Contraseña INCORRECTA. Has superado el limite de opciones')
    else: 
        print('Contraseña INCORRECTA')
