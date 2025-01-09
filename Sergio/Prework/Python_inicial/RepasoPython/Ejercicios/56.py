''' CONTRASENA SEGURA 
Crea un script que solicite una contraseña, analice si es segura y si no lo es 
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

def validar_contrasena(cadena):
    validacion = True
    digito = False
    caracter = False    
    if len(cadena)<8:
        validacion = False
    elif cadena == cadena.lower():
        validacion = False
    elif cadena == cadena.upper():
        validacion = False
    else:
        for letra in cadena:
            if letra.isdigit():
                digito = True
            if not (letra.isalpha() and letra.isdigit()):
                caracter = True
    if validacion & digito & caracter:
        validacion = True
    else:
        validacion = False
    return validacion

print(validar_contrasena('Sergio33433.'))