'''1. Define una función llamada "saludar" que tome un parámetro "nombre" 
y muestre un saludo personalizado.'''
def saludar(nombre):
    print(f'¡Hola {nombre}!')
saludar('Sergio')

'''2. Crea una función llamada "suma" que tome dos parámetros "a" y "b" e 
imprima la suma de ambos.'''
def suma(sumando_1, sumando_2):
    suma = sumando_1 + sumando_2
    return suma
print(suma(2,4))

'''3. Escribe una función llamada "calcular_area_rectangulo" que tome dos 
parámetros "base" y "altura" y calcule el área de un rectángulo.'''
def calcular_area_rectangulo(base, altura):
    area_rectangulo = base*altura/2
    return area_rectangulo
print(calcular_area_rectangulo(3,4))

'''4. Define una función llamada "imprimir_lista" que tome una lista como 
parámetro y la imprima en la consola.'''
def imprimir_lista(lista):
    print(lista)

imprimir_lista([1,2,3])

'''5. Crea una función llamada "es_par" que tome un número como 
parámetro e imprima True si es par, o False si es impar.'''
def es_par(num):
    if num % 2 == 0:
        print(True)
    else:
        print(False)

es_par(4)

'''6. Escribe una función llamada "concatenar_strings" que tome dos 
parámetros "cadena1" y “cadena2" e imprima la concatenación de 
ambas cadenas.'''
def concatenar_strings(cadena1, cadena2):
    cadena = cadena1+cadena2
    return cadena

print(concatenar_strings('hola','sergio'))

'''7. Define una función llamada "obtener_maximo" que tome una lista de 
números como parámetro y devuelva el número máximo de la lista.'''
def obtener_maximo(lista):
    print(max(lista))

obtener_maximo([1,2,5,4])

'''8. Crea una función llamada "convertir_fahrenheit_a_celsius" que tome un 
parámetro "fahrenheit" y devuelva su equivalente en grados Celsius.'''
def convertir_fahrenheit_a_celsius(temp):
    celsius = (temp-32)*5/9
    return celsius

print(convertir_fahrenheit_a_celsius(32))

'''9. Escribe una función llamada "calcular_edad" que tome dos parámetros: 
"año_actual" y "año_nacimiento" y calcule la edad de una persona.'''
def calcular_edad(año_actual, año_nacimiento):
    edad = año_actual - año_nacimiento
    print(edad)

calcular_edad(2024, 1994)

'''10. Define una función llamada "es_divisible" que tome dos parámetros 
"num" y "divisor" e imprima True si "num" es divisible por "divisor", o 
False si no lo es.'''
def es_divisible(num, divisor):
    if num % divisor == 0:
        print(True)
    else:
        print(False)

es_divisible(5,3)
es_divisible(6,3)

'''11. Crea una función llamada "mostrar_info_persona" que tome tres 
argumentos de palabra clave: "nombre", "edad" y "ciudad". La función 
debe imprimir en la consola la información de una persona en un 
formato legible.'''
def mostrar_info_persona(nombre, edad, ciudad):
    print(f'{nombre} tiene {edad} años y es de {ciudad}')

mostrar_info_persona('Sergio', 30, 'Basauri')

'''12. Escribe una función llamada "calcular_promedio" que tome una lista de 
números como parámetro y calcule el promedio de esos números. Si no 
se proporciona una lista, debe usar una lista vacía por defecto.'''
def calcular_promedio(lista_num=[]):
    import numpy as np
    promedio = np.mean(lista_num)
    print(f'El promedio de la lista {lista_num} es {promedio}')

calcular_promedio()
calcular_promedio([1,2,3,4])
    

'''13. Crea una función llamada "calcular_potencia" que tome dos 
parámetros "base" y "exponente", y calcule la potencia de la base 
elevada al exponente. Utiliza 2 como valor por defecto para el 
exponente.'''
def calcular_potencia(base, exponente=2):
    potencia = base**exponente
    print(potencia)

calcular_potencia(3)
calcular_potencia(3,3)

'''14. Define una función llamada "imprimir_info_alumno" que tome un 
argumento posicional “nombre”(y sin valor por defecto) y varios 
argumentos de palabra clave: "edad", "curso" y “promedio" (puedes 
ponerles como valor por defecto None). La función debe imprimir la 
información del alumno en un formato legible.'''
def imprimir_info_alumno(nombre, edad=None, curso=None, promedio=None):
    print(f'{nombre} tiene {edad} años, está en el curso {curso} y tiene un promedio de {promedio}')

imprimir_info_alumno('Sergio')
imprimir_info_alumno('Sergio', 20, '1º', 10)