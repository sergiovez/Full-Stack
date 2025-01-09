## EJERCICIO 3
'''Crea un script que solicite una contraseña, analice si es segura y si no lo es 
sugiera una nueva contraseña. Para ello puedes crear un script validador.py 
que contenga una funcion validar_contrasena que reciba una cadena y 
verifique si cumple con los requisitos mínimos de una contraseña segura 
(por ejemplo, longitud mínima, presencia de letras mayúsculas, letras 
minúsculas, números y caracteres especiales). La función debe devolver un 
valor booleano que indique si la contraseña es válida o no. Por otro lado 
puedes crear otro script creador.py con una función llamada 
generar_contrasena que genere contraseñas seguras de forma aleatoria. La 
función debe permitir especificar la longitud de la contraseña y qué tipos de 
caracteres deben incluirse (por ejemplo, letras mayúsculas, letras 
minúsculas, números y caracteres especiales).
(Para el generador de contraseñas puedes probar a usar los modulos 
random y string)'''

# importamos nuestros modulos
import validadorSergio
import generadorSergio

# funcion que contiene el codigo principal
def solicitar_contrasena_segura():
    """Solicitaremos la contraseña al usuario,
    llamaremos a la funcion validadora y a la funcion
    generadora de nuevas contraseñas si fuese necesario """

    # pedimos contrasena al usuario
    contrasena = input("Ingrese una contrasena: ")
    # validamos la contrasena 
    valida = validadorSergio.validar_contrasena(contrasena)
 
    if valida:
        print("Contrasena segura")

    else:
        # si la contrasena no es valida llamamos a la funcion generadora
        # y sugerimos una nueva contrasena
        print("La contrasena no es segura. Se sugiere una nueva contrasena")
        while not valida:
            sugerencia = generadorSergio.generar_contrasena_segura(9)
            valida = validadorSergio.validar_contrasena(sugerencia)
        print("Sugerencia de contrasena: ", sugerencia)

# Ejemplo de uso
solicitar_contrasena_segura()
