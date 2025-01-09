'''COCHE 
Crea una clase "Coche" con atributos como marca, modelo y año. 
Implementa un método para encender el coche y otro para apagarlo (puedes 
simulae el encendido y apagado con una variable booleana).'''

class Coche:
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