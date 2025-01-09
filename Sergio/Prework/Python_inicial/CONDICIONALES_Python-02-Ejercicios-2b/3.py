# Ejercicio 3
lado_1 = float(input('Lado 1: '))
lado_2 = float(input('Lado 2: '))
lado_3 = float(input('Lado 3: '))

if (lado_1 + lado_2 > lado_3) and (lado_2 + lado_3 > lado_1) and (lado_1 + lado_3 > lado_2):
    print('SI se puede construir')
else:
    print('NO se puede construir')