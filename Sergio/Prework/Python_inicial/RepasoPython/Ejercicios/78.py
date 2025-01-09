'''SISTEMA DE RESERVAS DE VUELOS 
Imagina que estás desarrollando un sistema de reservas de vuelos para una 
aerolínea. Crea un sistema de clases que permita a los usuarios realizar 
reservas de vuelos. Aquí tienes una posible estructura:- Clase base: `Vuelo`
  - Atributos: número de vuelo, origen, destino, capacidad máxima, lista de 
pasajeros
  - Métodos: agregar pasajero, verificar disponibilidad de asientos
- Clase derivada: `VueloEspecial` (hereda de `Vuelo`)
  - Atributos adicionales: motivo del vuelo especial (por ejemplo, vacaciones, 
trabajo)
 Resuelve el problema creando instancias de estas clases y realizando 
reservas para diferentes vuelos y tipos de vuelos especiales.'''

class Vuelo:
    def __init__(self, numero, origen, destino, capacidad):
        self.numero = numero
        self.origen = origen
        self.destino = destino
        self.capacidad = capacidad
        self.lista = []

    def agregar_pasajero(self, nombre):
        if len(self.lista) < self.capacidad:
            self.lista.append(nombre)
            print(f'Pasajero {nombre} agregado al vuelo {self.numero}')
        else:
            print('El vuelo ya está lleno')

    def verificar_disponibilidad(self):
       asientos_disponibles = self.capacidad - len(self.lista)
       return asientos_disponibles

class VueloEspecial(Vuelo):
    def __init__(self, numero, origen, destino, capacidad, motivo):
        super().__init__(numero, origen, destino, capacidad)
        self.motivo = motivo

# Ejemplo de uso de las clases
vuelo_regular = Vuelo("UA30", "NY", "MAD", 150)
vuelo_regular.agregar_pasajero("Juan")
print("Asientos disponibles:", vuelo_regular.verificar_disponibilidad())

vuelo_especial = VueloEspecial("UA31", "MIA", "BAR", 100, "Vacaciones")
vuelo_especial.agregar_pasajero("Laura")
print("Asientos disponibles en el vuelo especial:", vuelo_especial.verificar_disponibilidad())
print("Motivo del vuelo especial:", vuelo_especial.motivo)