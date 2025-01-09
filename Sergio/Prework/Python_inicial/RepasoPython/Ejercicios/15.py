'''BUCLES: 
1. Escribe un programa que pida al usuario un número entero y muestre por pantalla una 
estructura como la de más abajo, donde el valor de entrada es el número de estrellas en el 
centro de la estructura. 
* 
** 
*** 
**** 
***** 
**** 
*** 
** 
* 
2. Escribir un programa que almacene la cadena de caracteres contraseña en una variable, 
pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta. 
3. Crea un script que pida al usuario una palabra y luego muestre por pantalla una a una las letras 
de la palabra introducida empezando por la última. 
4. Crea un programa en el que se pregunte al usuario por una frase y una letra, y muestre por 
pantalla el número de veces que aparece la letra en la frase. '''

numero = int(input('Numero: '))
for i in range(1,numero+1):
    print(i*'*')
for i in range(numero-1, 0, -1):
    print(i*'*')