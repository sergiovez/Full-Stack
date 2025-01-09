'''EL TRIÁNGULO:
 En una obra es necesario construir para el tejado de una casa una estructura triangular con tres 
piezas. El ingeniero se pregunta si dadas la largura de las piezas que ha recibido podrá construir 
este estructura. Crea un script que dados tres longitudes indique si podría construirse un triangulo 
con esas piezas.
 (Pista: la suma de dos piezas tiene que ser mayor que el lado restante. Esto debe ser así para 
todas las posibles combinaciones)'''

valores = []
verificacion = 0

for i in range(3):
    valores.append(int(input(f'Numero {i+1}: ')))

for i in range(3):
    if valores[i]<(sum(valores)-valores[i]):
        verificacion += 1

if verificacion == 3:
    print('ES POSIBLE')
else:
    print('ES IMPOSIBLE')
    