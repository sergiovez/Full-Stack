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

def validar_contrasena(contrasena):
    longitud_minima = 8
    tiene_mayuscula = False
    tiene_minuscula = False
    tiene_numero = False
    tiene_caracter_especial = False
    for caracter in contrasena:
        if caracter.isupper():
            tiene_mayuscula = True
        elif caracter.islower():
            tiene_minuscula = True
        elif caracter.isdigit():
            tiene_numero = True
        else:
            tiene_caracter_especial = True

    return len(contrasena)>= longitud_minima and tiene_mayuscula and tiene_minuscula and tiene_numero and tiene_caracter_especial
