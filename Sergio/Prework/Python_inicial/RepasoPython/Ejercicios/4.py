''' DIVISION:
 Escribir un programa que pida al usuario dos números y muestre por pantalla su división. Si el 
divisor es cero el programa debe mostrar un error.'''

numero_1 = int(input('Numero 1: '))
numero_2 = int(input('Numero 2: '))

try:
    resultado = numero_1 / numero_2
except ZeroDivisionError:
    print('No se puede dividir entre 0')
else:
    print(f'El resultado es {resultado}')

