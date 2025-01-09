''' RELACION ENTRE NÚMEROS:
 Crea un script que pida al usuario 3 números diferentes y le indique si alguno de ellos es la suma 
de los otros dos. '''

valores = []

for i in range(3):
    valores.append(int(input(f'Numero {i+1}: ')))

for i in range(3):
    if valores[i]==(sum(valores)-valores[i]):
        print(f'El valor {i+1} coincide con la suma de los otros dos valores')
