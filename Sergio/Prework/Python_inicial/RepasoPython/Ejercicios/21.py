'''NUMEROS PRIMOS 2: 
Dado una lista de números enteros, escribe un script en Python que devuelva una nueva lista con 
los números primos de la lista original. Además, el script debe devolver el número total de 
números primos encontrados y la suma de los números primos encontrados '''

numeros=[1,4,6,7,9,11,13,32,33,37]
primos=[]

for numero in numeros:
    primo = True
    for i in range(2,numero-1):
        if numero % i == 0:
            primo = False
            break
    if primo:
        primos.append(numero)

print(primos)
