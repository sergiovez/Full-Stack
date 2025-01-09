''' EL MAYOR DE CUATRO:
 Crea un script que pida al usuario 4 números diferentes y imprima el mayor de los cuatro por 
pantalla.'''

lista = []

for i in range(4):
    numero = int(input(f'Numero {i+1}: '))
    lista.append(numero)

maximo = max(lista)
print(f'El numero mas alto es {maximo}')