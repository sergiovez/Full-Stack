# Ejercicio 3a_1_3
# Crea un script que pida al usuario una palabra y luego muestre por pantalla una a una las letras 
# de la palabra introducida empezando por la última. 

# --- Pedir al usuario una palabra
palabra = input('Introduce una palabra: ')

# Bucle para printear una por una las letras en orden ascendente
for letra in palabra:
    print(letra)

# Bucle para printear una por una las letras en orden descendente
for letra in range(len(palabra)-1, -1, -1):
    print(palabra[letra])
