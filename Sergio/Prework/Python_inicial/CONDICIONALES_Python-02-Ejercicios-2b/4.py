# Ejercicio 4
precio = float(input('Introducir precio: '))

if precio < 100 :
    print('COMPRAR')
elif 100 <= precio <= 150 :
    print('HOLD')
else:
    print('VENDER')