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

import random
import string

def generar_contrasena_segura(longitud, incluir_mayusculas = True, incluir_minusculas = True,  incluir_numeros = True, incluir_caracteres_especiales = True):
    """Genera una contrasena segura dada una longitud"""
    # longitud: numero de caracteres de la contrasena
    # incluir_mayusculas: si true la contrasena incluira al menos una mayuscula
    # incluir_minusculas: si true la contrasena incluira al menos una minuscula
    # incluir_numeros: si true la contrasena incluira al menos un numero
    # incluir_caracteres_especiales: si true la contrasena incluira al menos un caracter especial

    caracteres = ""

    # le indicamos que tipo de caracteres anadir a la 
    # nueva contrasena
    if incluir_mayusculas:
        caracteres += string.ascii_uppercase

    if incluir_minusculas:
        caracteres += string.ascii_lowercase

    if incluir_numeros:
        caracteres += string.digits

    if incluir_caracteres_especiales:
        caracteres += string.punctuation

    # creamos una mezcla aleatoria con los caracteres que le hemos indicado en los if
    contrasena = "".join(random.choice(caracteres) for i in range(longitud))

    return contrasena
   