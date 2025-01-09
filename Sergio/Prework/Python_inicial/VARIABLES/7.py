# Ejercicio 7
# Introducir numero
numero = input('Introducir numero de tarjeta: ')
# Imprimir numero con *
longitud = len(numero)
print('*'*4 + ' ' + '*'*4 + ' ' + '*'*4 + ' ' + numero[longitud-4::])