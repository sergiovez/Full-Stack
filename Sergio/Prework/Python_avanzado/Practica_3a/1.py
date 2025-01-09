'''CLASE PERSONA 
Define una clase Persona con atributos como nombre, edad y profesión. 
Luego, crea varios objetos de esta clase y muestra su información.'''
class Persona:
    def __init__(self, nombre, edad, profesion):
        self.nombre = nombre
        self.edad = edad
        self.profesion = profesion

yo = Persona('Sergio', 31, 'Ingeniero')
print(yo.nombre)
print(yo.edad)
print(yo.profesion)

''' CALCULADORA BÁSICA 
Crea una clase llamada "Calculadora" con métodos para sumar, restar, 
multiplicar y dividir. Crea objetos de esta clase y realiza algunas operaciones 
básicas.'''
class Calculadora:
    def sumar(self,a,b):
        return a+b
    def restar(self,a,b):
        return a-b
    def multiplicar(self,a,b):
        return a*b
    def dividir(self,a,b): 
        return a/b

calculadora = Calculadora()
print(calculadora.sumar(1,2))
print(calculadora.restar(1,2))
print(calculadora.multiplicar(1,2))
print(calculadora.dividir(1,2))

''' LIBRO 
Crea una clase "Libro" con atributos como título, autor y año de publicación. 
Luego, crea varios objetos Libro y muestra su información.'''
class Libro:
    def __init__(self, titulo, autor, publicacion):
        self.titulo = titulo
        self.autor = autor
        self.publicacion = publicacion

libro_1 = Libro('La Colmena', 'Sergio', '2000')
libro_2 = Libro('Luces de Bohemia', 'Ruben', '1991')
libro_3 = Libro('Codigo Da Vinci', 'Jose', '2020')
print(libro_1.titulo, libro_1.autor, libro_1.publicacion)
print(libro_2.titulo, libro_2.autor, libro_2.publicacion)
print(libro_3.titulo, libro_3.autor, libro_3.publicacion)

''' RECTÁNGULO 
Crea una clase "Rectangulo" con atributos de longitud y ancho. Implementa 
un método para calcular el área y el perímetro del rectángulo.'''
class Rectangulo:
    def __init__(self, longitud, ancho):
        self.longitud = longitud
        self.ancho = ancho
    def area(self):
        return self.longitud*self.ancho
    def perimetro(self):
        return 2*self.longitud+2*self.ancho

poligono_1 = Rectangulo(4,4)
poligono_2 = Rectangulo(3,4)
area_1 = poligono_1.area()
area_2 = poligono_2.area()
perimetro_1 = poligono_1.perimetro()
perimetro_2 = poligono_2.perimetro()

print(f'El area del poligono 1 es de {area_1}mm^2 y el perimetro de {perimetro_1}mm')
print(f'El area del poligono 1 es de {area_2}mm^2 y el perimetro de {perimetro_2}mm')

'''DADO 
Crea una clase "Dado" que simule el lanzamiento de un dado de 6 caras. 
Implementa un método para lanzar el dado y mostrar el resultado (quizás te 
convenga usar el modulo random).'''
import random
class Dado:
    def lanzar(self):
        lanzamiento = random.randint(1,6)
        return lanzamiento

dado = Dado()
lanzamiento_1 = dado.lanzar()
print(f'Ha salido un {lanzamiento_1}')

''' COCHE 
Crea una clase "Coche" con atributos como marca, modelo y año. 
Implementa un método para encender el coche y otro para apagarlo (puedes 
simulae el encendido y apagado con una variable booleana).'''
class Coche():
    def __init__(self, marca, modelo, ano):
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        self.encendido = False
    def encender(self):
        self.encendido = True
    def apagar(self):
        self.encendido = False

coche_1 = Coche('Seat', 'Leon', '2008')
coche_2 = Coche('Volskwagen', 'Polo', '2021')
print("El coche esta encendido:", coche_1.encendido)
coche_1.encender()
print("El coche esta encendido:", coche_1.encendido)
coche_1.apagar()
print("El coche esta encendido:", coche_1.encendido)
