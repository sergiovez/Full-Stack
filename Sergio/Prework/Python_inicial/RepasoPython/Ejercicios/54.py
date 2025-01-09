'''VALIDACIÓN DE FORMULARIO 
Crea un programa que valide un formulario de registro. Crea una función 
llamada validar_formulario que reciba diferentes campos de un formulario 
(nombre, correo electrónico y número de teléfono) y verifique si los valores 
ingresados cumplen con los requisitos especificados, siendo estos:
 1. Que el nombre tenga una longitud minima de 3 caracteres
 2. Que el teléfono este conformado por dígitos y tenga una longitud de 9 
caracteres
 3. Que el email contenga un “@“ y un “.”'''

def validar_formulario(nombre, correo, telefono):
    validacion = True
    if len(nombre)<3:
        validacion = False
    if not (telefono.isdigit() and len(telefono)==9):
        validacion = False
    if not (("@" in correo) and ("." in correo)):
        validacion = False
    return validacion

print(validar_formulario('Sergio', 'sergiovez@gmail.com', '697257757'))
print(validar_formulario('Le', 'sergiovez@gmail.com', '697257757'))
print(validar_formulario('Sergio', 'sergiovezgmail.com', '697257757'))
print(validar_formulario('Sergio', 'sergiovez@gmail.com', '69727757'))
print(validar_formulario('Sergio', 'sergiovez@gmail.com', '6972a57757'))



