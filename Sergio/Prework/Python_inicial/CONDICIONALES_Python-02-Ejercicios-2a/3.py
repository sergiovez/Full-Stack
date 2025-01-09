numero = input('Introduce el numero: ')
potencia = input('Introduce la potencia: ')

valor = float(numero)**float(potencia)

if (valor % 2 == 0):
    print('El', numero, 'elevado a', potencia, 'da', valor, 'que es par')
else:
     print('El', numero, 'elevado a', potencia, 'da', valor, 'que es impar')