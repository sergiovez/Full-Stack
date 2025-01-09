''' PAR O IMPAR: 
Crea un script que dado un número y una potencia compruebe si ese numero elevado a esa 
potencia es par o impar. (Pista: los números pares tiene resto = 0 al dividirlos por 2)'''
numero = int(input('Introduce un numero: '))
potencia = int(input('Introduce la potencia: '))

if (numero**potencia) % 2 == 0:
    print('El resultado es par')
else:
    print('El resultado es impar')