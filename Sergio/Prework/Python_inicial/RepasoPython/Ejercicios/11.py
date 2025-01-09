''' MAYUSCULA O MINUSCULA (BONUS*):
 Permite que el usuario introduzca una letra (del alfabeto latino) como input. Comprueba si esta es 
una mayúscula o una minúscula.'''

letra = input('Introduce una letra: ')

if letra.isalpha():
    if letra == letra.lower():
        print('Es una minúscula')
    else:
        print('Es una mayúscula')
else:
    print('No has introducido una letra')