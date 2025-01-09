'''CLASE PERSONA 
Define una clase Persona con atributos como nombre, edad y profesión. 
Luego, crea varios objetos de esta clase y muestra su información.'''

class Persona:
    def __init__(self, nombre, edad, profesion):
        self.nombre = nombre
        self.edad = edad
        self.profesion = profesion

sergio = Persona('Sergio', 30, 'ingeniero')
ruben = Persona('Ruben', 32, 'contable')
print(sergio.nombre)
print(sergio.edad)
print(sergio.profesion)
print(ruben)