# Ejercicio 1
a = float(input('Numero 1: '))
b = float(input('Numero 2: '))
c = float(input('Numero 3: '))
d = float(input('Numero 4: '))

# --- Imprimir el mayor de los cuatro numeros
if (a>b):
    a, b = b, a 

if (b>c):
    b, c = c, b

if (c>d):
    c, d = d, c

print(" El mayor de los 4 es ", d)
