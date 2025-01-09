''' PILA (STACK) BÁSICA 
En programación, un "stack" es una estructura de datos que sigue el 
principio de LIFO (Last In, First Out), lo que significa que el último elemento 
agregado a la pila es el primero en ser retirado. Imagina una pila de platos: 
cuando apilas un nuevo plato, este se coloca en la parte superior de la pila, 
y cuando retiras un plato, siempre tomas el de arriba primero.
 En Python, puedes implementar un stack utilizando una lista. Puedes 
agregar elementos a la pila utilizando el método `append()`, y puedes retirar 
elementos de la pila utilizando el método `pop()` sin ningún índice 
especificado, ya que `pop()` por defecto elimina y devuelve el último 
elemento de la lista. Los stacks son útiles en muchas situaciones, como algoritmos de búsqueda 
y recorrido, manejo de llamadas a funciones (con la pila de llamadas), 
manejos de historial y navegación y más.
 Crea una clase "Pila" que represente una pila (stack) básica. Implementa 
métodos para agregar elementos a la pila, quitar elementos y mostrar el 
contenido actual.
 Por supuesto, estaré encantado de explicarte qué es un "stack" en el 
contexto de la programación y cómo se utiliza en Python.'''

class Pila:
    def __init__(self):
        self.lista = []
    
    def agregar(self, elemento):
        self.lista.append(elemento)

    def quitar(self):
        self.lista.pop()

    def mostrarContenido(self):
        for elemento in self.lista:
            print(elemento)

# Ejemplo de Uso
lista = Pila()  # Crear una instancia de Pila
lista.agregar(5)  # Agregar el número 5 a la pila
lista.agregar(10)  # Agregar el número 10 a la pila
lista.mostrarContenido()  # Mostrar el contenido actual de la pila
lista.quitar()  # Quitar el último elemento de la pila
lista.mostrarContenido()  # Mostrar el contenido actual de la pila después de quitar