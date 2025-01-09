''' BIENVENIDA AL USUARIO:
 Un ordenador tiene tres usuarios distintos (Alejandro, Naomi y Sergio) y otro usuario invitado. 
Haz un script que pida el nombre al usuario y le dé una bienvenida personalizada. Crea el script 
de tal manera que si el usuario no es ninguno de los tres se le dé un saludo genérico.
 ¿Que ocurre si uno de los usuarios introduce su nombre completamente en minúsculas?¿Y si lo 
introduce en mayúsculas? ¿Y si sin querer pone in punto en mitad de su nombre (p.e. nao.mi)?¿Y 
si se le cuela una almohadilla (p.e se#rgio)?'''

nombre = input('Introduce el nombre de usuario: ')
nombre = nombre.title()
match nombre:
    case "Alejandro":
        print(f'¡Hola {nombre}!')
    case "Sergio":
        print(f'¡Hola {nombre}!')
    case "Naomi":
        print(f'¡Hola {nombre}!')
    case _:
        print('¡Hola!')           