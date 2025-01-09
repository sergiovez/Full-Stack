# Ejercicio 3a_1_4
## Crea un programa en el que se pregunte al usuario por una frase y una letra, y muestre por 
## pantalla el número de veces que aparece la letra en la frase.

## --- Inicializar el contador
contador = 0

## --- Introducir una frase
frase = input('Introduce una frase: ')
frase = frase.lower()

## --- Introducir una letra
letra_usuario = input('Introduce una letra: ')

## --- Bucle para recorrer la frase y ver cuantas veces se repite una letra
for letra in frase:
    if letra == letra_usuario:
        contador += 1

## --- El output
print('La letra', letra_usuario, 'en la frase ', frase, 'se repite', contador, 'veces')
print(f"La letra aparece {contador} veces en la frase")
