# Ejercicio 3a_1_2
# Escribir un programa que almacene la cadena de caracteres contraseña en una variable, 
# pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta. 

# --- Definir contraseña real
contraseña = 'Sergio'
intento = ""

# --- Bucle para pedir contraseña y verificar
while intento != contraseña:
    intento = input('Introduce la contraseña: ')
    if intento != contraseña:
        print('La contraseña no es correcta')

print('La contraseña es correcta')
