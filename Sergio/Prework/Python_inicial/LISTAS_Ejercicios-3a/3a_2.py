## Ejercicio 2
## Crea un programa que imprima todos los números primos entre el 2 y el 100. Un numero primo es 
## un numero positivo y entero mayor que uno que no tiene un divisor positivo y entero que no sea 1 
## o sí mismo

# --- Crear un array vacio de numeros primos
numeros_primos = []

# --- Ciclo que recorre los numeros del 2 al 100, verifica si son primos
# y los añade al array
for numero in range(2,101):
    divisores = 0
    for divisor in range(1,numero+1):
        if (numero % divisor == 0) and (divisores < 3):
            divisores += 1
    if divisores < 3:
        numeros_primos.append(numero)

# --- Mostrar el array
print(numeros_primos)