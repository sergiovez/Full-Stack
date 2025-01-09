## EJERCICIO 1
'''Crea un programa que valide un formulario de registro. Crea una función 
llamada validar_formulario que reciba diferentes campos de un formulario 
(nombre, correo electrónico y número de teléfono) y verifique si los valores 
ingresados cumplen con los requisitos especificados, siendo estos:
1. Que el nombre tenga una longitud minima de 3 caracteres
2. Que el teléfono este conformado por dígitos y tenga una longitud de 9 
caracteres
3. Que el email contenga un “@“ y un “.”'''

def validar_formulario(nombre, telefono, correo):
    if len(nombre)<3:
        print('El nombre tiene que tener al menos 3 caracteress')
    if not telefono.isdigit() or len(telefono) != 9:
        print('El telefono tiene que estar formado por digitos y tener 9 valores')
    if "@" not in correo or "." not in correo:
         print('El correo tiene que incluir un "@" y un "."')

validar_formulario('Li','485796049', 'sergio@gmail.com')
validar_formulario('Lio','48596049', 'sergio@gmail.com')
validar_formulario('Lio','485a96049', 'sergio@gmail.com')
validar_formulario('Lio','485796049', 'sergiogmail.com')
validar_formulario('Lio','485796049', 'sergio@gmail.com')