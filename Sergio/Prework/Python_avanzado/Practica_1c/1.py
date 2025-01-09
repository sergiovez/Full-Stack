'''FACTORIAL 
Implementa una función recursiva llamada factorial que calcule el factorial de 
un número entero positivo. El factorial de un número n se define como el 
producto de todos los números enteros positivos desde 1 hasta n.
 (El factorial de 0 y de 1 es igual a 1)'''

def factorial(num):
    if num==1:
        return num
    else:
        return num * factorial(num-1)

print(factorial(8))