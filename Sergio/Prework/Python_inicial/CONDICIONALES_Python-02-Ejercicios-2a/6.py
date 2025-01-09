# Ejercicio 6
nombre = input('Nombre: ')
edad = input('Edad: ')
nota_media = input('Nota media: ')

if ((17<= float(edad) <=21) and (float(nota_media)>=8)):
    print(nombre, 'SI puede acceder a la beca')
else:
    print(nombre, 'NO puede acceder a la beca')