# Ejercicio 3a_1_1
## Escribe un programa que pida al usuario un número entero y muestre por pantalla una 
## estructura como la de más abajo, donde el valor de entrada es el número de estrellas en el 
## centro de la estructura. 

# --- Pedir numero entero al usuario
numero = int(input('Introduce un numero entero: '))

# --- Crear un bucle ascendente
for i in range(1,numero+1):
    print(i*'*')

# --- Crear un bucle descendente
for i in range((numero-1),0,-1):
    print(i*'*')